package com.kh.landocProject.common;

import java.util.Map;

public class PagingUtil {
	
	
	private static final int countPerPage = 10;
	private static final int unitPage = 10;
	
	
	public static Map setPageInfo(Map reqParam, int defaultCountPerPage) {
		
		int pageNo = Integer.parseInt(reqParam.get("pageNo").toString());
		int countPerPage = Integer.parseInt(reqParam.get("countPerPage").toString());
		
		countPerPage = countPerPage < 100 ? countPerPage : 100;
		
		int first = ((pageNo -1) * countPerPage) +1;
		int last = first + countPerPage -1;
		
		reqParam.put("countPerPage", countPerPage);
		reqParam.put("first", first);
		reqParam.put("last", last);
		
		return reqParam;
	}
	
	
	// 페이징 처리(파라미터 2개)
	public static Map getPageObject(int totalCount, int currentPageNo) {
		return getPageObject(totalCount, currentPageNo, 10);
	}
	
	// 페이징 처리(파라미터 3개)
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage) {
		return getPageObject(totalCount, currentPageNo, countPerPage, 10);
	}
	
	
	// 페이징 처리(파라미터 4개)
	public static Map getPageObject(int totalCount, int currentPageNo, int countPerPage, int unitPage) {
		
		int currentPage = currentPageNo;
		int unitCount = 100;
		
		boolean isFirst = false;
		
		if(totalCount == 0) {
			countPerPage = unitCount;
		}else if(totalCount < countPerPage) {
			countPerPage = totalCount / unitCount * unitCount;
			
			if(totalCount % unitCount > 0) {
				countPerPage += unitCount;
			}
			
		}
		
		int totalPage = getMaxNum(totalCount, countPerPage);
		
		if(totalPage < currentPage) {
			currentPage = totalPage;
		}
		
		int currentStartCount;
		int currentEndCount;
		
		if(currentPage != 1) {
			currentEndCount = currentPage * countPerPage;
			currentStartCount = currentEndCount - countPerPage;
			
		}else {
			currentEndCount = countPerPage;
			currentStartCount = 0;
		}
		
		if(currentEndCount > totalCount) {
			currentEndCount = totalCount;
		}
		
		int currentStartPage;
		int currentEndPage;
		
		if(totalPage <= unitPage) {
			currentEndPage = totalPage;
			currentStartPage = 1;
		}else {
			currentEndPage = (currentPage -1) / unitPage * unitPage + unitPage;
			currentStartPage = currentEndPage - unitPage +1;
		}
		
		if(currentEndPage > totalPage) {
			currentEndPage = totalPage;
		}
		
		int prePage;
		boolean prePage_is;
		
		if(currentStartPage != 1) {
			prePage_is = true;
			prePage = currentStartPage -1;
		}else {
			prePage_is = false;
			prePage = 0;
		}
		
		int nextPage;
		boolean nextPage_is;
		
		if(currentEndPage != totalPage) {
			nextPage_is = true;
			nextPage = currentEndPage +1;
		}else {
			nextPage_is=false;
			nextPage=0;
		}
		
		Map tempJSON = new java.util.HashMap();
		try {
			
			tempJSON.put("currentPage", Integer.valueOf(currentPage));
			tempJSON.put("unitPage", Integer.valueOf(unitPage));
			tempJSON.put("prePage", Integer.valueOf(prePage));
			tempJSON.put("prePage_is", Boolean.valueOf(prePage_is));
			tempJSON.put("nextPage", Integer.valueOf(nextPage));
			tempJSON.put("nextPage_is", Boolean.valueOf(nextPage_is));
			tempJSON.put("currentStartPage", Integer.valueOf(currentStartPage));
			tempJSON.put("currentEndPage", Integer.valueOf(currentEndPage));
			
			
			tempJSON.put("totalCount", Integer.valueOf(totalCount));
			tempJSON.put("totalPage", Integer.valueOf(totalPage));
			
		}catch(Exception e) {
			e.printStackTrace();
		}
				
		return tempJSON;
	}
	
	
	// max페이지 구하기
	private static int getMaxNum(int allPage, int list_num) {
		if(allPage % list_num == 0) {
			return allPage / list_num;
		}
		return allPage / list_num + 1;
		
	}
	
	
	
	

}
