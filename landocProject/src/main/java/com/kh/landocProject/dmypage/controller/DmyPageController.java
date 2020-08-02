package com.kh.landocProject.dmypage.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.dmypage.model.service.DmyPageService;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class DmyPageController {

	@Autowired
	DmyPageService dMypageService;
	
	
	@RequestMapping(value="doctorMypage.do")
	public String dMyPage() {
		
		return "mypage/dMyPageWork";
	}
	

	
	
	
	
}
