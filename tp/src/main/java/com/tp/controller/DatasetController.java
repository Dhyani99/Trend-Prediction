package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.DatasetVO;
import com.tp.model.DomainVO;
import com.tp.service.DatasetService;
import com.tp.service.DomainService;


@Controller
public class DatasetController {
	
	@Autowired
	DatasetService datasetService;
	
	@Autowired
	DomainService domainService;
	
	@RequestMapping(value="loadDataset", method=RequestMethod.GET)
	public ModelAndView loadDataset(Model model)
	{
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("datasetVO",new DatasetVO());
		return new ModelAndView("admin/addDataset");
	}

	@RequestMapping(value="insertDataset")
	public ModelAndView insertDataset(@ModelAttribute DatasetVO datasetVO)
	{
		datasetVO.setStatus(true);
		this.datasetService.insertDataset(datasetVO);
		return new ModelAndView("redirect:/");
	}
	@RequestMapping(value="viewDataset")
	public ModelAndView viewDataset()
	{
		List datasetList=this.datasetService.searchDataset();
		return new ModelAndView("admin/viewDataset","datasetList",datasetList);
	}
	
}
