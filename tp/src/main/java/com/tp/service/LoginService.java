package com.tp.service;

import java.util.List;

import com.tp.model.LoginVO;
import com.tp.model.RegisterVO;

public interface LoginService{
	
	public void insertRegister(RegisterVO registerVO);

	public void insertLogin(LoginVO loginVO) ;
	
	public List searchLoginID(String loginService);
}
