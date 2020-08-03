package com.kh.landocProject.hospital.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.hospital.model.service.MainHpService;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class MainHpController {

	@Autowired
	MainHpService mainHpService;
	
	// 병원 수정 페이지(데이터 불러오기)
	@RequestMapping("editHp.do")
	public ModelAndView editHp(HttpSession session, ModelAndView mv, MainHp hp, MainHp basicHp) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		
		int hpNo = loginDrClient.getHpNo();
		int hpCateCode = loginDrClient.getHpCateCode();
		
		hp.setHpNo(hpNo);
		hp.setHpCateCode(hpCateCode);
		
//		System.out.println("controller에서 hpNo : " + hpNo);
//		System.out.println("controller에서 hpCateCode : " + hpCateCode);
		
		// 1. 병원 기본정보 + 진료과목 + 설명 추출
		basicHp = mainHpService.selectOneHp(hp);
//		System.out.println("controller에서 selectOneHp : " + hp2);
		
		// 2. 병원 사진 추출
		
		
		
		
		
		// 3. 병원 영업 시간 추출 
		
		
		
		
		
		if(basicHp != null) {
			
			
			
		}
		
		
		
		return null;
	}
	
	
	@RequestMapping("preEditHp.do")
	public String preEditHp(){
		
		return "hospital/modifyHospital";
	}
	
	
	
	
	
	
}
