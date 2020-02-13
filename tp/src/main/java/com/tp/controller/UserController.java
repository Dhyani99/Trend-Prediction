package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.service.LoginService;
import com.tp.service.RegisterService;

@Controller
public class UserController {

	@Autowired
	RegisterService registerService;
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value="/admin/viewUser", method=RequestMethod.GET)
	public ModelAndView viewUser()
	{
		List users=this.registerService.searchUser();
		return new ModelAndView("admin/viewUser","userList",users);
	}
}
