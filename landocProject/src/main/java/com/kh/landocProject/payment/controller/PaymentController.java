package com.kh.landocProject.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.landocProject.payment.model.service.PaymentService;

@Controller
public class PaymentController {

	@Autowired
	PaymentService payService;
	
	@RequestMapping(value="clientCart.do",method=RequestMethod.GET )
	public String clientCart(){
		
		return "payment/clientCart";
	}
}
