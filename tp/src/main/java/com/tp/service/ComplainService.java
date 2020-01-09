package com.tp.service;

import java.util.List;

import com.tp.model.ComplainVO;

public interface ComplainService {

	public void insertComplain(ComplainVO complainVO);
	
	public List findByIdComplain(ComplainVO complainVO);
	
	public List searchComplain();
}
