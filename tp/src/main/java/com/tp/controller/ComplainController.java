package com.tp.controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	LoginService loginService;
	
	private static String UPLOAD_FOLDER = "D:\\Projectsem8\\workspace\\complainfiles\\";

	@RequestMapping(value="/user/loadComplain", method=RequestMethod.GET)
	public ModelAndView loadComplain()
	{
		return new ModelAndView("user/addComplain","complainVO", new ComplainVO());
	}

	@RequestMapping(value="/user/insertComplain", method=RequestMethod.POST)
	public ModelAndView insertComplain(@ModelAttribute ComplainVO complainVO,@ModelAttribute LoginVO loginVO, @RequestParam("file") MultipartFile file)
	{
		String fileName = file.getOriginalFilename();
		try {
			byte[] b = file.getBytes();
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());

			BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(path+fileName));
			
			bufferedOutputStream.write(b);
			complainVO.setStatus(true);
			complainVO.setFilePath(path.toString()); 
			complainVO.setFileName(fileName);	
			bufferedOutputStream.flush();
			bufferedOutputStream.close();
		
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		complainVO.setComplainStatus("Pending");
		
		String user=Basemethods.getUser();
		loginVO.setUsername(user);
		List userList=loginService.searchLoginID(user);
		complainVO.setLoginVO((LoginVO)userList.get(0));
		
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setComplainDate(formattedDate);
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/user/viewUserComplain");
	}
	
	@RequestMapping(value="/admin/insertReply", method=RequestMethod.POST)
	public ModelAndView insertReply(@ModelAttribute ComplainVO complainVO)
	{
		//complainVO.setStatus(false);
		complainVO.setComplainStatus("Resolved");
		Date date=new Date();
		String setDateFormat="dd/MM/yyyy";
		DateFormat dateformat=new SimpleDateFormat(setDateFormat);
		String formattedDate=dateformat.format(date);
		complainVO.setReplyDate(formattedDate);
		
		this.complainService.insertComplain(complainVO);
		return new ModelAndView("redirect:/admin/index");
	}

	@RequestMapping(value="/admin/viewAdminComplain")
	public ModelAndView viewAdminComplain()
	{
		List complainList=this.complainService.searchComplain();
		return new ModelAndView("admin/viewAdminComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/user/viewUserComplain")
	public ModelAndView viewUserComplain(@ModelAttribute LoginVO loginVO)
	{
		String user=Basemethods.getUser();
		loginVO.setUsername(user);
		List userList=loginService.searchLoginID(user);
		LoginVO loggedInUser=((LoginVO)userList.get(0));
		List complainList=this.complainService.searchUserComplain(loggedInUser);
		return new ModelAndView("user/viewUserComplain","complainList",complainList);
	}
	
	@RequestMapping(value="/admin/reply", method=RequestMethod.GET)
	public ModelAndView replyComplain(@RequestParam int id,@ModelAttribute ComplainVO complainVO)
	{
		complainVO.setId(id);
		List complainList=this.complainService.findByIdComplain(complainVO);
		return new ModelAndView("admin/addReply","complainVO",(ComplainVO)complainList.get(0));
	}
}
