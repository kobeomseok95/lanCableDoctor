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
	public ModelAndView editHp(HttpSession session, ModelAndView mv, MainHp hp, MainHp hp2) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		
		int hpNo = loginDrClient.getHpNo();
		int hpCateCode = loginDrClient.getHpCateCode();
		
		hp.setHpNo(hpNo);
		hp.setHpCateCode(hpCateCode);
		
		hp2 = mainHpService.selectOneHp(hp);
		
		
		
		
		
		
		return null;
	}
	
	
	@RequestMapping("preEditHp.do")
	public String preEditHp(){
		
		return "hospital/modifyHospital";
	}
	
	
	
	
	
	
}
