package com.kh.landocProject.admin.order.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.order.model.exception.OrderException;
import com.kh.landocProject.admin.order.model.service.OrderService;
import com.kh.landocProject.admin.order.model.vo.OrderManage;
import com.kh.landocProject.admin.orderQna.exception.OrderQnaException;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;
import com.kh.landocProject.common.Pagination;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	@RequestMapping("orderManage.do")
	public ModelAndView orderManage(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws OrderException {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = orderService.getListCountOrdergMgList();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<OrderManage> list = orderService.selectOrderMgList(pi);
		if(list!=null) {
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.setViewName( "admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}
	
	@RequestMapping("refundList.do")
	public ModelAndView refundList(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws OrderException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = orderService.getListCountOrdergMgList();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<OrderManage> list = orderService.selectRefundList(pi);
		if(list!=null) {
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.addObject("refund","refund");
			mv.setViewName( "admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}
	
	@RequestMapping("cancelList.do")
	public ModelAndView cancelList(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws OrderException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = orderService.getListCountOrdergMgList();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<OrderManage> list = orderService.selectCancelList(pi);
		if(list!=null) {
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.addObject("cancel","cancel");
			mv.setViewName( "admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}
	
	@RequestMapping("holdList.do")
	public ModelAndView holdList(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws OrderException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = orderService.getListCountOrdergMgList();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		ArrayList<OrderManage> list = orderService.selectHoldList(pi);
		if(list!=null) {
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.addObject("hold","hold");
			mv.setViewName( "admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}
	
	
	@RequestMapping("selectOrderMg.do")
	public ModelAndView orderQnaSearch(ModelAndView mv,OrderManage order, @RequestParam(value="searchCondition") String condition,@RequestParam(value="search") String search,@RequestParam(value="page", required=false) Integer page) throws OrderException  {
		
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = orderService.getListCountOrdergMgList();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		order.setCondition(condition);
		order.setSearch(search);
		
		ArrayList<OrderManage> list = orderService.searchOrderMg(order,pi);
		if(list!=null) {
			mv.addObject("pi",pi);
			mv.addObject("condition",condition);
			mv.addObject("search",search);
			mv.addObject("list",list);
			mv.setViewName("admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		
		return mv;
	}
	
	
	@RequestMapping("omGrant.do")
	public ModelAndView omGrant(HttpSession session,ModelAndView mv,HttpServletResponse response,
			@RequestParam(value="orderNo") int orderNo,
			@RequestParam(value="oCode") int oCode,
			@RequestParam(value="pdNo") int pdNo,
			OrderManage order) throws OrderException {
		order.setPdNo(pdNo);
		order.setOrderNo(orderNo);
		order.setoCode(oCode);
		int currentPage = 1;
		
		int listCount = orderService.getListCountOrdergMgList();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		
		int result = orderService.omGrant(order);
		ArrayList<OrderManage> list = orderService.selectOrderMgList(pi);
		if(result>0 && list!=null) {
			mv.addObject("result","승인이 완료되었습니다.");
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.setViewName("admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}

	
	@RequestMapping("omGrantCancel.do")
	public ModelAndView omGrantCancel(HttpSession session,ModelAndView mv,HttpServletResponse response,
			@RequestParam(value="orderNo") int orderNo,
			@RequestParam(value="oCode") int oCode,
			@RequestParam(value="pdNo") int pdNo,
			OrderManage order) throws OrderException {
		order.setPdNo(pdNo);
		order.setOrderNo(orderNo);
		order.setoCode(oCode);
		int currentPage = 1;
		
		int listCount = orderService.getListCountOrdergMgList();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		
		int result = orderService.omGrantCancel(order);
		ArrayList<OrderManage> list = orderService.selectOrderMgList(pi);
		if(result>0 && list!=null) {
			mv.addObject("result","승인취소가 완료되었습니다.");
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.setViewName("admin/order/orderManage");
		}else {
			throw new OrderException("리스트 조회 실패");
		}
		return mv;
	}
	@RequestMapping("orderDetail.do")
	public String orderDetail() {
		return "admin/order/orderDetail";
	}

}
