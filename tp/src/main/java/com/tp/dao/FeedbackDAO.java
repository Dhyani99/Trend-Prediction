package com.tp.dao;

import java.util.List;

import com.tp.model.FeedbackVO;

public interface FeedbackDAO {
	
	public void insertFeedback(FeedbackVO feedbackVO);
	
	public List findByIdFeedback(FeedbackVO feedbackVO);
	
	public List searchFeedback();

}
