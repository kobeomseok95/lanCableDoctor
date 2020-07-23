package com.kh.landocProject.admin.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.hospital.model.service.HospitalService;

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
	public ModelAndView hpList(ModelAndView mv, @RequestParam(value="page", required=false) Integer page) {
		
		int currentPage = 1;
		
		if(page != null) {
			currentPage = page;
		}
		
		int listCount = hpService.getListCount();
		
		
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
}
