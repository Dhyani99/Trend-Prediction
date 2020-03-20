package com.tp.dao;

import java.util.List;

import com.tp.model.KeywordVO;

public interface KeywordDAO {
	
	public void insertKeyword(KeywordVO keywordVO);
	
	public List viewKeyword();
	
	public List findByIdKeyword(KeywordVO keywordVO);

	public List findKeywordByDomain(int domainId);

	public List findTrendingKeywords(int domainId);
}
