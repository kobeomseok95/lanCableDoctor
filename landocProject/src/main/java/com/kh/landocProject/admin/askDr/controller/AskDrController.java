package com.kh.landocProject.admin.askDr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AskDrController {

	@RequestMapping("askDrManage.do")
	public String askDrManage() {
		return"admin/askDr/askDrManage";
	}
	
	@RequestMapping("askDrDetail.do")
	public String askDrDetail() {
		return"admin/askDr/askDrDetail";
	}
	
	
}
