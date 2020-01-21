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

import com.tp.model.DatasetVO;
import com.tp.model.KeywordVO;
import com.tp.service.KeywordService;
import com.tp.service.DomainService;

@Controller
@RequestMapping("/admin")
public class KeywordController {

	@Autowired
	KeywordService keywordService;
	
	@Autowired
	DomainService domainService;
	
	@RequestMapping(value="/loadKeyword", method=RequestMethod.GET)
	public ModelAndView loadKeyword(Model model)
	{
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("keywordVO",new KeywordVO());
		return new ModelAndView("admin/addKeyword");
	}

	@RequestMapping(value="/insertKeyword", method=RequestMethod.POST)
	public ModelAndView insertKeyword(@ModelAttribute KeywordVO keywordVO)
	{
		keywordVO.setStatus(true);
		this.keywordService.insertKeyword(keywordVO);
		return new ModelAndView("redirect:/admin/viewKeyword");
	}
	
	@RequestMapping(value="/viewKeyword")
	public ModelAndView viewKeyword()
	{
		List keywordList=this.keywordService.searchKeyword();
		return new ModelAndView("admin/viewKeyword","keywordList",keywordList);
	}
	
	@RequestMapping(value="/editKeyword", method=RequestMethod.POST)
	public ModelAndView findByIdKeyword(@ModelAttribute KeywordVO keywordVO, @RequestParam int id, Model model)
	{
		keywordVO.setId(id);
		List keywordList=this.keywordService.findByIdKeyword(keywordVO);
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("keywordVO",(KeywordVO) keywordList.get(0));
		return new ModelAndView("admin/addKeyword");
	}
	
	@RequestMapping(value="/deleteKeyword", method=RequestMethod.GET)
	public ModelAndView deleteDataset(@ModelAttribute KeywordVO keywordVO, @RequestParam int id)
	{
		keywordVO.setId(id);
		List editKeywordList=this.keywordService.findByIdKeyword(keywordVO);
		KeywordVO keywordVOFromList=(KeywordVO) editKeywordList.get(0);
		keywordVOFromList.setStatus(false);
		this.keywordService.insertKeyword(keywordVOFromList);
		return new ModelAndView("redirect:/admin/viewKeyword");
	}	

}
