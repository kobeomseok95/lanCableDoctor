package com.kh.landocProject.admin.orderQna.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.orderQna.exception.OrderQnaException;
import com.kh.landocProject.admin.orderQna.model.service.OrderQnaService;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;
import com.kh.landocProject.common.Pagination;
@Controller
public class OrderQnaController {

	@Autowired
	OrderQnaService oqService;
	
	@RequestMapping("orderQnaManage.do")
	public ModelAndView orderQnaManage(ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws OrderQnaException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = oqService.getListCountOrderQna();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		
		ArrayList<OrderQna> list = oqService.selectOrdrQnaList(pi);
		if(list!=null) {
			mv.addObject("pi",pi);
			mv.addObject("list",list);
			mv.setViewName("admin/orderQna/orderQnaManage");
		}else {
			throw new OrderQnaException("리스트 조회 실패");
		}
		
		return mv;
	}

	@RequestMapping("orderQnaSearch.do")
	public ModelAndView orderQnaSearch(ModelAndView mv,OrderQna qna, @RequestParam(value="condition") String condition,@RequestParam(value="search") String search,@RequestParam(value="page", required=false) Integer page) throws OrderQnaException {
		
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = oqService.getListCountOrderQna();
		
	
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		
		qna.setCondition(condition);
		qna.setSearch(search);
		
		ArrayList<OrderQna> list = oqService.searchOrderQna(qna,pi);
		if(list!=null) {
			mv.addObject("pi",pi);
			mv.addObject("condition",condition);
			mv.addObject("search",search);
			mv.addObject("list",list);
			mv.setViewName("admin/orderQna/orderQnaManage");
		}else {
			throw new OrderQnaException("리스트 조회 실패");
		}
		
		return mv;
	}
	
	@RequestMapping("orderQnaDetail.do")
	public ModelAndView orderQnaDetail(ModelAndView mv,@RequestParam(value="oqnaNo") int oqnaNo) throws OrderQnaException{
		
		OrderQna detail = oqService.selectOrderQnaDetail(oqnaNo);
		if(detail!=null) {
			mv.addObject("detail", detail);
			mv.setViewName("admin/orderQna/orderQnaDetail");
		}else {
			throw new OrderQnaException("상세보기 조회 실패");
		}
			
		return mv;
	}
	
	@RequestMapping("qnaStatusN.do")
	public ModelAndView qnaStatusN(ModelAndView mv,
			@RequestParam(value="page", required=false) Integer page) throws OrderQnaException {
		
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = oqService.getListCountOrderQna();
		
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		ArrayList<OrderQna> list = oqService.qnaStatusN(pi);
		if(list!=null) {
			mv.addObject("pi",pi);
			mv.addObject("list",list);
			mv.setViewName("admin/orderQna/orderQnaManage");
		}else {
			throw new OrderQnaException("리스트 조회 실패");
		}
		
		return mv;
	}
	
	@RequestMapping("insertAnswer.do")
	public ModelAndView orderQnaInsert(HttpSession session,
			ModelAndView mv,
			@RequestParam(value="oqnaNo") int oqnaNo,
			@RequestParam(value="answer") String answer,
			OrderQna qna) throws OrderQnaException {
	
		qna.setOqnaNo(oqnaNo);
		qna.setOqnaAnswer(answer);
		int currentPage = 1;
		
		int listCount = oqService.getListCountOrderQna();
		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
		
		int result = oqService.orderQnaInsert(qna);
		ArrayList<OrderQna> list = oqService.selectOrdrQnaList(pi);
		if(result>0 && list!=null) {
			mv.addObject("result","답변등록이 완료되었습니다.");
			mv.addObject("list",list);
			mv.addObject("pi",pi);
			mv.setViewName("admin/orderQna/orderQnaManage");
		}else {
			throw new OrderQnaException("답변작성 등록 실패!");
		}
		return mv;
	}

}
