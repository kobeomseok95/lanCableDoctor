package com.kh.landocProject.admin.member.drClient.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.member.drClient.model.service.DrClientService;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;

@Controller
public class DrClientController {

	@Autowired
	DrClientService dService;
	
//	@RequestMapping("drClientManage.do")
//	public String drClientManage() {
//		return "admin/member/drClient/drClientManage";
//	}
//
//	@RequestMapping("drClientDetail.do")
//	public String drClientDetail() {
//		return "admin/member/drClient/drClientDetail";
//	}
	
	@RequestMapping(value="drClientList.do")
	public ModelAndView drClient(ModelAndView mv, HttpServletRequest request,
								@RequestParam(value="page", required=false) Integer page,
								@RequestParam(value="searchCondition", required=false) String condition,
								@RequestParam(value="searchValue", required=false) String value,
								@RequestParam(value="msg", required=false) String msg) {
		
		try {
			int currentPage = 1;
			if(page != null) {
				currentPage = page;
			}
			
			System.out.println("controller에서 currentPage : " + currentPage);
			System.out.println("controller에서 condition : " + condition);
			System.out.println("controller에서 value : " + value);
			
			DrClientSearchCondition dsc = new DrClientSearchCondition();
			
			ArrayList<DrClientPage> list = null;
			
			// 전체
			if(condition.equals("noneCondition") && !condition.equals("")) {
				dsc.setNone(value);
				
				int listCount = dService.getListCount();
				
			}
			
			
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
}
