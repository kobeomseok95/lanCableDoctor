package com.kh.landocProject.admin.productQna.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductQnaController {

	@RequestMapping("productQnaManage.do")
	public String productQnaManage() {
		return"admin/productQna/productQnaManage";
	}
	
	@RequestMapping("productQnaDetail.do")
	public String productQnaDetail() {
		return"admin/productQna/productQnaDetail";
	}
	
}
