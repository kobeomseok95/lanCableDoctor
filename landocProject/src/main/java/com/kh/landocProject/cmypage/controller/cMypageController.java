package com.kh.landocProject.cmypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePagination;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;
import com.kh.landocProject.member.model.vo.Client;


@Controller
public class cMypageController {

	@Autowired
	private cMypageService cmService;
	
	@RequestMapping(value="clientMypage.do", method=RequestMethod.GET)
	public String mypageWorkjsp() {
		
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
	public ModelAndView pdReviewList(ModelAndView mv, HttpSession session,@RequestParam(value="page", required=false) Integer page) throws cMypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountReview();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<PdReview> list = cmService.selectPdReviewList(cNo,pi);
		if(list!=null) {
			mv.addObject("pdReviewList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/mypagePdReview");
		}else {
			throw new cMypageException("상품리뷰리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="myOrderList.do")
	public ModelAndView myOrderList(ModelAndView mv,HttpSession session,@RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<OrderList> list = cmService.selectOrderList(cNo,pi);
		
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/mypageOrderList");
		}
		
		return mv;
	}
	
	@RequestMapping(value="cmOrderDetail.do")
	public void orderDetail(HttpSession session,HttpServletResponse response,OrderList order,@RequestParam(value="orderNo")int orderNo,@RequestParam(value="page", required=false) Integer page) throws JsonIOException, IOException {
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
	public ModelAndView orderListDateSearch(HttpSession session,ModelAndView mv,@RequestParam(value="date") String date, OrderList order,@RequestParam(value="page", required=false) Integer page) throws cMypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setDate(date);
		ArrayList<OrderList> list = cmService.orderListDateSearch(order,pi);
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.addObject("date", order.getDate());
			mv.setViewName("mypage/mypageOrderList");
			
		}else {
			throw new cMypageException("날짜검색 실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="dateSearch2.do")
	public ModelAndView orderListDateSearch2(HttpSession session,ModelAndView mv,@RequestParam(value="startDate") Date startDate, @RequestParam(value="endDate") Date endDate, OrderList order,@RequestParam(value="page", required=false) Integer page) throws cMypageException{
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setCalendarDate1(startDate);
		order.setCalendarDate2(endDate);
		ArrayList<OrderList> list = cmService.orderListDateSearch2(order,pi);
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.addObject("date1",order.getCalendarDate1());
			mv.addObject("date2", order.getCalendarDate2());
			mv.setViewName("mypage/mypageOrderList");
		}else {
			throw new cMypageException("날짜검색 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="pdReviewInsertView.do")
	public ModelAndView pdReviewInsertView(HttpSession session,ModelAndView mv,@RequestParam(value="orderNo") int orderNo, OrderList order) throws cMypageException{
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setOrderNo(orderNo);
		order.setcNo(cNo);
		OrderList detail = cmService.selectOrderDetail(order);
		if(detail!=null) {
			mv.addObject("orderDetail",detail);
			mv.setViewName("mypage/mypagePdReviewInsert");
		}else {
			throw new cMypageException("리뷰작성페이지 조회 실패!");
		}
		return mv;
		
	}
	@RequestMapping(value="pdReviewInsert.do")
	public ModelAndView pdReviewInsert(ModelAndView mv,HttpServletResponse response,HttpSession session,PdReview review,@RequestParam(value="orderNo") int orderNo, @RequestParam(value="pdNo") int pdNo, @RequestParam(value="pdReview") String pdReviewContent) throws IOException, cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		review.setcNo(cNo);
		review.setOrderNo(orderNo);
		review.setPdNo(pdNo);
		review.setPdReviewContent(pdReviewContent);
		
		int result = cmService.pdReviewInsert(review);
		int result2 = cmService.updateOrderStatus(review);
		if(result>0 && result2>0) {
			
			  response.setContentType("text/html; charset=UTF-8");
			  PrintWriter out_equals = response.getWriter();
	          out_equals.println("<script>alert('리뷰작성이 완료되었습니다.');</script>");
	          out_equals.flush();
	          mv.setViewName("mypage/myPageWork");
	     
		}else{
			throw new cMypageException("리뷰작성 실패!");
		}
		return mv;
		}
	
	@RequestMapping(value="orderQnaList.do")
	public ModelAndView orderQnaList(HttpSession session, ModelAndView mv,OrderQna qna,@RequestParam(value="page", required=false) Integer page) throws cMypageException {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderQna();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		
		
		ArrayList<OrderQna> qnaY = cmService.orderQnaListY(cNo,pi);
		ArrayList<OrderQna> qnaN = cmService.orderQnaListN(cNo);
		if(qnaY!=null && qnaN!=null) {
			mv.addObject("qnaYList",qnaY);
			mv.addObject("qnaNList",qnaN);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/mypageOrderQnaList");
		}else {
			throw new cMypageException("qna조회실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="myOrderCancelList.do")
	public ModelAndView orderCancelList(HttpSession session, ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws cMypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		
		ArrayList<OrderList> list = cmService.orderCancelList(cNo,pi);
		if(list!=null) {
			mv.addObject("cancelList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/mypageOrderCancelList");
		}else {
			throw new cMypageException("주문취소/교환 리스트 조회실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="orderQnaInsertView.do")
	public ModelAndView orderQnaInsertView(HttpSession session,ModelAndView mv,@RequestParam(value="orderNo") int orderNo,OrderList order) {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		order.setcNo(cNo);
		order.setOrderNo(orderNo);
		
		OrderList list = cmService.selectOrderDetail(order);
		if(list!=null) {
			mv.addObject("orderQna",list);
			mv.setViewName("mypage/mypageOrderQnaInsert");
		}
		
		return mv;
	}
	
	@RequestMapping(value="orderQnaInsert.do")
	public ModelAndView orderQnaInsert(HttpSession session,ModelAndView mv,HttpServletResponse response,
			@RequestParam(value="orderNo") int orderNo,
			@RequestParam(value="orderQnaContent") String oqnaContent,
			@RequestParam(value="orderQnaTitle") String oqnaTitle, OrderQna qna) throws cMypageException, IOException {
		
		qna.setOrderNo(orderNo);
		qna.setOqnaTitle(oqnaTitle);
		qna.setOqnaContent(oqnaContent);
		int result = cmService.orderQnaInsert(qna);
		if(result>0) {
			  response.setContentType("text/html; charset=UTF-8");
			  PrintWriter out_equals = response.getWriter();
	          out_equals.println("<script>alert('문의작성이 완료되었습니다.');</script>");
	          out_equals.flush();
	          mv.setViewName("mypage/myPageWork");
		}else {
			throw new cMypageException("주문문의 작성실패!");
		}
		return mv;
	}
	
	
	// 리뷰수정 위한 정보 조회
	@RequestMapping(value="updateReviewView.do")
	public ModelAndView updateReview(ModelAndView mv , PdReview review, OrderList order ,@RequestParam(value="orderNo") int orderNo,  @RequestParam(value="cNo") String cNo) throws cMypageException {
		review.setcNo(cNo);
		review.setOrderNo(orderNo);
		order.setcNo(cNo);
		order.setOrderNo(orderNo);
		PdReview pr = cmService.updateReview(review);
		OrderList detail = cmService.selectOrderDetail(order);
		if(pr!=null && detail!=null) {
			mv.addObject("orderDetail",detail);
			mv.addObject("review",pr);
			mv.setViewName("mypage/mypagePdReviewInsert");
		}else {
			throw new cMypageException("리뷰수정 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="updateReview.do")
	public ModelAndView updateReviewInsert(ModelAndView mv,HttpServletResponse response,HttpSession session,PdReview review,@RequestParam(value="orderNo") int orderNo, @RequestParam(value="pdReview") String pdReviewContent) throws IOException, cMypageException  {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		review.setcNo(cNo);
		review.setOrderNo(orderNo);
		review.setPdReviewContent(pdReviewContent);
		int result= cmService.updateReviewInsert(review);
		if(result >0) {
			  response.setContentType("text/html; charset=UTF-8");
			  PrintWriter out_equals = response.getWriter();
	          out_equals.println("<script>alert('리뷰수정이 완료되었습니다.');</script>");
	          out_equals.flush();
	          mv.setViewName("mypage/myPageWork");
		}
		return mv;
		
	}
}