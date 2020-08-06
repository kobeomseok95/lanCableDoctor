package com.kh.landocProject.admin.hospital.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.hospital.model.service.HospitalService;
import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.common.Pagination;
import com.kh.landocProject.hospital.model.vo.MainHp;

@Controller
public class HospitalController {

	@Autowired
	HospitalService hpService;

	@RequestMapping("hospitalManage.do")
	public String hospitalManage() {
		return "admin/hospital/hospitalManage";
	}

	@RequestMapping("hospitalDetail.do")
	public String hospitalDetail() {
		return "admin/hospital/hospitalDetail";
	}

	// admin 병원 정보관리 페이지 병원 리스트 뿌려주는 메소드_희지
	@RequestMapping("hpList.do")
	public ModelAndView hpList(ModelAndView mv, HttpServletRequest request, AdminHpSearchCondition sc,
						@RequestParam(value = "page", required = false) Integer page,
						@RequestParam(value="searchCondition", required=false) String condition,
						@RequestParam(value="searchValue", required=false) String value) {

		int currentPage = 1;
		if (page != null) {
			currentPage = page;
		}
		
		PageInfo pi = null;
		
		ArrayList<MainHp> list = null;
		
		if(condition.equals("noneCondition") && !condition.equals("")) {
			sc.setNone(value);
			
			int listCount = hpService.getListCount();
			
			pi= Pagination.getPageInfo(currentPage, listCount);
			
			list = hpService.selectAllList(pi);
			
//			System.out.println(list);
		}else {
			if(condition.equals("hpNo") && !condition.equals("")) {
				int hpNo = Integer.valueOf(value);
				sc.setHpNo(hpNo);
			}else if(condition.equals("hpName") && !condition.equals("")) {
				String hpName =  value.trim().replaceAll("\\p{Z}", "");
				sc.setHpName(hpName);
			}else if(condition.equals("hpCateCode") && !condition.equals("")) {
				int hpCateCode = Integer.valueOf(value);
				sc.setHpCateCode(hpCateCode);
			}else if(condition.equals("hpCateName") && !condition.equals("")) {
				sc.setHpCateName(value);
			}else if(condition.equals("hpStatus") && !condition.equals("")) {
				String hpStatus = value.toUpperCase();
				sc.setHpStatus(hpStatus);
			}
			
			int searchListCount = hpService.getSearchListCount(sc);
			
			pi = Pagination.getPageInfo(currentPage, searchListCount);
			
			list = hpService.selectSearchList(pi,sc);
			
		}
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("pi", pi);
			mv.addObject("condition", condition);
			mv.addObject("value", value);
			
			mv.setViewName("admin/hospital/hospitalManage");
		}else {
			System.out.println("병원 목록 조회 실패!");
		}
		return mv;

	}

}
