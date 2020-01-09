package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.ComplainDAO;
import com.tp.model.ComplainVO;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService{
	
	@Autowired
	ComplainDAO complainDAO;
	
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

		

}
