package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.ComplainVO;
import com.tp.service.ComplainService;

@Controller
public class ComplainController {

	@Autowired
	ComplainService complainService;
	
	@RequestMapping(value="/user/loadComplain", method=RequestMethod.GET)
	public ModelAndView loadComplain()
	{
		return new ModelAndView("user/addComplain","complainVO", new ComplainVO());
	}

	@RequestMapping(value="/user/insertComplain")
	public ModelAndView insertComplain(@ModelAttribute ComplainVO complainVO)
	{
		complainVO.setStatus(true);
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/user/index");
	}
	
	@RequestMapping(value="/admin/viewComplain")
	public ModelAndView viewComplain()
	{
		List complainList=this.complainService.searchComplain();
		return new ModelAndView("admin/viewComplain","complainList",complainList);
	}
}
