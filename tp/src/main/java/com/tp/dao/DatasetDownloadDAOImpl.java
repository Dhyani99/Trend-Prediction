package com.tp.dao;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.jsoup.Jsoup;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.tp.model.DatasetDownloadVO;

@Repository
public class DatasetDownloadDAOImpl implements DatasetDownloadDAO
{
	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertDatasetDownload(DatasetDownloadVO datasetDownloadVO,int totalPatents)
	{
		String domainName=datasetDownloadVO.getDomainVO().getDomainName();
		System.out.println(domainName);
		int count = 50051;
		int x=totalPatents/50;
		int begin=1;
		for (int k = begin; k < (begin+x); k++) {
			String url = "http://patft.uspto.gov/netacgi/nph-Parser?Sect1=PTO2&Sect2=HITOFF&p="
					+k+ "&u=%2Fnetahtml%2FPTO%2Fsearch-bool.html&r=0&f=S&l=50&TERM1="+ domainName +"&FIELD1=&co1=AND&TERM2=&FIELD2=&d=PTXT";
			try
			{
				Document document = Jsoup.connect(url).timeout(100 * 1000).userAgent("Chrome").ignoreHttpErrors(true).get();

				Element table = document.select("table").get(1);
				Elements headings = table.select("th");
				Elements rows = table.select("tr");

				ArrayList<String> patentNumber = new ArrayList<String>();
				for (int i = 1; i < rows.size(); i++) {
					Element row = rows.get(i);
					Element columnData = row.select("a[href]").get(0);
					patentNumber.add(columnData.text());
				}

				

				for (int j = 0; j < (patentNumber.size()); j++) {
					File f = new File("D:\\"+ domainName +"Patents\\Link " + (j + count));

					if (f.mkdir()) {
						try {
							FileOutputStream fout1 = new FileOutputStream(
									"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\abstract.txt");
							/*FileOutputStream fout2 = new FileOutputStream(
									"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\applicantInfo.txt");
							FileOutputStream fout3 = new FileOutputStream(
									"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\citations.txt");*/
							FileOutputStream fout4 = new FileOutputStream(
									"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\patentInfo.txt");
							FileOutputStream fout5 = new FileOutputStream(
									"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\patentNumber.txt");
							fout1.close();
							/*fout2.close();
							fout3.close();*/
							fout4.close();
							fout5.close();
						} catch (Exception e) {
							System.out.println(e);
						}

					}

					System.out.println(j+count);

					try {
						FileWriter fileWriter = new FileWriter(
								"D:\\"+ domainName +"Patents\\Link " + (j + count) + "\\patentNumber.txt");
						BufferedWriter bufferedWriter = new BufferedWriter(fileWriter);
						bufferedWriter.write(patentNumber.get(j));
						String patNo=patentNumber.get(j);
						String url1= "http://patft.uspto.gov/netacgi/nph-Parser?Sect1=PTO1&Sect2=HITOFF&d=PALL&p=1&u=%2Fnetahtml%2FPTO%2Fsrchnum.htm&r=1&f=G&l=50&s1="+patNo+".PN.&OS=PN/"+patNo+"&RS=PN/"+patNo;
						Document doc=Jsoup.connect(url1).timeout(1000*1000).userAgent
							        ("Chrome").ignoreHttpErrors(true).get();
							
						FileWriter fileWriter1=new FileWriter("D:\\"+ domainName +"Patents\\Link "+(j + count)+"\\patentInfo.txt");    
						BufferedWriter bufferedWriter1=new BufferedWriter(fileWriter1);
						Element table1=doc.select("table").get(2);
						Elements rows1=table1.select("tr");
						for (int i = 0; i < rows1.size(); i++)
						{ 
						    Element row = rows1.get(i);
						    Elements cols = row.select("td");
						   
						    for(Element columnData:cols)
					        {
					        	System.out.print(columnData.text()+"      ");
					        	bufferedWriter1.write(columnData.text()+" 				");
					        }
						    System.out.println();
						    bufferedWriter1.newLine();
						}
					    System.out.println(k);
						bufferedWriter1.close();
						fileWriter1.close();						
						String url2= "http://patft.uspto.gov/netacgi/nph-Parser?Sect1=PTO1&Sect2=HITOFF&d=PALL&p=1&u=%2Fnetahtml%2FPTO%2Fsrchnum.htm&r=1&f=G&l=50&s1="+patNo+".PN.&OS=PN/"+patNo+"&RS=PN/"+patNo;
						Document doc1=Jsoup.connect(url2).timeout(1000*1000).userAgent("Chrome").ignoreHttpErrors(true).get();
						Element para = doc.select("p").get(0);
						
						FileWriter fileWriter3 = new FileWriter(
								"D:\\"+domainName+"Patents\\Link " +(j+count)+ "\\abstract.txt");
						BufferedWriter bufferedWriter3 = new BufferedWriter(fileWriter3);

						bufferedWriter3.write(para.text());
						bufferedWriter3.close();
						fileWriter3.close();

						
						bufferedWriter.close();
						fileWriter.close();
					} catch (Exception e) {
						System.out.println(e);
					}
				}	
				count += 50;
			} catch (Exception e) {
				e.printStackTrace();
			}
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(datasetDownloadVO);
	}

}


	public List searchDatasetDownload() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from DatasetDownloadVO where status=true");
		List ls=q.list();
		return ls;
		}
}
