package com.kh.landocProject.common;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
// 한페이지에 10개의 리스트 나오게 하는 pagination클래스
public class Pagination {

   
   public static PageInfo getPageInfo(int currentPage, int listCount) {
      
      PageInfo pi = null;
      
      int pageLimit = 10;
      int maxPage;
      int startPage;
      int endPage;
      
      int boardLimit = 10;
      
      maxPage = (int)((double)listCount/boardLimit +0.95);
      
      startPage = ((int)((double)currentPage/pageLimit + 0.95)-1)*pageLimit +1;
      
      endPage = startPage + pageLimit -1;
      
      if(maxPage<endPage) {
         endPage = maxPage;
      }
      
      pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
      
      return pi;
   }
   
   
   
   
   
   
   
}