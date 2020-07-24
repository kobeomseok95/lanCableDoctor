package com.kh.landocProject.cmypage.model.vo;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;

public class CMypagePagination {
	public static CMypagePageInfo getPageInfo(int currentPage,int listCount) {
		CMypagePageInfo pi = null;
		
		int pageLimit = 10;
		int maxPage;
		int startPage;
		int endPage;
		
		int boardLimit = 5;
		
		maxPage = (int)((double)listCount/boardLimit+0.9)-1;
		
		startPage = (int)(((double)currentPage/pageLimit + 0.9)-1)*pageLimit+1;
		
		endPage = startPage + pageLimit -1;
		
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new CMypagePageInfo(currentPage,listCount,pageLimit,maxPage,startPage,endPage,boardLimit);
		return pi;
		
	}
}
