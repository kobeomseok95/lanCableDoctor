package com.kh.landocProject.cmypage.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.landocProject.cmypage.model.Exception.cMypageException;
import com.kh.landocProject.cmypage.model.service.cMypageService;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.PdReview;
import com.kh.landocProject.member.model.vo.Client;


@Controller
public class cMypageController {

	@Autowired
	private cMypageService cmService;
	
	@RequestMapping(value="clientMypage.do", method=RequestMethod.GET)
	public String login() {
		
		return "mypage/myPageWork";
	}
	
	@RequestMapping(value="likeHp.do")
	public ModelAndView likeHospitalList(ModelAndView mv, HttpSession session) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<LikeHp> list = cmService.selectList(cNo);
		int listCount = cmService.selectCount(cNo);
		if(list!=null) {
			mv.addObject("likeHplist",list);
			mv.addObject("likeHpCount",listCount);
			mv.setViewName("mypage/myPageLikeHospital");
		}else {
			throw new cMypageException("병원리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="pdReview.do")
	public ModelAndView pdReviewList(ModelAndView mv, HttpSession session) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<PdReview> list = cmService.selectPdReviewList(cNo);
		if(list!=null) {
			mv.addObject("pdReviewList",list);
			mv.setViewName("mypage/mypagePdReview");
		}else {
			throw new cMypageException("상품리뷰리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="myOrderList.do")
	public ModelAndView myOrderList(ModelAndView mv,HttpSession session) {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<OrderList> list = cmService.selectOrderList(cNo);
		
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.setViewName("mypage/mypageOrderList");
		}
		
		return mv;
	}
	
	@RequestMapping(value="cmOrderDetail.do")
	public void orderDetail(HttpSession session,HttpServletResponse response,OrderList order,@RequestParam(value="orderNo")int orderNo) throws JsonIOException, IOException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setOrderNo(orderNo);
		OrderList detail = cmService.selectOrderDetail(order);
	
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-mm-dd").create();
		gson.toJson(detail,response.getWriter());
		
	}
	
	@RequestMapping(value="dateSearch.do")
	public ModelAndView orderListDateSearch(HttpSession session,ModelAndView mv,@RequestParam(value="date") String date, OrderList order) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setDate(date);
		ArrayList<OrderList> list = cmService.orderListDateSearch(order);
		if(list!=null) {
			mv.addObject("orderList",list);

			mv.setViewName("mypage/mypageOrderList");
		}else {
			throw new cMypageException("날짜검색 실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="dateSearch2.do")
	public ModelAndView orderListDateSearch2(HttpSession session,ModelAndView mv,@RequestParam(value="startDate") Date startDate, @RequestParam(value="endDate") Date endDate, OrderList order) throws cMypageException{
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setCalendarDate1(startDate);
		order.setCalendarDate2(endDate);
		ArrayList<OrderList> list = cmService.orderListDateSearch2(order);
		if(list!=null) {
			mv.addObject("orderList",list);

			mv.setViewName("mypage/mypageOrderList");
		}else {
			throw new cMypageException("날짜검색 실패!");
		}
		
		return mv;
	}
	
}
