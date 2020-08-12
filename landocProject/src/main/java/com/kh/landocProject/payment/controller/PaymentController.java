package com.kh.landocProject.payment.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.payment.model.service.PaymentService;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.OrderMg;
import com.kh.landocProject.payment.model.vo.OrderProduct;
import com.kh.landocProject.payment.model.vo.PayProduct;
import com.kh.landocProject.payment.model.vo.Payment;

@Controller
public class PaymentController {

	@Autowired
	PaymentService payService;
	
	@RequestMapping(value="clientCart.do",method=RequestMethod.GET )
	public String clientCart(){
		
		return "payment/clientCart";
	}
	
	@RequestMapping(value = "payView.do", method = RequestMethod.GET)
	public String payView(Model model,Integer pdNo, String pdName, HttpSession session, String productCount) {
//		System.out.println(pdName);
//		System.out.println(productCount);
//		System.out.println("pdNo : " + pdNo);
		Client loginClient = (Client)session.getAttribute("loginClient");
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
//		System.out.println("loginClient : " + loginClient);
//		System.out.println("loginDrClient : " + loginDrClient);
		if(loginClient != null && loginDrClient == null) {
			String cNo = loginClient.getcNo();
			MemberPay loginClient3 = payService.loginClient3(cNo);
			String[] address = loginClient3.getAddress().split(", \\(");
			PayProduct selectPro = payService.selectPro(pdNo);
			String address1 = address[0];
			String address2 = address[1];
			if(loginClient3 != null) {
				model.addAttribute("loginClient3", loginClient3);
				model.addAttribute("selectPro", selectPro);
				model.addAttribute("productCount", productCount);
				model.addAttribute("address1", address1);
				model.addAttribute("address2", address2);
		
				
			}
		}else if(loginClient == null && loginDrClient != null) {
			String drNo = loginDrClient.getDrNo();
			MemberPay loginDrClient3 = payService.loginDrClient3(drNo);
//			System.out.println("loginDrClient3 : " +loginDrClient3);
			PayProduct selectPro = payService.selectPro(pdNo);
			
			String[] address3 = loginDrClient3.getAddress().split(", \\(");
			
			String address4 = address3[0];
			String address5 = address3[1];
			if(loginDrClient3 != null) {
				model.addAttribute("loginDrClient3", loginDrClient3);
				model.addAttribute("selectPro", selectPro);
				model.addAttribute("productCount", productCount);
				model.addAttribute("address4", address4);
				model.addAttribute("address5", address5);
			}
		}else {
			System.out.println("안됌");
		}
		
		return "payment/pay";
	}
	
	@RequestMapping(value="paySuccessView.do",method=RequestMethod.GET )
	public String paySuccessView(OrderProduct op, OrderMg or, Payment p,String drNo, String cNo, String opCount, Integer usePoint, Integer allPrice, Integer discountPrice, Integer amountPrice, String paymentComment){
		
//		System.out.println(usePoint);
//		System.out.println(p);
//		System.out.println(allPrice);
//		System.out.println(discountPrice);
//		System.out.println(paymentComment);
//		System.out.println(opCount);
//		System.out.println(cNo);
//		p.setAmountPrice(allPrice - discountPrice - usePoint);
			
			
			
			int result = 0;
			int result1 = 0;
			if(usePoint != 0) {
			result = payService.insertPayment(p);
			}else {
			result1 = payService.insertPayment1(p);
			}
			if(result > 0 || result1 > 0) {
				int orderRmg = payService.insertOrderMg(or);
//				System.out.println("orderRmg : " + orderRmg);
				int orderPro = payService.insertOrderPro(op);
//				System.out.println("orderRmg : " + orderRmg);
				if(cNo != null && drNo == null) {
					int updateC = payService.updateC(p);
				}else if(cNo == null && drNo != null) {
					int updateDr = payService.updateDr(p);
				}
//				System.out.println("성공!!");
				return "payment/paySuccess";
				
			}else {
//				System.out.println("실패!!");
				return "payment/paySuccess";
			}

	}
}
