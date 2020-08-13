package com.kh.landocProject.hospitalQna.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.hospitalQna.model.service.MainHpQnAService;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.member.model.vo.Client;

@Controller
public class MainHpQnAController {

	
	@Autowired
	MainHpQnAService hpQnaService;
	
	
	@RequestMapping("hpQnaDetail.do")
	public ModelAndView hpQnaDetail(ModelAndView mv, MainHpQnA hpQna, 
								@RequestParam("hpNo") Integer hpNo,
								@RequestParam("hpName") String hpName,
								@RequestParam(value="insertMsg", required=false) String insertMsg ) {
		
		int qnaCount = hpQnaService.selectHpQnaCount(hpNo);
		
		ArrayList<MainHpQnA> list = hpQnaService.selectHpQnaList(hpNo);
//		System.out.println("controller에서 list : " + list);
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.addObject("qnaCount", qnaCount);
			mv.addObject("hpName", hpName);
			mv.addObject("hpNo", hpNo);
			mv.addObject("insertMsg", insertMsg);
			mv.setViewName("hospitalQna/hpQnaDetail");
		}else {
			System.out.println("병원 qna 리스트 select 실패!");
		}
		
		return mv;
	}
	
	
	
	@RequestMapping(value="insertHpQna.do", method=RequestMethod.GET)
	public String insertHpQna(MainHpQnA hpQna, HttpSession session, RedirectAttributes redirectAttributes,
						@RequestParam("hpNo") Integer hpNo,
						@RequestParam("hpName") String hpName,
						@RequestParam("comment") String qnaComment) {
		
		Client loginClient = (Client)session.getAttribute("loginClient");
		String cNo = loginClient.getcNo();
		
		
		hpQna.setcNo(cNo);
		hpQna.setHpNo(hpNo);
		hpQna.setQnaTitle(qnaComment);
		
		int result = hpQnaService.insertHpQna(hpQna);
//		System.out.println("controller에서 insertResult : " + result);
		
		if(result>0) {
			String insertMsg = "ok";
			redirectAttributes.addAttribute("insertMsg", insertMsg);
			redirectAttributes.addAttribute("hpNo", hpNo);
			redirectAttributes.addAttribute("hpName", hpName);
			return "redirect:hpQnaDetail.do";
			
		}else {
			System.out.println("병원 qna insert 실패!");
			return "home";
		}
	}
	
	
	
}
