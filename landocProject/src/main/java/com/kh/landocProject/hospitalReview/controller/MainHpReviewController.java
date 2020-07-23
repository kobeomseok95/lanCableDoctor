package com.kh.landocProject.hospitalReview.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.landocProject.hospitalReview.model.service.MainHpReviewService;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;

@Controller
public class MainHpReviewController {

	@Autowired
	MainHpReviewService MainHpReService;
	
	
	// header와의 연결
	@RequestMapping("hpReviewInsert.do")
	public String hpReviewInsert() {
		return "hospitalReview/hpReviewInsert";
		
	}
	
	// 병원 검색 모달 창
	@RequestMapping("searchHpName.do")
	public void searchHpName(HttpServletResponse response, @RequestParam(value="hpName") String hpName) throws JsonIOException, IOException {
		
		// 입력받은 문자열 공백 제거
		hpName= hpName.trim().replaceAll("\\p{Z}", "");
		
//		System.out.println("hpName ? " + hpName);
		
		ArrayList<SearchHp> searchHpList = MainHpReService.selectList(hpName);
		
//		System.out.println("controller에서 결과" + searchHpList);
		
		response.setContentType("applicateion/json;charset=utf-8");
		
		Gson gson = new Gson();
		
		gson.toJson(searchHpList, response.getWriter());
		
		
	}
	
	
	
}
