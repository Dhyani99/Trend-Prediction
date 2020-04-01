package com.tp.dao;

import java.util.List;

import com.tp.model.DatasetDownloadVO;

public interface DatasetDownloadDAO {
	
	public void insertDatasetDownload(DatasetDownloadVO datasetDownloadVO,int totalPatents);

	public List searchDatasetDownload();

	//public void getPatentNumber(String domainName);

}
