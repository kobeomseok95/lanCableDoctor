package com.kh.landocProject.admin.member.drClient.controller;

import java.util.ArrayList;
import java.util.Random;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.member.drClient.model.service.DrClientService;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;
import com.kh.landocProject.common.Pagination;
import com.kh.landocProject.member.controller.MainMemberController;

@Controller
public class DrClientController {

	@Autowired
	DrClientService dService;
	
	@Autowired
	private JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MainMemberController.class);
	private static final String String = null;
	
	@RequestMapping(value="drClientList.do")
	public ModelAndView drClient(ModelAndView mv, HttpServletRequest request,
								@RequestParam(value="page", required=false) Integer page,
								@RequestParam(value="searchCondition", required=false) String condition,
								@RequestParam(value="searchValue", required=false) String value,
								@RequestParam(value="msg", required=false) String msg) {
		System.out.println("adminDrClientController.java test line 44");
		
		try {
			int currentPage = 1;
			if(page != null) {
				currentPage = page;
			}
			
//			System.out.println("controller에서 currentPage : " + currentPage);
//			System.out.println("controller에서 condition : " + condition);
//			System.out.println("controller에서 value : " + value);
			
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
					String drNo =  value.toUpperCase().trim().replaceAll("\\p{Z}", "");
					dsc.setDrNo(drNo);
				}else if(condition.equals("userName") && !condition.equals("")) {
					String userName =  value.trim().replaceAll("\\p{Z}", "");
					dsc.setUserName(userName);
				}
				
				int searchListCount = dService.getSearchListCount(dsc);
//				System.out.println("searchListCount : " + searchListCount);
				
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
	
	// 디테일
	@RequestMapping(value="drClientDetailView.do")
	public ModelAndView drClientDetail(ModelAndView mv, DrClientPage drPage,
								@RequestParam("drNo") String drNo,
								@RequestParam(value="msg", required=false) String msg) {
		System.out.println("adminClientController.java test line 111");
		
//		System.out.println("drNo:" + drNo);
		ArrayList<DrClientPage> list = null;
		list = dService.selectDrClientDetail(drNo);
//		System.out.println(msg);
	
//		System.out.println(list);
		drPage = dService.selectDrClientDetail1(drNo);
//		System.out.println(drPage);
		
		if(list != null) {
			mv.addObject("drPage", drPage);
			mv.addObject("list", list);
			mv.addObject("msg", msg);
			mv.setViewName("admin/member/drClient/drClientDetail");
		}
		return mv;
	}
	
	@RequestMapping(value="drClientApproval1.do")
	public String drClientApproval1(String drNo,String email, String approval, RedirectAttributes redirectAttributes) {
		System.out.println("adminClientController.java test line 133");
		
//		System.out.println("drNo:" + drNo);
//		System.out.println("email:" + email);
//		System.out.println("approval:" + approval);
		
		String msg="";
		if(approval.equals("N") || approval.equals("X")) {
			int result = dService.drClientApproval1(drNo);
			if(result > 0) {

				String setfrom = "rornfl258@naver.com"; // 보내는 사람
				String tomail = email; // 받는 사람 이메일
				String title = "읍남매들 회원 승인 메일입니다."; // 제목
				String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

						System.getProperty("line.separator") +

						"회원의 정보가 승인되었습니다."

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						" 로그인 및 회원관련 활동을 하실 수 있습니다.  "

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						"많은 활동 부탁드립니다!! "
						
						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +
						
						"감사합니다. " ;// 내용
				

				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

					messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
					messageHelper.setTo(tomail); // 받는사람 이메일
					messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
					messageHelper.setText(content); // 메일 내용

					mailSender.send(message);
				} catch (Exception e) {
					System.out.println(e);
				}
				
				msg = "승인 되었습니다.";
				redirectAttributes.addAttribute("searchCondition", "noneCondition");
				redirectAttributes.addAttribute("searchValue", "noneValue");
				redirectAttributes.addAttribute("msg",msg);
			}
		}
		return "redirect:drClientList.do";
	
	}
	
	@RequestMapping(value="drClientApproval2.do")
	public String drClientApproval2(String drNo, String email, RedirectAttributes redirectAttributes, String approval) {
		System.out.println("adminClientController.java test line 198");
		
//		System.out.println(email);
//		System.out.println(approval);
		String msg="";
		if(approval.equals("N")) {

			int result = dService.drClientApproval2(drNo);
			
			if(result > 0) {

				String setfrom = "rornfl258@naver.com"; // 보내는 사람
				String tomail = email; // 받는 사람 이메일
				String title = "읍남매들 회원 미승인 메일입니다."; // 제목
				String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성

						System.getProperty("line.separator") +

						"회원의 정보가 승인이 되지 않았습니다."

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						" 제출한 파일의 사진이 잘 보이지 않거나 확인되지 않은 정보로 승인되지 않았습니다. "

						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +

						"로그인 후 계정 설정에 들어가 병원 수정을 해주십시오. "
						
						+ System.getProperty("line.separator") +

						System.getProperty("line.separator") +
						
						"감사합니다. " ;// 내용
				

				try {
					MimeMessage message = mailSender.createMimeMessage();
					MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

					messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
					messageHelper.setTo(tomail); // 받는사람 이메일
					messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
					messageHelper.setText(content); // 메일 내용

					mailSender.send(message);
				} catch (Exception e) {
					System.out.println(e);
				}
				
				msg = "미승인 처리 되었습니다.";
				redirectAttributes.addAttribute("searchCondition", "noneCondition");
				redirectAttributes.addAttribute("searchValue", "noneValue");
				redirectAttributes.addAttribute("msg",msg);
			}
		}
		return "redirect:drClientList.do";
	}
}
