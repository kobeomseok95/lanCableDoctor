package com.kh.landocProject.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kh.landocProject.payment.model.service.PaymentService;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.PayProduct;

@Controller
public class PaymentController {

	@Autowired
	PaymentService payService;
	
	@RequestMapping(value="clientCart.do",method=RequestMethod.GET )
	public String clientCart(){
		
		return "payment/clientCart";
	}
	
	@RequestMapping(value = "payView.do", method = RequestMethod.GET)
	public String payView(Model model, String cNo, Integer pdNo) {
		System.out.println(pdNo);
		
		MemberPay payClientSelect = payService.payClientSelect(cNo);
		PayProduct selectPro = payService.selectPro(pdNo);
		
		System.out.println("selectPro" + selectPro);
		String[] address = payClientSelect.getAddress().split(", \\(");
		
		String address1 = address[0];
		String address2 = address[1];
		
		System.out.println(payClientSelect.getPoint());
		
		if(payClientSelect != null) {
			model.addAttribute("payClientSelect", payClientSelect);
			model.addAttribute("selectPro", selectPro);
			model.addAttribute("address1", address1);
			model.addAttribute("address2", address2);
	
			
		}else {
			System.out.println("안됌");
		}
		
		return "payment/pay";
	}
}
