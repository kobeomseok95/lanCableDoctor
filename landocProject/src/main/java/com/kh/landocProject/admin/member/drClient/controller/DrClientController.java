package com.kh.landocProject.admin.member.drClient.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.member.drClient.model.service.DrClientService;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;
import com.kh.landocProject.common.Pagination;

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
			
			PageInfo pi = null;
			
			// 전체
			if(condition.equals("noneCondition") && !condition.equals("")) {
				dsc.setNone(value);
				
				int listCount = dService.getListCount();
				
				pi = Pagination.getPageInfo(currentPage, listCount);
				
				list = dService.selectAllList(pi);
				
			}else {
				if(condition.equals("drNo") && !condition.equals("")) {
					dsc.setDrNo(value);
				}else if(condition.equals("userName") && !condition.equals("")) {
					dsc.setUserName(value);
				}
				
				int searchListCount = dService.getSearchListCount(dsc);
				System.out.println("searchListCount : " + searchListCount);
				
				pi = Pagination.getPageInfo(currentPage, searchListCount);
				
				list = dService.selectList(pi, dsc);
			}
			
			if(list != null) {
				mv.addObject("list",list);
				mv.addObject("pi",pi);
				mv.addObject("condition", condition);
				mv.addObject("value", value);
				mv.addObject("msg", msg);
				mv.setViewName("admin/member/drClient/drClientManage");
			}else {
				System.out.println("의사회원 조회 실패!");
			}
			return mv;
			
			
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}
		return mv;
	}
	
}
