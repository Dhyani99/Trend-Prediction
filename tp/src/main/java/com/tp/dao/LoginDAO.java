package com.tp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;

import com.tp.model.LoginVO;
import com.tp.model.RegisterVO;



public interface LoginDAO{

	public void register(RegisterVO registerVO);

	public void insertLogin(LoginVO loginVO);

	public List searchLoginID(String loginService);
	
	public List searchUser();
}
