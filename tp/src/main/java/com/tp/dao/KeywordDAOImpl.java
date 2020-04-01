package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.model.KeywordCountVO;
import com.tp.model.KeywordVO;

@Repository
public class KeywordDAOImpl implements KeywordDAO {

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertKeyword(KeywordVO keywordVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(keywordVO);
	}
	
	public List viewKeyword()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from KeywordVO where status=true and domainVO.status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdKeyword(KeywordVO keywordVO)
	{
			Session session = sessionFactory.openSession();
			
			Query q=session.createQuery("from KeywordVO where id="+keywordVO.getId());
			
			List ls=q.list();
	
			return ls;
	}

	@Override
	public List findKeywordByDomain(int domainId) {
		
		Session session = sessionFactory.openSession();
		
		Query q=session.createQuery("from KeywordYearwiseVO where domainVO.id="+domainId+" order by frequency DESC");
		//SELECT keyword, YEAR, COUNT(COUNT) FROM keyword_yearwise WHERE YEAR=2020 GROUP BY keyword, YEAR ORDER BY COUNT(COUNT) DESC LIMIT 30;
		//SELECT keyword, YEAR, COUNT(COUNT) FROM keywordyearwise GROUP BY keyword, YEAR;
		List ls=q.list();

		return ls;
	}
	
	public List findTrendingKeywords(int domainId)
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from KeywordYearwiseVO where domainVO.id="+domainId+" and year=2020 GROUP BY keyword, year ORDER BY count(frequency) DESC");
		List ls=q.list();
		return ls;
	}
	
	public void insertKeywordCount(KeywordCountVO keywordCountVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(keywordCountVO);
	}
	
	public List findCountYearwise(String keywordName, int domainId)
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("FROM KeywordCountVO WHERE keyword='"+keywordName+"' and domainVO.id='"+domainId+"'");
		List ls=q.list();
		return ls;
	}

}
