package com.kh.landocProject.admin.member.client.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ClientController {

	@RequestMapping("clientManage.do")
	   public String loginView() {
	      return "admin/member/client/clientManage";
	   }
	
	@RequestMapping("clientDetail.do")
	   public String clientDetail() {
	      return "admin/member/client/clientDetail";
	   }
	
	
	
}
