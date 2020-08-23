package com.kh.landocProject.cmypage.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.cmypage.model.Exception.cMypageException;
import com.kh.landocProject.cmypage.model.service.cMypageService;
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePagination;
import com.kh.landocProject.cmypage.model.vo.CMypagePoint;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.member.model.vo.Client;


@Controller
public class cMypageController {

	@Autowired
	private cMypageService cmService;
	
	// 사진 저장 폴더
	private final String filePath = "C:\\lanCableDoctorProject\\files\\";
	
	
	@RequestMapping(value="clientMypage.do", method=RequestMethod.GET)
	public ModelAndView mypageWorkjsp(HttpSession session,ModelAndView mv) {
		Client loginClient = (Client)session.getAttribute("loginClient"); 
		String cNo= loginClient.getcNo();
		Client loginClient1 = cmService.selectC(cNo);
		mv.addObject("loginClient1",loginClient1);
		mv.setViewName("mypage/myPageWork");
		return mv;
	}
	
	
	
	@RequestMapping(value="likeHp.do")
	public ModelAndView likeHospitalList(ModelAndView mv, HttpSession session,HttpServletRequest rq,HttpServletResponse rp) throws cMypageException, ServletException, IOException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		ArrayList<LikeHp> list = cmService.selectList(cNo);
		ArrayList<LikeHp> listAvg = cmService.selectHpAvgList(cNo); 
		for(int i =0; i<listAvg.size();i++) {
			for(int z=0; z<list.size();z++) {
				if(listAvg.get(i).getHpNo() == list.get(z).getHpNo()) {
					list.get(z).setHpAvgRate(listAvg.get(i).getHpAvgRate());
					list.get(z).setReviewCount(listAvg.get(i).getReviewCount());
				}
			}
		}
	
