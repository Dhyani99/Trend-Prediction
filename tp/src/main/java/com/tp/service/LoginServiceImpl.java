package com.tp.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tp.dao.LoginDAO;
import com.tp.model.LoginVO;
import com.tp.model.RegisterVO;


@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDAO loginDAO;

	@Transactional
	public void insertRegister(RegisterVO registerVO) {
		loginDAO.register(registerVO);
	}

	@Transactional
	public void insertLogin(LoginVO loginVO) {
		// TODO Auto-generated method stub
		loginDAO.insertLogin(loginVO);
	}

	@Transactional
	public List searchLoginID(String loginService) {
		// TODO Auto-generated method stub
		List ls = loginDAO.searchLoginID(loginService);
		return ls;
	}

	@Override
	public List searchUser() {
		return loginDAO.searchUser();
	}
}