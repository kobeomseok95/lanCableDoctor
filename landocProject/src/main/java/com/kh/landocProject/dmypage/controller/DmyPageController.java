package com.kh.landocProject.dmypage.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;

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
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePagination;
import com.kh.landocProject.dmypage.exception.DmypageException;
import com.kh.landocProject.dmypage.model.service.DmyPageService;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;
import com.kh.landocProject.dmypage.model.vo.DrProfile;
import com.kh.landocProject.hospitalReview.model.vo.HpLike;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class DmyPageController {

	@Autowired
	DmyPageService dMypageService;
	
	@RequestMapping(value="doctorMypage.do")
	public ModelAndView dMyPage(HttpSession session, ModelAndView mv, DrClient dr) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");

		String drNo = loginDrClient.getDrNo();
		String drProfile = dMypageService.selectDrProfile(drNo);
		
		dr.setUserName(loginDrClient.getUserName());
		dr.setEmail(loginDrClient.getEmail());
		dr.setProRename(drProfile);
		
		mv.addObject("dr", dr);
		mv.setViewName("mypage/dMyPageWork");
		return mv;
	}
	
	@RequestMapping(value="drPdReview.do")
	public ModelAndView pdReviewList(ModelAndView mv, HttpSession session,@RequestParam(value="page", required=false) Integer page) throws DmypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountReview();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		ArrayList<DPdReview> list = dMypageService.selectPdReviewList(drNo,pi);
		if(list!=null) {
			mv.addObject("pdReviewList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/drMypagePdReview");
		}else {
			throw new DmypageException("상품리뷰리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="drMyOrderList.do")
	public ModelAndView myOrderList(ModelAndView mv,HttpSession session,@RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		ArrayList<DOrderList> list = dMypageService.selectOrderList(drNo,pi);
		System.out.println(list);
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/drMypageOrderList");
		}
		
		return mv;
	}
	
	@RequestMapping(value="drOrderDetail.do")
	public void orderDetail(HttpSession session,HttpServletResponse response,DOrderList order,@RequestParam(value="orderNo")int orderNo,@RequestParam(value="page", required=false) Integer page) throws JsonIOException, IOException {
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		order.setDrNo(drNo);
		order.setOrderNo(orderNo);
		DOrderList detail = dMypageService.selectOrderDetail(order);
	
		response.setContentType("application/json;charset=utf-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-mm-dd").create();
		gson.toJson(detail,response.getWriter());
		
	}
	
	@RequestMapping(value="drDateSearch.do")
	public ModelAndView orderListDateSearch(HttpSession session,ModelAndView mv,@RequestParam(value="date") String date, DOrderList order,@RequestParam(value="page", required=false) Integer page) throws DmypageException  {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		order.setDrNo(drNo);
		order.setDate(date);
		ArrayList<DOrderList> list = dMypageService.orderListDateSearch(order,pi);
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.addObject("date", order.getDate());
			mv.setViewName("mypage/drMypageOrderList");
			
		}else {
			throw new DmypageException("날짜검색 실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="drDateSearch2.do")
	public ModelAndView orderListDateSearch2(HttpSession session,ModelAndView mv,@RequestParam(value="startDate") Date startDate, @RequestParam(value="endDate") Date endDate, DOrderList order,@RequestParam(value="page", required=false) Integer page) throws DmypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		order.setDrNo(drNo);
		order.setCalendarDate1(startDate);
		order.setCalendarDate2(endDate);
		ArrayList<DOrderList> list = dMypageService.orderListDateSearch2(order,pi);
		if(list!=null) {
			mv.addObject("orderList",list);
			mv.addObject("pi",pi);
			mv.addObject("date1",order.getCalendarDate1());
			mv.addObject("date2", order.getCalendarDate2());
			mv.setViewName("mypage/drMypageOrderList");
		}else {
			throw new DmypageException("날짜검색 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="drPdReviewInsertView.do")
	public ModelAndView pdReviewInsertView(HttpSession session,ModelAndView mv,@RequestParam(value="orderNo") int orderNo, DOrderList order) throws DmypageException {
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String cNo =loginClient.getDrNo();
		order.setOrderNo(orderNo);
		order.setDrNo(cNo);
		DOrderList detail =  dMypageService.selectOrderDetail(order);
		if(detail!=null) {
			mv.addObject("orderDetail",detail);
			mv.setViewName("mypage/drMypagePdReviewInsert");
		}else {
			throw new DmypageException("리뷰작성 페이지 조회실패!");
		}
		return mv;
		
	}
	
	@RequestMapping(value="drPdReviewInsert.do")
	public ModelAndView pdReviewInsert(ModelAndView mv,HttpServletResponse response,HttpSession session,DPdReview review,@RequestParam(value="orderNo") int orderNo, @RequestParam(value="pdNo") int pdNo, @RequestParam(value="pdReview") String pdReviewContent) throws IOException, DmypageException {
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		review.setdNo(drNo);
		review.setOrderNo(orderNo);
		review.setPdNo(pdNo);
		review.setPdReviewContent(pdReviewContent);
		
		int result = dMypageService.pdReviewInsert(review);
		int result2 = dMypageService.updateOrderStatus(review);
		if(result>0 && result2>0) {
			
			  response.setContentType("text/html; charset=UTF-8");
			  PrintWriter out_equals = response.getWriter();
	          out_equals.println("<script>alert('리뷰작성이 완료되었습니다.');</script>");
	          out_equals.flush();
	          mv.setViewName("mypage/dMyPageWork");
	     
		}else{
			throw new DmypageException("리뷰작성 실패!");
		}
		return mv;
		}
	
	@RequestMapping(value="drOrderQnaList.do")
	public ModelAndView orderQnaList(HttpSession session, ModelAndView mv,DOrderQna qna,@RequestParam(value="page", required=false) Integer page) throws  DmypageException {
		
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountOrderQna();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		
		
		ArrayList<DOrderQna> qnaY = dMypageService.orderQnaListY(drNo,pi);
		ArrayList<DOrderQna> qnaN = dMypageService.orderQnaListN(drNo);
		if(qnaY!=null && qnaN!=null) {
			mv.addObject("qnaYList",qnaY);
			mv.addObject("qnaNList",qnaN);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/drMypageOrderQnaList");
		}else {
			throw new DmypageException("qna 조회실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="drMyOrderCancelList.do")
	public ModelAndView orderCancelList(HttpSession session, ModelAndView mv,@RequestParam(value="page", required=false) Integer page) throws  DmypageException {
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = dMypageService.getListCountOrderList();
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		
		ArrayList<DOrderList> list = dMypageService.orderCancelList(drNo,pi);
		if(list!=null) {
			mv.addObject("cancelList",list);
			mv.addObject("pi",pi);
			mv.setViewName("mypage/drMypageOrderCancelList");
		}else {
			throw new DmypageException("주문취소/교환 리스트 조회실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="drOrderQnaInsertView.do")
	public ModelAndView orderQnaInsertView(HttpSession session,ModelAndView mv,@RequestParam(value="orderNo") int orderNo,DOrderList order) {
		DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo =loginClient.getDrNo();
		order.setDrNo(drNo);
		order.setOrderNo(orderNo);
		
		DOrderList list = dMypageService.selectOrderDetail(order);
		if(list!=null) {
			mv.addObject("orderQna",list);
			mv.setViewName("mypage/drMypageOrderQnaInsert");
		}
		
		return mv;
	}
	

	@RequestMapping(value="drOrderQnaInsert.do")
	public ModelAndView orderQnaInsert(HttpSession session,ModelAndView mv,HttpServletResponse response,
			@RequestParam(value="orderNo") int orderNo,
			@RequestParam(value="orderQnaContent") String oqnaContent,
			@RequestParam(value="orderQnaTitle") String oqnaTitle, DOrderQna qna) throws  IOException, DmypageException {
		
		qna.setOrderNo(orderNo);
		qna.setOqnaTitle(oqnaTitle);
		qna.setOqnaContent(oqnaContent);
		int result = dMypageService.orderQnaInsert(qna);
		if(result>0) {
			  response.setContentType("text/html; charset=UTF-8");
			  PrintWriter out_equals = response.getWriter();
	          out_equals.println("<script>alert('문의작성이 완료되었습니다.');</script>");
	          out_equals.flush();
	          mv.setViewName("mypage/dMyPageWork");
		}else {
			throw new DmypageException("주문문의 작성실패!");
		}
		return mv;
	}
	
	// 리뷰수정 위한 정보 조회
		@RequestMapping(value="drUpdateReviewView.do")
		public ModelAndView updateReview(HttpSession session,ModelAndView mv , DPdReview review, DOrderList order ,@RequestParam(value="orderNo") int orderNo ) throws  DmypageException {
			DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
			String drNo =loginClient.getDrNo();
			review.setdNo(drNo);
			review.setOrderNo(orderNo);
			order.setDrNo(drNo);
			order.setOrderNo(orderNo);
			DPdReview pr = dMypageService.updateReview(review);
			DOrderList detail = dMypageService.selectOrderDetail(order);
			if(pr!=null && detail!=null) {
				mv.addObject("orderDetail",detail);
				mv.addObject("review",pr);
				mv.setViewName("mypage/drMypagePdReviewInsert");
			}else {
			
				throw new DmypageException("리뷰수정 조회 실패!");
			}
			
			return mv;
		}
		
		@RequestMapping(value="drUpdateReview.do")
		public ModelAndView updateReviewInsert(ModelAndView mv,HttpServletResponse response,HttpSession session,DPdReview review,@RequestParam(value="orderNo") int orderNo, @RequestParam(value="pdReview") String pdReviewContent) throws IOException,DmypageException  {
			DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
			String drNo =loginClient.getDrNo();
			review.setdNo(drNo);
			review.setOrderNo(orderNo);
			review.setPdReviewContent(pdReviewContent);
			int result= dMypageService.updateReviewInsert(review);
			if(result >0) {
				  response.setContentType("text/html; charset=UTF-8");
				  PrintWriter out_equals = response.getWriter();
		          out_equals.println("<script>alert('리뷰수정이 완료되었습니다.');</script>");
		          out_equals.flush();
		          mv.setViewName("mypage/dMyPageWork");
			}else {
				throw new DmypageException("리뷰 수정 실패!");
			}
			return mv;
			
		}
		
		@RequestMapping(value="drMypagePoint.do")
		public ModelAndView mypagePoint(ModelAndView mv,HttpSession session,DrMypagePoint cp) throws cMypageException {
			DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
			String drNo =loginClient.getDrNo();
			 cp.setAllSumUsePoint(dMypageService.selectAllSumPoint(drNo));
			 cp.setMonthSumUsePoint(dMypageService.selectMonthSumPoint(drNo));
			 cp.setNowMonth(dMypageService.selectNowMonthPoint());
			 cp.setcPoint(dMypageService.selectCPoint(drNo));
			 
			
				 mv.addObject("point",cp);
				 mv.setViewName("mypage/drMypagePoint");
		
			 
			 return mv;
		}
		
		@RequestMapping(value="drPointList.do")
		public ModelAndView pointList(ModelAndView mv, HttpSession session) throws DmypageException {
			DrClient loginClient = (DrClient)session.getAttribute("loginDrClient");
			String drNo =loginClient.getDrNo();
			
			
			ArrayList<DrMypagePoint> listPoint = dMypageService.selectPointList(drNo);
			int listCount = dMypageService.listCountPointList(drNo);
			if(listPoint !=null) {
				mv.addObject("list", listPoint);
				mv.addObject("count",listCount);
				mv.setViewName("mypage/drPointList");
			}else {
				throw new DmypageException("포인트 리스트 조회 실패");
			}
			return mv;
		}
		
		@RequestMapping(value="drOrderCancel.do")
		public ModelAndView orderCancel(ModelAndView mv,DOrderList order,HttpServletResponse response, HttpSession session,@RequestParam(value="orderNo") int orderNo,@RequestParam(value="oCode") int oCode) throws IOException, DmypageException {
			order.setoCode(oCode);
			order.setOrderNo(orderNo);
			int result = dMypageService.orderCancel(order);
			if(result>0) {
				  response.setContentType("text/html; charset=UTF-8");
				  PrintWriter out_equals = response.getWriter();
				  if(order.getoCode()==15) {
					 out_equals.println("<script>alert('주문취소가 완료되었습니다.');</script>");
				  }else if(order.getoCode()==6) {
					  
					 out_equals.println("<script>alert('반품요청이 완료되었습니다.');</script>");
				  }else if(order.getoCode()==10) {
					 out_equals.println("<script>alert('교환요청이 완료되었습니다.');</script>");
				  }
		          out_equals.flush();
		          mv.setViewName("mypage/dMyPageWork");
			}else {
				throw new DmypageException("주문취소 실패");
			}
			
			return mv;
		}
		
	@RequestMapping(value="checkDrProfile.do", method=RequestMethod.GET)
	public ModelAndView checkDrProfile(HttpSession session, ModelAndView mv, DrProfile dp, HpLike hl,
										@RequestParam(value="replyDrNo", required=false) String replyDrNo) {
	
		int likeCount = 0;
		
		// 의사가 로그인해서 마이페이지 프로필 확인 들어갈 경우
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo = "";
		
		if(loginDrClient != null) {
			drNo = loginDrClient.getDrNo();
			dp = dMypageService.selectOneDr(drNo);
			
			// 의사 좋아요 수
			likeCount = dMypageService.selectLikeCount(drNo);
			
			
		}

		// 일반 회원이 로그인해서 의사에게 물어봐 답변 의사 프로필 들어갈 경우
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo = "";
		int heart = 0;
		
		if(loginClient != null) {
			cNo = loginClient.getcNo();
			dp = dMypageService.selectOneDr(replyDrNo);
			
			// 의사 좋아요 수
			likeCount = dMypageService.selectLikeCount(replyDrNo);
			
			hl.setcNo(cNo);
			hl.setdNo(replyDrNo);
			heart = dMypageService.selectMyDrLikeCount(hl);
			
		}else {
			cNo = "none";
			heart = 0;
		}
		
	
		
		
		
		mv.addObject("dp", dp);
		mv.addObject("cNo", cNo);
		mv.addObject("heart", heart);
		mv.addObject("likeCount", likeCount);
		mv.setViewName("mypage/drMypageProfile");
		
		return mv;
	}
		
	@RequestMapping(value="likeDr.do", method=RequestMethod.POST, produces = "application/json")
	public void likeDr(HttpServletResponse response, HpLike hl, HashMap<String, Integer> map,
					@RequestParam("heart") Integer heart, 
					@RequestParam("drNo") String drNo,
					@RequestParam("cNo") String cNo) throws JsonIOException, IOException {
		
		hl.setcNo(cNo);
		hl.setdNo(drNo);
		
		if(heart >=1) {
			dMypageService.deleteDrLike(hl);
			heart = 0;
		}else {
			dMypageService.insertDrLike(hl);
			heart = 1;
		}
		
		int drLikeCount = dMypageService.selectDrLikeCount(drNo);
		
		map.put("heart", heart);
		map.put("drLikeCount", drLikeCount);
		
		Gson gson = new Gson();
		
		gson.toJson(map, response.getWriter());
		
	}
		
		
		
		
		
		
		
		
		
		
		
		
}
