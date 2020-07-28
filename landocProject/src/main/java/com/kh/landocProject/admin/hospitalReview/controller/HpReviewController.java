package com.kh.landocProject.admin.hospitalReview.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
                        @RequestParam(value="searchValue", required=false) String value) {
      
      
      int currentPage = 1;
      if(page != null) {
         currentPage = page;
      }
      
//      System.out.println("controller에서 currentPage : " + currentPage);
//      System.out.println("controller에서 condition : " + condition);
//      System.out.println("controller에서 value : " + value);

      
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
            sc.setHpName(value);
         
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
      
//      System.out.println("controller에서 리스트 : " + list);
      
      if(list != null) {
         mv.addObject("list",list);
         mv.addObject("pi",pi);
         mv.addObject("condition",condition);
         mv.addObject("value",value);
         mv.setViewName("admin/hospitalReview/hpReviewManage");
      }else{
         System.out.println("병원 리뷰 조회 실패!");
      }
      return mv;
      
   }
   
   
   // 디테일 페이지 이동
   @RequestMapping("hpReviewDetail.do")
   public ModelAndView hpReviewDetail(ModelAndView mv, AdminHpReview adminHpRe,
                           @RequestParam("hpReNo") Integer hpReNo,
                           @RequestParam(value="page", required=false) Integer page){
      
//      int currentPage = 1;
//      
//      if(page != null) {
//         currentPage = page;
//      }
//      System.out.println("controller에서 hpReNo : " + hpReNo);
      
      adminHpRe = hpReService.selectHpReDetail(hpReNo);
      
      if(adminHpRe != null) {
    	  mv.addObject("adminHpRe", adminHpRe);
    	  mv.setViewName("admin/hospitalReview/hpReviewDetail");
      }else {
    	  System.out.println("세부내용 조회 실패");
      }
      return mv;
   }
   
   
   // 리뷰 영수증 승인하기
   @RequestMapping("adminHpReApproval.do")
   public String adminHpReApproval(AdminHpReview adminHpRe, AdminHpRePoint adminHpRePt,
		   						@RequestParam("approval") String approval,
		   						@RequestParam("hpReNo") Integer hpReNo,
		   						@RequestParam("cNo") String cNo) {
	   
	   // 리뷰 승인하기
	   int result =  hpReService.approvalHpRe(hpReNo);
//	   System.out.println("controller에서 result : " + result);
	   
	   // 적립포인트 내역
	   adminHpRePt.setHpReNo(hpReNo);
	   adminHpRePt.setcNo(cNo);
	   
	   if(result > 0) {
		   // 적립포인트 내역 테이블에 insert
		   int point = hpReService.insertPoint(adminHpRePt);
		   
		   
		   
		   
		   // 일반 회원 테이블의 잔여 테이블 update
		   
		   
	   }
	   
	   
	   
	   return null;
	   
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
}