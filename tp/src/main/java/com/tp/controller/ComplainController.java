package com.tp.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.ComplainVO;
import com.tp.model.LoginVO;
import com.tp.service.ComplainService;
import com.tp.service.LoginService;
import com.tp.utils.Basemethods;

@Controller
public class ComplainController {

	@Autowired
	ComplainService complainService;
	@Autowired
	LoginService loginservice;
	
	
	@RequestMapping(value="/user/loadComplain", method=RequestMethod.GET)
	public ModelAndView loadComplain()
	{
		return new ModelAndView("user/addComplain","complainVO", new ComplainVO());
	}

	@RequestMapping(value="/user/insertComplain")
	public ModelAndView insertComplain(@ModelAttribute ComplainVO complainVO,@ModelAttribute LoginVO loginVO)
	{
		complainVO.setStatus(true);
		complainVO.setComplainStatus("Pending");
		
		Basemethods bm=new Basemethods();
		String user=bm.getUser();
		loginVO.setUsername(user);
		loginservice.searchLoginID(user);
		
		Date date=new Date();
		String setDateFormat="dd/mm/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setComplainDate(formattedDate);
		
		
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
