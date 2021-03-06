package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.model.DatasetVO;

@Repository
public class DatasetDAOImpl implements DatasetDAO {
	@Autowired 
	SessionFactory sessionFactory;
	
	
	public void insertDataset(DatasetVO datasetVO)
	{
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(datasetVO);
	}
	
	public List searchDataset()
	{
		Session session = sessionFactory.openSession();
		Query q=session.createQuery("from DatasetVO where status=true and domainVO.status=true");
		List ls=q.list();
		return ls;
	}
	
	public List findByIdDataset(DatasetVO datasetVO)
	{
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from DatasetVO where id="+datasetVO.getId());
			List ls=q.list();
			return ls;
	}

}
