package com.tp.dao;

import java.util.List;

import com.tp.model.RegisterVO;

public interface RegisterDAO {

	void insertRegister(RegisterVO registerVO);

	public List searchUser();
}
