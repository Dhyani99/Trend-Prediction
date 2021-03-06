package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.model.DomainVO;

@Repository
public class DomainDAOImpl implements DomainDAO {

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertDomain(DomainVO domainVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(domainVO);
	}
	public List searchDomain()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from DomainVO where status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdDomain(DomainVO domainVO)
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from DomainVO where id="+domainVO.getId());
		List ls=q.list();
		return ls;
	}

}
