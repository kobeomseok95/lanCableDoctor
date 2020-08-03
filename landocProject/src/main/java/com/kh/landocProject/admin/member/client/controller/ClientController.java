package com.kh.landocProject.admin.member.client.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.admin.member.client.model.service.ClientService;
import com.kh.landocProject.admin.member.client.model.vo.ClientPage;
import com.kh.landocProject.admin.member.client.model.vo.MemberPageInfo;
import com.kh.landocProject.admin.member.client.model.vo.MemberSearchCondition;
import com.kh.landocProject.common.Pagination;

@Controller
public class ClientController {
	
	@Autowired
	ClientService cService;
	
//	@RequestMapping("clientManage.do")
//	public String loginView() {
//		return "admin/member/client/clientManage";
//	}

//	@RequestMapping("clientDetail.do")
//	public String clientDetail() {
//		return "admin/member/client/clientDetail";
//	}
	
	@RequestMapping(value="clientList.do")
	public ModelAndView clientList(ModelAndView mv, HttpServletRequest request,
								@RequestParam(value="page", required=false) Integer page,
								@RequestParam(value="searchCondition", required=false) String condition,
								@RequestParam(value="searchValue", required=false) String value,
								@RequestParam(value="msg", required=false) String msg) {
		
		try {
			int currentPage = 1;
			if(page != null) {
				currentPage = page;
			}
			
//			System.out.println("controller에서 currentPage : " + currentPage);
//			System.out.println("controller에서 condition : " + condition);
//			System.out.println("controller에서 value : " + value);
			
			MemberSearchCondition msc = new MemberSearchCondition();
			
			ArrayList<ClientPage> list = null;
			
			MemberPageInfo pi = null;
			
			// 전체 리스트를 불러올때
			if(condition.equals("noneCondition") && !condition.equals("")) {
				msc.setNone(value);
				
				int listCount = cService.getListCount();
				
				pi = Pagination.getMemberPageInfo(currentPage, listCount);
				
				list = cService.selectAllList(pi);
				
			}else {
				if(condition.equals("cNo") && !condition.equals("")) {
					msc.setcNo(value);
				}else if(condition.equals("userName") && !condition.equals("")) {
					msc.setUserName(value);
				}else if(condition.equals("nickName") && !condition.equals("")) {
					msc.setNickName(value);
				}
				
				int searchListCount = cService.getSearchListCont(msc);
				System.out.println("searchListCount : " + searchListCount );
				
				pi = Pagination.getMemberPageInfo(currentPage, searchListCount);
				
				list = cService.selectList(pi,msc);
			}
			
			if(list != null) {
				mv.addObject("list", list);
				mv.addObject("pi", pi);
				mv.addObject("condition", condition);
				mv.addObject("value", value);
				mv.addObject("msg", msg);
				mv.setViewName("admin/member/client/clientManage");
			}else {
				System.out.println("일반회원 조회 실패!");
			}
			return mv;
			
		}catch(NumberFormatException e) {
			e.printStackTrace();
		}

		return mv;
	}
	
	// 디테일
	@RequestMapping(value="clientDetailView.do")
	public ModelAndView clientDetail(ModelAndView mv, ClientPage cPage,
							@RequestParam("cNo") String cNo,
							@RequestParam(value="msg", required=false) String msg) {
		
		cPage = cService.selectClientDetail(cNo);
		
		if(cPage != null) {
			mv.addObject("cPage", cPage);
			mv.addObject("msg", msg);
			mv.setViewName("admin/member/client/clientDetail");
		}else {
			System.out.println("세부내용 조회 실패");
		}
		return mv;
		
	}
	
	@RequestMapping("modifyClient.do")
	public String modifyClient(ClientPage cPage, Integer point, RedirectAttributes redirectAttributes,
								@RequestParam("cNo") String cNo) {
		
		String msg = "";
		System.out.println(cPage);
		int result = cService.modifyClient(cPage);
		
		if(result > 0) {
			msg = "회원 수정에 성공하셨습니다.";
			redirectAttributes.addAttribute("searchCondition", "noneCondition");
			redirectAttributes.addAttribute("searchValue", "noneValue");
			redirectAttributes.addAttribute("msg",msg);
			
//			return "redirect:clientDetailView.do?cNo=" + cPage.getcNo();
			return "redirect:clientList.do";
		}else {
			 msg="회원 수정에 실패했습니다.";
		   redirectAttributes.addAttribute("msg",msg);
		   redirectAttributes.addAttribute("cNo",cNo);
			return "redirect:clientDetailView.do";
		}

	}
	
}
