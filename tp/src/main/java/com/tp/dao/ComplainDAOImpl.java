package com.tp.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.tp.model.ComplainVO;

@Repository
public class ComplainDAOImpl implements ComplainDAO {

	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertComplain(ComplainVO complainVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
	}
	
	public List searchComplain()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from ComplainVO where status=true and loginVO.status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdComplain(ComplainVO complainVO)
	{
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from ComplainVO where id="+complainVO.getId());
			List ls=q.list();
			return ls;
	}

}
