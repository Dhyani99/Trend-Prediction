package com.tp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.tp.model.DatasetDownloadVO;
import com.tp.model.DatasetVO;
import com.tp.model.DomainVO;
import com.tp.service.DatasetDownloadService;
import com.tp.service.DatasetService;
import com.tp.service.DomainService;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
@RequestMapping("/admin")
public class DatasetDownloadController {
	
	@Autowired
	DatasetDownloadService datasetDownloadService;
	
	@Autowired
	DomainService domainService;
	
	private static String UPLOAD_FOLDER = "D:\\Projectsem8\\workspace\\datasetfiles\\";
	@RequestMapping(value="/loadDatasetDownload", method=RequestMethod.GET)
	public ModelAndView loadDataset(Model model)
	{
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("datasetDownloadVO",new DatasetDownloadVO());
		return new ModelAndView("admin/downloadDataset");
	}
	
	
	

	@RequestMapping(value="/insertDatasetDownload",method=RequestMethod.POST)
	public ModelAndView insertDatasetDownload(@ModelAttribute DatasetDownloadVO datasetDownloadVO,@RequestParam int totalPatents)
	{
		datasetDownloadVO.setStatus(true);
		DomainVO domainVO=datasetDownloadVO.getDomainVO();
		List domainList=this.domainService.findByIdDomain(domainVO);
		datasetDownloadVO.setDomainVO((DomainVO)domainList.get(0));
		System.out.println(datasetDownloadVO.getDomainVO().getDomainName());
		//this.datasetDownloadService.getPatentNumber(domainName);
		this.datasetDownloadService.insertDatasetDownload(datasetDownloadVO,totalPatents);
		return new ModelAndView("redirect:/admin/viewDataset");
	}
	
	@RequestMapping(value="/viewDatasetDownload")
	public ModelAndView viewDatasetDownload()
	{
		List datasetList=this.datasetDownloadService.searchDatasetDownload();
		return new ModelAndView("admin/viewDatasetDownload","datasetList",datasetList);
	}
	
}
