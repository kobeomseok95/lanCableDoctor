package com.kh.landocProject.admin.order.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

	@RequestMapping("orderManage.do")
	public String orderManage() {
		return"admin/order/orderManage";
	}
	
	@RequestMapping("orderDetail.do")
	public String orderDetail() {
		return"admin/order/orderDetail";
	}
	
}
