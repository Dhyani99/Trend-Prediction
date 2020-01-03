package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.KeywordVO;
import com.tp.service.KeywordService;
import com.tp.service.DomainService;

@Controller
public class KeywordController {

	@Autowired
	KeywordService keywordService;
	
	@Autowired
	DomainService domainService;
	
	@RequestMapping(value="loadKeyword", method=RequestMethod.GET)
	public ModelAndView loadKeyword(Model model)
	{
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("keywordVO",new KeywordVO());
		return new ModelAndView("admin/addKeyword");
	}

	@RequestMapping(value="insertKeyword")
	public ModelAndView insertKeyword(@ModelAttribute KeywordVO keywordVO)
	{
		keywordVO.setStatus(true);
		this.keywordService.insertKeyword(keywordVO);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping(value="viewKeyword")
	public ModelAndView viewKeyword()
	{
		List keywordList=this.keywordService.searchKeyword();
		return new ModelAndView("admin/viewKeyword","keywordList",keywordList);
	}
}
