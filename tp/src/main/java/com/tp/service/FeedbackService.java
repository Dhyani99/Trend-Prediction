package com.tp.service;

import java.util.List;

import com.tp.model.FeedbackVO;

public interface FeedbackService {

	public void insertFeedback(FeedbackVO feedbackVO);
	
	public List findByIdFeedback(FeedbackVO feedbackVO);
	
	public List searchFeedback();
}
