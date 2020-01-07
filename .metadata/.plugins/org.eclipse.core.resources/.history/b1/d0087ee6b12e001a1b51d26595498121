package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	
	public List searchKeyword()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from KeywordVO where status=true");
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

}
