package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.RegisterDAO;
import com.tp.model.RegisterVO;

@Service
@Transactional
public class RegisterService {
	
	@Autowired RegisterDAO registerDAO;
	
	
	public void insertRegister(RegisterVO registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}
	
	public List searchUser()
	{
		return this.registerDAO.searchUser();
	}
	


}
