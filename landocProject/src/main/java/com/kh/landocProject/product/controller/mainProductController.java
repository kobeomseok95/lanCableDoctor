package com.kh.landocProject.product.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class mainProductController {
	@RequestMapping(value="productIndex.do", method=RequestMethod.GET)
	public String productIndex() {
		return "product/productIndex";
	}
	
	@RequestMapping(value="productSearch.do", method=RequestMethod.GET)
	public String productSearch() {
		return "product/productSearch";
	}
	
	@RequestMapping(value="productDetail.do", method=RequestMethod.GET)
	public String productDetail() {
		return "product/productDetail";
	}
}
