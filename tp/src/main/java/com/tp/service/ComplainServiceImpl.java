package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.tp.utils.Basemethods;

import com.tp.dao.ComplainDAO;
import com.tp.dao.LoginDAO;
import com.tp.model.ComplainVO;
import com.tp.model.LoginVO;;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService{
	
	@Autowired
	ComplainDAO complainDAO;
	@Autowired
	LoginDAO loginDAO;
	
	public void insertComplain(ComplainVO complainVO)
	{
	
		this.complainDAO.insertComplain(complainVO);
	}

	public List searchComplain()
	{
		return this.complainDAO.searchComplain();
	}
		
	public List findByIdComplain(ComplainVO complainVO)
	{
		return this.complainDAO.findByIdComplain(complainVO);
	}

	@Override
	public List searchUserComplain(LoginVO loginId) {
		return this.complainDAO.searchUserComplain(loginId);
	}

		

}
