package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import com.tp.model.DomainVO;
import com.tp.service.DomainService;

@Controller
public class DomainController {
	
	@Autowired
	DomainService domainService;
	
	@RequestMapping(value="loadDomain", method=RequestMethod.GET)
	public ModelAndView loadDomain()
	{
		return new ModelAndView("admin/addDomain","domainVO", new DomainVO());
	}

	@RequestMapping(value="insertDomain")
	public ModelAndView insertDomain(@ModelAttribute DomainVO domainVO)
	{
		domainVO.setStatus(true);
		this.domainService.insertDomain(domainVO);
		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value="viewDomain")
	public ModelAndView viewDomain()
	{
		List domainList=this.domainService.searchDomain();
		return new ModelAndView("admin/viewDomain","domainList",domainList);
	}
	
	@RequestMapping(value="editDomain", method=RequestMethod.GET)
	public ModelAndView findByIdDomain(@ModelAttribute DomainVO domainVO, @RequestParam int id, Model model)
	{
		domainVO.setId(id);
		List ls=this.domainService.findByIdDomain(domainVO);
		model.addAttribute("domainVO",(DomainVO) ls.get(0));
		return new ModelAndView("admin/addDomain");
	}
	
	@RequestMapping(value="deleteDomain", method=RequestMethod.GET)
	public ModelAndView deleteDomain(@ModelAttribute DomainVO domainVO, @RequestParam int id)
	{
		domainVO.setId(id);
		List editDomainList=this.domainService.findByIdDomain(domainVO);
		DomainVO domainVOFromList=(DomainVO) editDomainList.get(0);
		domainVOFromList.setStatus(false);
		this.domainService.insertDomain(domainVOFromList);
		return new ModelAndView("redirect:/viewDomain");
	}	
	
}
