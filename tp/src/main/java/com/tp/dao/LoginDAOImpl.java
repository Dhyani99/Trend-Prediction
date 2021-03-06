package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tp.model.LoginVO;
import com.tp.model.RegisterVO;



@Repository
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SessionFactory sessionFactory;
	public void register(RegisterVO registerVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
	}
	@Override
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
	}
	@Override
	public List searchLoginID(String user) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q = session.createQuery("from LoginVO where username = '"+user+"' ");
		List ls = q.list();
		return ls;
	}
		public List searchUser() {
			// TODO Auto-generated method stub
			Session session = sessionFactory.openSession();
			Query q=session.createQuery("from LoginVO where status=true and role='ROLE_USER'");
			List users=q.list();
			return users;
	}
}
