package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.FeedbackVO;
import com.tp.service.FeedbackService;

public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;
	
	@RequestMapping(value="/user/loadFeedback", method=RequestMethod.GET)
	public ModelAndView loadFeedback()
	{
		return new ModelAndView("user/addFeedback","feedbackVO", new FeedbackVO());
	}

	@RequestMapping(value="/user/insertFeedback")
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO)
	{
		feedbackVO.setStatus(true);
		this.feedbackService.insertFeedback(feedbackVO);
		return new ModelAndView("redirect:/user/index");
	}
	
	@RequestMapping(value="/admin/viewFeedback")
	public ModelAndView viewFeedback()
	{
		List feedbackList=this.feedbackService.searchFeedback();
		return new ModelAndView("admin/viewFeedback","feedbackList",feedbackList);
	}
}
