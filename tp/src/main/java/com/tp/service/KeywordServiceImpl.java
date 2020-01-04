package com.tp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tp.dao.KeywordDAO;
import com.tp.model.KeywordVO;

@Service
@Transactional
public class KeywordServiceImpl implements KeywordService{

	@Autowired
	KeywordDAO KeywordDAO;
	
	public void insertKeyword(KeywordVO keywordVO)
	{
		this.KeywordDAO.insertKeyword(keywordVO);
	}
	
	public List searchKeyword()
	{
		return this.KeywordDAO.searchKeyword();
	}
		
	public List findByIdKeyword(KeywordVO keywordVO)
	{
		return this.KeywordDAO.findByIdKeyword(keywordVO);
	}

}
