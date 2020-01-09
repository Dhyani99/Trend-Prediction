package com.tp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.RegisterDAO;
import com.tp.model.RegisterVO;

@Service
public class RegisterService {
	
	@Autowired RegisterDAO registerDAO;
	
	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		this.registerDAO.insertRegister(registerVO);
	}

}
