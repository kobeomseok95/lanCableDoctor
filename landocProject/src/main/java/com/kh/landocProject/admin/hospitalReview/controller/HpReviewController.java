package com.kh.landocProject.admin.hospitalReview.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.admin.hospitalReview.model.service.HpReviewService;
import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpRePoint;
import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpReview;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.hospitalReview.model.vo.SearchCondition;
import com.kh.landocProject.common.Pagination;

@Controller
public class HpReviewController {

   @Autowired
   HpReviewService hpReService;
   
   
   @RequestMapping("hpReviewManage")
   public String hpReviewManage() {
      return"admin/hospitalReview/hpReviewManage";
   }
   
   
   // 병원리스트 출력하기(+검색기능 포함)
   @RequestMapping("hpReList.do")
   public ModelAndView hpReList(ModelAndView mv, HttpServletRequest request,
                        @RequestParam(value="page", required=false) Integer page,
                        @RequestParam(value="searchCondition", required=false) String condition,
                        @RequestParam(value="searchValue", required=false) String value,
                        @RequestParam(value="msg", required=false) String msg,
                        @RequestParam(value="denied", required=false) String denied)   {
      
         try{
        	 int currentPage = 1;
        	 if(page != null) {
        		 currentPage = page;
        	 }
 
        	 SearchCondition sc = new SearchCondition();
        	 
        	 ArrayList<AdminHpReview> list = null;
        	 
        	 PageInfo pi = null;
        	 
        	 
        	 // 전체 리스트를 불러와야 할 때
        	 if(condition.equals("noneCondition") && !condition.equals("")) {
        		 sc.setNone(value);
        		 
        		 int listCount =  hpReService.getListCount();
        		 
        		 pi = Pagination.getPageInfo(currentPage, listCount);
        		 
        		 list = hpReService.selectAllList(pi);
        
        		 
        		// 검색된 리스트를 불러와야 할 때
        	 }else {
	             if(condition.equals("hpNo") && !condition.equals("")) {
	            	 int hpNo = Integer.valueOf(value);
	            	 sc.setHpNo(hpNo);
	            	
	             }else if(condition.equals("hpName") && !condition.equals("")) {
	            	 String hpName = value.trim().replaceAll("\\p{Z}", "");
	                sc.setHpName(hpName);
	             
	             }else if(condition.equals("hpCateNo") && !condition.equals("")) {
	                int cateNo = Integer.valueOf(value);
	                sc.setHpCateNo(cateNo);
	             
	             }else if(condition.equals("hpCateName") && !condition.equals("")) {
	                sc.setHpCateName(value);
	             
	             }else if(condition.equals("cNo") && !condition.equals("")) {
	                sc.setcNo(value);
	             
	             }else if(condition.equals("approval") && !condition.equals("")) {
	                sc.setApproval(value);
	             }
	             
	             int searchListCount =  hpReService.getSearchListCount(sc);
	             
	             pi = Pagination.getPageInfo(currentPage, searchListCount);
	             
	             list = hpReService.selectList(pi,sc);
	             
	          }
        	 
        	 if(list != null) {
        		 mv.addObject("list",list);
        		 mv.addObject("pi",pi);
        		 mv.addObject("condition",condition);
        		 mv.addObject("value",value);
        		 mv.addObject("msg",msg);
        		 mv.addObject("denied", denied);
        		 mv.setViewName("admin/hospitalReview/hpReviewManage");
        	 }else{
        		 System.out.println("병원 리뷰 조회 실패!");
        	 }
        	 return mv;
        	 
         }catch(NumberFormatException e) {
        	 e.printStackTrace();
         }
      return mv;
   }
   
   
   // 디테일 페이지 이동
   @RequestMapping("hpReviewDetail.do")
   public ModelAndView hpReviewDetail(ModelAndView mv, AdminHpReview adminHpRe,
                           @RequestParam("hpReNo") Integer hpReNo,
                           @RequestParam(value="page", required=false) Integer page,
                           @RequestParam(value="msg", required=false) String msg){
 
      adminHpRe = hpReService.selectHpReDetail(hpReNo);
      
      
      if(adminHpRe != null) {
    	  mv.addObject("adminHpRe", adminHpRe);
    	  mv.addObject("msg", msg);
    	  mv.setViewName("admin/hospitalReview/hpReviewDetail");
      }else {
    	  System.out.println("세부내용 조회 실패");
      }
      return mv;
   }
   
   
   // 리뷰 영수증 승인하기
   @RequestMapping("adminHpReApproval.do")
   public String adminHpReApproval(AdminHpReview adminHpRe, AdminHpRePoint adminHpRePt,
		   						RedirectAttributes redirectAttributes,
		   						@RequestParam("approval") String approval,
		   						@RequestParam("hpReNo") Integer hpReNo,
		   						@RequestParam("cNo") String cNo) {
	   
	   // 리뷰 승인하기
	   int result =  hpReService.approvalHpRe(hpReNo);

	   // 적립포인트 내역
	   adminHpRePt.setHpReNo(hpReNo);
	   adminHpRePt.setcNo(cNo);
	   
	   int point = 0;
	   int cPoint = 0;
	   String msg = "";
	   
	   
	   if(result > 0) {
		   // 적립포인트 내역 테이블에 insert
		   point = hpReService.insertPoint(adminHpRePt);
		
		   // 일반 회원 테이블의 잔여 테이블 update
		  cPoint = hpReService.updateCPoint(cNo); 
		  
		  if(point >0 && cPoint >0) {
			  msg = "영수증 승인과 회원 포인트 적립에 성공했습니다.";
			  
			  redirectAttributes.addAttribute("searchCondition", "noneCondition");
			  redirectAttributes.addAttribute("searchValue", "noneValue");
			  redirectAttributes.addAttribute("msg",msg);
			  
			  return "redirect:hpReList.do";	// 리스트 페이지로 이동
			  
		  }else {
			  System.out.println("적립포인트 테이블, 일반회원 테이블 수정 실패!");
		  }
		  
	   }else {
		   System.out.println("승인 update실패!");
	   }
	   
	   msg="영수증 승인에 실패했습니다.";
	   redirectAttributes.addAttribute("msg",msg);
	   redirectAttributes.addAttribute("hpReNo",hpReNo);
		  
		  return "redirect:hpReviewDetail.do";	// 세부페이지로 이동
	   
   }
   
   
   // 리뷰 미승인 요청
   @RequestMapping("reviewDenied.do")
   public String reviewDenied(RedirectAttributes redirectAttributes, 
		   				@RequestParam("hpReNo") Integer hpReNo) {
	   
	   int reviewDenied = hpReService.reviewDenied(hpReNo);
	   String denied = "";
	   
	   if(reviewDenied>0) {
		  denied = "ok"; 
		  redirectAttributes.addAttribute("searchCondition", "noneCondition");
		  redirectAttributes.addAttribute("searchValue", "noneValue");
		  redirectAttributes.addAttribute("denied", denied);
		  
		  return "redirect:hpReList.do";	// 리스트 페이지로 이동
	   }else {
		   denied="영수증 승인에 실패했습니다.";
		   redirectAttributes.addAttribute("denied",denied);
		   redirectAttributes.addAttribute("hpReNo",hpReNo);
			  
		   return "redirect:hpReviewDetail.do";	// 세부페이지로 이동
	   }
	   
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}