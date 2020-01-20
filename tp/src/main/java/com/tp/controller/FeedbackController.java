package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.FeedbackVO;
import com.tp.model.LoginVO;
import com.tp.service.FeedbackService;
import com.tp.service.LoginService;
import com.tp.utils.Basemethods;

@Controller
public class FeedbackController {

	@Autowired
	FeedbackService feedbackService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value="/user/loadFeedback", method=RequestMethod.GET)
	public ModelAndView loadFeedback()
	{
		return new ModelAndView("user/addFeedback","feedbackVO", new FeedbackVO());
	}

	@RequestMapping(value="/user/insertFeedback")
	public ModelAndView insertFeedback(@ModelAttribute FeedbackVO feedbackVO,@ModelAttribute LoginVO loginVO)
	{
		feedbackVO.setStatus(true);
		String user=Basemethods.getUser();
		loginVO.setUsername(user);
		List userList=loginService.searchLoginID(user);
		feedbackVO.setLoginVO((LoginVO)userList.get(0));
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
