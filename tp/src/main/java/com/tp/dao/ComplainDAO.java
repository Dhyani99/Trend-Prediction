package com.tp.dao;

import java.util.List;

import com.tp.model.ComplainVO;

public interface ComplainDAO {

	public void insertComplain(ComplainVO complainVO);
	
	public List findByIdComplain(ComplainVO complainVO);
	
	public List searchComplain();
}
