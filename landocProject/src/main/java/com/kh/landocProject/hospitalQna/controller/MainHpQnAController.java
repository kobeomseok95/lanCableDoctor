package com.kh.landocProject.hospitalQna.controller;

import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePagination;
import com.kh.landocProject.hospitalQna.model.service.MainHpQnAService;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

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
	
	
	// 병원 qna
	@RequestMapping("drHpQna.do")
	public ModelAndView drHpQna(HttpSession session, ModelAndView mv, HashMap<String,Object> map,
								@RequestParam(value="page",required=false) Integer currentPage,
								@RequestParam(value="updateMsg", required=false) String updateMsg) {
	
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		int hpNo = loginDrClient.getHpNo();
		if(currentPage == null) {
			currentPage = 1;
		}
		
		// 답변 완료된 QNA
		int listCount = hpQnaService.getHpQnaListCount(hpNo);
		CMypagePageInfo pi = CMypagePagination.getPageInfo(currentPage,listCount);
		ArrayList<MainHpQnA> answeredList = hpQnaService.getHpQnaList(hpNo,pi);
		
		ArrayList<MainHpQnA> notAnsweredList = hpQnaService.getNotYetList(hpNo);
		
		mv.addObject("answeredList", answeredList);
		mv.addObject("pi", pi);
		mv.addObject("notAnsweredList", notAnsweredList);
		mv.addObject("updateMsg", updateMsg);
		mv.setViewName("mypage/dMypageHpQna");
		
		return mv;
	}
	
	@RequestMapping("updateHpQnaReply.do")
	public String updateHpQnaReply(HttpSession session, HashMap<String, Object> map, RedirectAttributes redirectAttributes,
								@RequestParam("hpQnANo") Integer hpQnANo,
								@RequestParam("hpQnaReply") String hpQnaReply) {
		
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		String drNo = loginDrClient.getDrNo();
		
		map.put("drNo", drNo);
		map.put("hpQnANo", hpQnANo);
		map.put("hpQnaReply", hpQnaReply);
		
		int result = hpQnaService.updateHpQnaReply(map);
		
		if(result>0) {
			String updateMsg = "ok";
			redirectAttributes.addAttribute("updateMsg", updateMsg);
			return "redirect:drHpQna.do";
		}else {
			System.out.println("병원 qna 답변 등록 실패");
			return "home";
		}
	}
	
	
	
}
