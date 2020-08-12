package com.kh.landocProject.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.payment.model.service.PaymentService;
import com.kh.landocProject.payment.model.vo.Cart;

@Controller
public class PaymentController {

	@Autowired
	PaymentService payService;
	
	@RequestMapping(value="clientCart.do",method=RequestMethod.GET )
	public String clientCart(HttpSession session){
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<Cart> cart = payService.selectCartList(cNo);
		
		return "payment/clientCart";
	}
}
