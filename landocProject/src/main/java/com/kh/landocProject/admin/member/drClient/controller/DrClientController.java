package com.kh.landocProject.admin.member.drClient.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DrClientController {

	@RequestMapping("drClientManage.do")
	   public String drClientManage() {
	      return "admin/member/drClient/drClientManage";
	   }
	
	@RequestMapping("drClientDetail.do")
	   public String drClientDetail() {
	      return "admin/member/drClient/drClientDetail";
	   }
}