		int listCount = cmService.selectCount(cNo);
		if(list!=null && listAvg != null) {
			  mv.addObject("likeHplist",list); 
			  mv.addObject("likeHpCount",listCount);
			  mv.setViewName("mypage/myPageLikeHospital");
			  
			 
		}else {
			throw new cMypageException("병원리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="pdReview.do")
	public ModelAndView pdReviewList(ModelAndView mv, HttpSession session,@RequestParam(value="page", required=false) Integer page,String msg) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountReview(cNo);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		ArrayList<PdReview> list = cmService.selectPdReviewList(cNo,pi);
		if(list!=null) {
			mv.addObject("pdReviewList",list);
			mv.addObject("pi",pi);
			mv.addObject("msg",msg);
			mv.setViewName("mypage/mypagePdReview");
		}else {
			throw new cMypageException("상품리뷰리스트 조회 실패!");
		}
		
		return mv;
	}
	
	@RequestMapping(value="myOrderList.do")
	public ModelAndView myOrderList(ModelAndView mv,HttpSession session, @RequestParam(value="page", required=false) Integer page,String msg) {
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		HashMap<String,Object> order = new HashMap<String, Object>();
		order.put("ostate","orderList");
		order.put("cNo",cNo);
		int listCount = cmService.getListCountOrderList(order);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		ArrayList<OrderList> list = cmService.selectOrderList(cNo,pi);
		
		if(list!=null) {
			mv.addObject("msg",msg);
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
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		HashMap<String,Object> search = new HashMap<String, Object>();
		search.put("search","dateSearch");
		search.put("cNo",cNo);
		search.put("date",date);
		int listCount = cmService.getListCountSearchOrderList(search);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
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
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		HashMap<String,Object> search = new HashMap<String, Object>();
		search.put("search","dateSearch");
		search.put("cNo",cNo);
		search.put("CalendarDate1",startDate);
		search.put("CalendarDate2",endDate);
		int listCount = cmService.getListCountSearchOrderList2(search);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
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
	public ModelAndView pdReviewInsert(ModelAndView mv,HttpServletRequest request, HttpServletResponse response,HttpSession session,PdReview review,@RequestParam(value="orderNo") int orderNo, @RequestParam(value="pdNo") int pdNo,
			@RequestParam(value="pdReview") String pdReviewContent,@RequestParam(value="pdReviewImg",required = false) MultipartFile file) throws IOException, cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		if(!file.getOriginalFilename().equals("")) {
			  String renameFileName = saveFile(file,request);
			  review.setcNo(cNo);
			  review.setOrderNo(orderNo);
			  review.setPdNo(pdNo);
			  review.setPdReviewContent(pdReviewContent);
			  review.setOriginFile(file.getOriginalFilename());
			  review.setRenameFile(renameFileName);
			  
		}else {
			  review.setcNo(cNo);
			  review.setOrderNo(orderNo);
			  review.setPdNo(pdNo);
			  review.setPdReviewContent(pdReviewContent);
			  review.setOriginFile(null);
			  review.setRenameFile(null);
		}
		int result = cmService.pdReviewInsert(review);
		int result2 = cmService.updateOrderStatus(review);
		if(result>0 && result2>0) {
			
	  		  mv.addObject("msg","리뷰작성이 완료되었습니다.");
	          mv.setViewName("redirect:pdReview.do");
	     
		}else{
			throw new cMypageException("리뷰작성 실패!");
		}
		return mv;
		}
	
	@RequestMapping(value="orderQnaList.do")
	public ModelAndView orderQnaList(HttpSession session, ModelAndView mv,OrderQna qna,@RequestParam(value="page", required=false) Integer page,String msg) throws cMypageException {
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = cmService.getListCountOrderQna(cNo);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		
		
		
		ArrayList<OrderQna> qnaY = cmService.orderQnaListY(cNo,pi);
		ArrayList<OrderQna> qnaN = cmService.orderQnaListN(cNo);
		if(qnaY!=null && qnaN!=null) {
			mv.addObject("qnaYList",qnaY);
			mv.addObject("qnaNList",qnaN);
			mv.addObject("pi",pi);
			mv.addObject("msg",msg);
			mv.setViewName("mypage/mypageOrderQnaList");
		}else {
			throw new cMypageException("qna조회실패!");
		}
		return mv;
	}
	
	@RequestMapping(value="myOrderCancelList.do")
	public ModelAndView orderCancelList(HttpSession session, ModelAndView mv,@RequestParam(value="page", required=false) Integer page,String msg) throws cMypageException {
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		int currentPage = 1;
		if(page != null) {
			currentPage = page;
		}
		HashMap<String,Object> order = new HashMap<String, Object>();
		order.put("ostate","cancelList");
		order.put("cNo",cNo);
		int listCount = cmService.getListCountOrderList(order);
		
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		
		ArrayList<OrderList> list = cmService.orderCancelList(cNo,pi);
		if(list!=null) {
			mv.addObject("cancelList",list);
			mv.addObject("pi",pi);
			mv.addObject("msg",msg);
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
			  mv.addObject("msg","문의작성이 완료되었습니다.");
	          mv.setViewName("redirect:orderQnaList.do");
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
	public ModelAndView updateReviewInsert(ModelAndView mv,HttpServletRequest request, HttpServletResponse response,HttpSession session,PdReview review,
			@RequestParam(value="orderNo") int orderNo, 
			@RequestParam(value="pdReview") String pdReviewContent,
			@RequestParam(value="pdReviewImg",required = false) MultipartFile file) throws IOException, cMypageException  {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		
		review.setcNo(cNo);
		review.setOrderNo(orderNo);
		String rename = cmService.selectPdReviewPhoto(review);
		if(rename!=null) {
			deleteFile(rename);
		}
		if(!file.getOriginalFilename().equals("")){
			
			String renameFile = saveFile(file, request);
			review.setRenameFile(renameFile);
			review.setOriginFile(file.getOriginalFilename());
			review.setcNo(cNo);
			review.setOrderNo(orderNo);
			review.setPdReviewContent(pdReviewContent);
		}else {
			review.setRenameFile(null);
			review.setOriginFile(null);
			review.setcNo(cNo);
			review.setOrderNo(orderNo);
			review.setPdReviewContent(pdReviewContent);
		}
		int result= cmService.updateReviewInsert(review);
		if(result >0) {
			  mv.addObject("msg","리뷰수정이 완료되었습니다.");
	          mv.setViewName("redirect:pdReview.do");
		}else {
			throw new cMypageException("리뷰 수정 실패!");
		}
		return mv;
		
	}
	
	@RequestMapping(value="mypagePoint.do")
	public ModelAndView mypagePoint(ModelAndView mv,HttpSession session,CMypagePoint cp) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		 cp.setAllSumUsePoint(cmService.selectAllSumPoint(cNo));
		 cp.setMonthSumUsePoint(cmService.selectMonthSumPoint(cNo));
		 cp.setNowMonth(cmService.selectNowMonthPoint());
		 cp.setcPoint(cmService.selectCPoint(cNo));
		 
		
		mv.addObject("point",cp);
		mv.setViewName("mypage/mypagePoint");
	
		 
		 return mv;
	}
	
	@RequestMapping(value="pointList.do")
	public ModelAndView pointList(ModelAndView mv, HttpSession session) throws cMypageException {
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo =loginClient.getcNo();
		
		ArrayList<CMypagePoint> listPoint = cmService.selectPointList(cNo);
		int listCount = cmService.listCountPointList(cNo);
		if(listPoint !=null) {
			mv.addObject("list", listPoint);
			mv.addObject("count",listCount);
			mv.setViewName("mypage/pointList");
		}else {
			throw new cMypageException("포인트 리스트 조회 실패");
		}
		return mv;
	}
	
	@RequestMapping(value="orderCancel.do")
	public ModelAndView orderCancel(ModelAndView mv,OrderList order,@RequestParam(value="orderNo") int orderNo,@RequestParam(value="oCode") int oCode) throws cMypageException, IOException {
		order.setoCode(oCode);
		order.setOrderNo(orderNo);
		System.out.println(order);
		int result = cmService.orderCancel(order);
		if(result>0) {
			 if(order.getoCode()==15) {
				  mv.addObject("msg","주문취소가 완료되었습니다.");
			  }else if(order.getoCode()==6) {
				  mv.addObject("msg","반품요청이 완료되었습니다.");		
			  }else if(order.getoCode()==10) {
				  mv.addObject("msg","교환요청이 완료되었습니다.");
			  }
				
	          mv.setViewName("redirect:myOrderCancelList.do");
		}else {
			throw new cMypageException("주문취소 실패");
		}
		
		return mv;
	}
	
	
	 public String saveFile(MultipartFile file, HttpServletRequest request) {

	      
	      File folder = new File(filePath);
	      
	      if(!folder.exists()) {
	         folder.mkdirs();
	      }
	      
	      SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
	      String originFileName = file.getOriginalFilename();
	      String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + originFileName.substring(originFileName.lastIndexOf(".")+1);
	      
	      String saveFiles = filePath + renameFileName;
	      
	      
	      try {
	         file.transferTo(new File(saveFiles));   // 이 때 파일이 저장
	         
	      } catch (IllegalStateException e) {
	         
	         e.printStackTrace();
	      } catch (IOException e) {
	         
	         e.printStackTrace();
	      }
	      
	      return renameFileName;
	   }
	 
	 
	 
	 
		public void deleteFile(String fileName) {
			
			File f = new File(filePath + fileName);
			
			if(f.exists()) {
				f.delete();
			}
		}
		
	@RequestMapping(value="myAskDr.do", method=RequestMethod.GET)
	public ModelAndView myAskDr(ModelAndView mv,
				@RequestParam String cNo,
				@RequestParam(required=false) Integer choosePage,
				@RequestParam(required=false) Integer nonChoosePage) {
		if( choosePage == null ) choosePage = 1;
		if( nonChoosePage == null ) nonChoosePage = 1;
		
		int chooseCount = cmService.getMyChooseCount(cNo);
		int nonChooseCount = cmService.getMyNonChooseCount(cNo);
		
		CMypagePageInfo choosePi = CMypagePagination.getPageInfo(choosePage,chooseCount);
		CMypagePageInfo nonChoosePi = CMypagePagination.getPageInfo(nonChoosePage,nonChooseCount);
		
		List<AskDrBoard> chooseList = cmService.getChooseList(cNo, choosePi);
		List<AskDrBoard> nonChooseList = cmService.getNonChooseList(cNo, nonChoosePi);

		mv.addObject("chooseCount", chooseCount);
		mv.addObject("nonChooseCount", nonChooseCount);
		mv.addObject("cpi", choosePi);
		mv.addObject("ncpi", nonChoosePi);
		mv.addObject("chooseList", chooseList);
		mv.addObject("nonChooseList", nonChooseList);
		mv.setViewName("mypage/mypageAskDr");
		return mv;
	}
	
	// 희지 일반 회원 마이페이지(나의 병원리뷰)
	@RequestMapping("myHpReview.do")
	public ModelAndView myHpReview(ModelAndView mv, HttpSession session,
							@RequestParam(value="page", required=false) Integer currentPage) {
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo = loginClient.getcNo();
		
		if(currentPage == null) {
			currentPage = 1;
		}
		
		int hpReCount = cmService.getHpReCount(cNo);
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,hpReCount);
		ArrayList<HpReview> hpReList = cmService.getMyHpReList(cNo, pi);
		
		mv.addObject("hpReList", hpReList);
		mv.addObject("pi", pi);
		mv.setViewName("mypage/mypageHpReview");
		
		return mv;
	}
	
	
	
	
	
	
}









