package com.kh.landocProject.admin.orderQna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderQnaController {

	@RequestMapping("orderQnaManage.do")
	public String orderQnaManage() {
		return"admin/orderQna/orderQnaManage";
	}
	
	@RequestMapping("orderQnaDetail.do")
	public String orderQnaDetail() {
		return"admin/orderQna/orderQnaDetail";
	}
	
}
