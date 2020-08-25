package com.kh.landocProject.cmypage.model.vo;

public class CMypagePagination{
	public static CMypagePageInfo getPageInfo(int currentPage,int listCount) {
		CMypagePageInfo pi = null;
		
		int pageLimit = 10;
		int maxPage;
		int startPage;
		int endPage;
		
		int boardLimit = 5;
		
		maxPage = (int)((double)listCount/boardLimit+0.9);
		
		startPage = (int)(((double)currentPage/pageLimit + 0.9)-1)*pageLimit+1;
		
		endPage = startPage + pageLimit -1;
		
		if(listCount==0){
			endPage =1;
			maxPage =1;
		}
		
		else if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		pi = new CMypagePageInfo(currentPage,listCount,pageLimit,maxPage,startPage,endPage,boardLimit);
		return pi;
		
	}
}
