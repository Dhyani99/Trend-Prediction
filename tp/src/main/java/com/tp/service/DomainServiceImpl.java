package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.DomainDAO;
import com.tp.model.DomainVO;

@Service
@Transactional

public class DomainServiceImpl implements DomainService {
	
	@Autowired
	DomainDAO domainDAO;
	
	public void insertDomain(DomainVO domainVO)
	{
		this.domainDAO.insertDomain(domainVO);
	}

	public List searchDomain()
	{
		return this.domainDAO.searchDomain();
	}
		
	public List findByIdDomain(DomainVO domainVO)
	{
		return this.domainDAO.findByIdDomain(domainVO);
	}

		
	

}