package com.kh.landocProject.admin.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ProductController {

	@RequestMapping("productManage.do")
	public String productManage() {
		return"admin/product/productManage";
	}
	
	@RequestMapping("productInsert.do")
	public String productInsert() {
		return"admin/product/productInsert";
	}
	
	@RequestMapping("productDetail.do")
	public String productDetail() {
		return"admin/product/productDetail";
	}
	
}
