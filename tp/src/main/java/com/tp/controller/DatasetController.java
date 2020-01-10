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

import com.tp.model.DatasetVO;
import com.tp.service.DatasetService;
import com.tp.service.DomainService;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;


import ch.qos.logback.core.net.SyslogOutputStream;


@Controller
@RequestMapping("/admin")
public class DatasetController {
	
	@Autowired
	DatasetService datasetService;
	
	@Autowired
	DomainService domainService;
	
	private static String UPLOAD_FOLDER = "E:\\Projectsem8\\workspace\\files storage\\";
	@RequestMapping(value="/loadDataset", method=RequestMethod.GET)
	public ModelAndView loadDataset(Model model)
	{
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("datasetVO",new DatasetVO());
		return new ModelAndView("admin/addDataset");
	}

	@RequestMapping(value="/insertDataset")
	public ModelAndView insertDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam("file") MultipartFile file)
	{
		try {
			// read and write the file to the selected location-
			byte[] bytes = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}
		datasetVO.setStatus(true);
		this.datasetService.insertDataset(datasetVO);
		return new ModelAndView("redirect:/admin/viewDataset");
	}
	@RequestMapping(value="/viewDataset")
	public ModelAndView viewDataset()
	{
		List datasetList=this.datasetService.searchDataset();
		return new ModelAndView("admin/viewDataset","datasetList",datasetList);
	}
	
	@RequestMapping(value="/editDataset", method=RequestMethod.GET)
	public ModelAndView findByIdDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam int id, Model model)
	{
		datasetVO.setId(id);
		List datasetList=this.datasetService.findByIdDataset(datasetVO);
		List domainList=this.domainService.searchDomain();
		model.addAttribute("domainList",domainList);
		model.addAttribute("datasetVO",(DatasetVO) datasetList.get(0));
		return new ModelAndView("admin/addDataset");
	}
	
	@RequestMapping(value="/deleteDataset", method=RequestMethod.GET)
	public ModelAndView deleteDataset(@ModelAttribute DatasetVO datasetVO, @RequestParam int id)
	{
		datasetVO.setId(id);
		List editDatasetList=this.datasetService.findByIdDataset(datasetVO);
		DatasetVO datasetVOFromList=(DatasetVO) editDatasetList.get(0);
		datasetVOFromList.setStatus(false);
		this.datasetService.insertDataset(datasetVOFromList);
		return new ModelAndView("redirect:/admin/viewDataset");
	}	
	
}
