package com.tp.service;

import java.util.List;

import com.tp.model.DomainVO;

public interface DomainService {

	public void insertDomain(DomainVO domainVO);
	
	public List searchDomain();
	
	public List findByIdDomain(DomainVO domainVO);
}
