package com.tp.service;

import java.util.List;

import com.tp.model.KeywordVO;

public interface KeywordService {

	public void insertKeyword(KeywordVO keywordVO);
	
	public List searchKeyword();
	
	public List findByIdKeyword(KeywordVO keywordVO);
}
