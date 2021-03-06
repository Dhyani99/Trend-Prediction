package com.tp.dao;

import java.util.List;

import com.tp.model.DomainVO;
import com.tp.model.DomainVO;

public interface DomainDAO {

	public void insertDomain(DomainVO domainVO);
	
	public List findByIdDomain(DomainVO domainVO);
	
	public List searchDomain();
}
