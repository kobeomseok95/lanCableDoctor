package com.kh.landocProject.payment.controller;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.payment.model.exception.PaymentException;
import com.kh.landocProject.payment.model.service.PaymentService;
import com.kh.landocProject.payment.model.vo.Cart;
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
	public ModelAndView clientCart(ModelAndView mv,HttpSession session) throws PaymentException{
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<Cart> cart = payService.selectCartList(cNo);
		
		if(cart!=null) {
			mv.addObject("cart",cart);
			mv.setViewName("payment/clientCart");
		}else {
			throw new PaymentException("장바구니 조회 실패");
		}
		return mv;
	}
	
	@RequestMapping("cartInsert")
	public ModelAndView cartInsert(HttpServletResponse response,HttpSession session,ModelAndView mv,@RequestParam(value="count")int count,
			@RequestParam(value="pdNo") Integer pdNo) throws PaymentException, IOException{
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
	
		HashMap<String,Object> cart = new HashMap<String, Object>();
		ArrayList<Cart> list = payService.selectCartList(cNo);
		int result=0;
		int update =0;
		String msg="";
		boolean flag= false;
		for(int i=0; i<list.size(); i++){
			
			if(list.get(i).getPdNo()==pdNo){
				cart.put("cartCount", list.get(i).getCartCount());
				cart.put("count", count);
				cart.put("pdNo", pdNo);
				cart.put("cNo", cNo);
				if(list.get(i).getCartCount()+count>5){
					 msg="해당 상품 장바구니 수량을 초과하였습니다.(최대 5개)";
					 mv.addObject("msg",msg);
					 mv.setViewName("redirect:productDetail.do?pdNo="+pdNo);
			         flag=true;
			         break;
				}
		
				update = payService.cartUpdate(cart);
				
				if(update>0){
					msg= "장바구니에 담겼습니다.";
					mv.addObject("msg",msg);
					mv.setViewName("redirect:productDetail.do?pdNo="+pdNo);
			         flag= true;
			         break;
				}else{
					throw new PaymentException("장바구니 담기실패");
					
				}	
			} 		 
		}
		
		if(flag!= true){
			cart.put("count", count);
			cart.put("pdNo", pdNo);
			cart.put("cNo", cNo);
			result = payService.cartInsert(cart);
			if(result!=0) {
			msg= "장바구니에 담겼습니다.";
			mv.addObject("msg",msg);
			mv.setViewName("redirect:productDetail.do?pdNo="+pdNo);
			
			}else {
				throw new PaymentException("장바구니 담기실패");
			}
		}
		
	 return mv;
		
	}
	
	
	@RequestMapping("selectOrder.do")
	public ModelAndView selectOrder(ModelAndView mv,
			HttpSession session,
			@RequestParam(value="listOriginPrice") List<Integer> listOriginPrice,
			@RequestParam(value="listDiscount") List<Integer> listDiscount,
			@RequestParam(value="listSellPrice") List<Integer> listSellPrice,
			@RequestParam(value="listCartNo") List<Integer> listCartNo,
			@RequestParam(value="listPdName") List<String> listPdName,
			@RequestParam(value="listPdNo") List<Integer> listPdNo,
			@RequestParam(value="listCount") List<Integer> listCount,
			@RequestParam(value="listRenameFile") List<String> listRenameFile,
			ArrayList<Cart> cart
			) throws PaymentException{
		
		int allOriginPrice=0;
		int allPrice =0;	// 총 결제금액
		int allDiscount=0;	// 총 할인금액
		for(int i =0; i<listOriginPrice.size();i++) {
			
			cart.add(new Cart(listCartNo.get(i),listRenameFile.get(i), listPdNo.get(i),listPdName.get(i),listCount.get(i),null, null, listOriginPrice.get(i), listDiscount.get(i),listSellPrice.get(i) ));
			allOriginPrice += listOriginPrice.get(i) * listCount.get(i);
			allPrice +=listSellPrice.get(i)*listCount.get(i);
			allDiscount +=listOriginPrice.get(i)*listDiscount.get(i)/100*listCount.get(i);
		
			
		}
		
		
//		System.out.println("alOriginPrice:"+allOriginPrice);
//		System.out.println("allPrice:"+allPrice);
//		System.out.println("allDiscount:"+allDiscount);
//		System.out.println("array:"+cart);
		
		mv.addObject("allPrice", allPrice);
		mv.addObject("allDiscount", allDiscount);
		mv.addObject("cart", cart);
		mv.addObject("allOriginPrice", allOriginPrice);
		mv.setViewName("payment/cartPay");
	
		return mv;
	}
	
	@RequestMapping("allOrder.do")
	public ModelAndView allOrder(ModelAndView mv,
			HttpSession session,
			@RequestParam(value="originPrice") List<Integer> listOriginPrice,
			@RequestParam(value="discount") List<Integer> listDiscount,
			@RequestParam(value="sellPrice") List<Integer> listSellPrice,
			@RequestParam(value="cartNo") List<Integer> listCartNo,
			@RequestParam(value="pdName") List<String> listPdName,
			@RequestParam(value="pdNo") List<Integer> listPdNo,
			@RequestParam(value="count") List<Integer> listCount,
			@RequestParam(value="renameFile") List<String> listRenameFile,
			ArrayList<Cart> cart
			) throws PaymentException{
		
		int allOriginPrice=0;
		int allPrice =0;	// 총 결제금액
		int allDiscount=0;	// 총 할인금액
		for(int i =0; i<listOriginPrice.size();i++) {
			cart.add(new Cart(listCartNo.get(i),listRenameFile.get(i), listPdNo.get(i),listPdName.get(i),listCount.get(i),null, null, listOriginPrice.get(i), listDiscount.get(i),listSellPrice.get(i) ));
			allOriginPrice += listOriginPrice.get(i) * listCount.get(i);
			allPrice +=listSellPrice.get(i)*listCount.get(i);
			allDiscount +=listOriginPrice.get(i)*listDiscount.get(i)/100*listCount.get(i);
		
		}
		
//		System.out.println("alOriginPrice:"+allOriginPrice);
//		System.out.println("allPrice:"+allPrice);
//		System.out.println("allDiscount:"+allDiscount);
//		System.out.println("array:"+cart);
		
		mv.addObject("allPrice", allPrice);
		mv.addObject("allDiscount", allDiscount);
		mv.addObject("cart", cart);
		mv.addObject("allOriginPrice", allOriginPrice);
		mv.setViewName("payment/cartPay");
		
		return mv;
	}
	
	
	
	
	@RequestMapping(value = "payView.do", method = RequestMethod.GET)
	public String payView(Model model,Integer pdNo, String pdName, HttpSession session, String productCount, HttpServletResponse response_equals) throws IOException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");

		if(loginClient != null && loginDrClient == null) {
			String cNo = loginClient.getcNo();
			MemberPay loginClient3 = payService.loginClient3(cNo);
			String[] address = loginClient3.getAddress().split(" / ");
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
			
			String[] address3 = loginDrClient3.getAddress().split(" / ");
			
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
			String msg = "로그인 후 구입이 가능합니다.";
			model.addAttribute("msg", msg);
			model.addAttribute("pdNo", pdNo);
			return "redirect:productDetail.do";
		}
		
		return "payment/pay";
	}
	
	@RequestMapping(value="paySuccessView.do",method=RequestMethod.GET )
	public String paySuccessView(Model model, OrderProduct op, OrderMg or, Payment p,String drNo, String cNo, String opCount, Integer usePoint, Integer allPrice, Integer discountPrice, Integer amountPrice, String paymentComment){
	
		p.setAmountPrice(allPrice - discountPrice - usePoint);

			int result = 0;
			int result1 = 0;
			if(usePoint != 0) {
			result = payService.insertPayment(p);
			}else {
			result1 = payService.insertPayment1(p);
			}
			if(result > 0 || result1 > 0) {
				int orderRmg = payService.insertOrderMg(or);

				int orderPro = payService.insertOrderPro(op);

				if(cNo != null && drNo == null) {
					int updateC = payService.updateC(p);
				}else if(cNo == null && drNo != null) {
					int updateDr = payService.updateDr(p);
				}

				model.addAttribute("cNo", cNo);
				model.addAttribute("drNo", drNo);
				return "payment/paySuccess";
				
			}else {

				return "payment/paySuccess";
			}

	}
	
	@RequestMapping(value="cartPaySuccessView.do",method=RequestMethod.GET )
	public String cartPaySuccessView(Payment p, OrderMg or, String drNo, String cNo, @RequestParam("opCount")List<Integer> opCount,
													Integer usePoint, Integer allPrice, Integer discountPrice, Integer amountPrice,
													String paymentComment, @RequestParam("pdNo")List<Integer> pdNo) {

		p.setAmountPrice(allPrice - discountPrice - usePoint);
		int result = 0;
		int result1 = 0;
		int result3 = 0;
		
		if(usePoint != 0) {
			result = payService.insertPayment(p);
		}else {
			result1 = payService.insertPayment1(p);
		}
		
		
		if(result > 0 || result1 > 0) {
			int orderRmg = payService.insertOrderMg(or);
			
			int orderNo = payService.selectOrderNo();
			
			List<HashMap<String,Object>> list = new ArrayList<HashMap<String,Object>>();
			HashMap<String,Object> cartPay = null;
			
			for(int i = 0; i < pdNo.size(); i++) {
				cartPay = new HashMap<String,Object>();
				cartPay.put("pdNo", pdNo.get(i));
				cartPay.put("opCount", opCount.get(i));
				cartPay.put("orderNo", orderNo);
				list.add(cartPay);
			}
			result3 = payService.cartPaySuccess(list);
		}
		return "payment/paySuccess";
	}
}
