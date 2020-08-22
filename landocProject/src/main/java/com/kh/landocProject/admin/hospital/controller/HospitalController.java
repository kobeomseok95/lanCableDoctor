package com.kh.landocProject.admin.hospital.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.admin.hospital.model.service.HospitalService;
import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.common.Pagination;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.hospital.model.vo.SubmitImgs;

@Controller
public class HospitalController {

	@Autowired
	HospitalService hpService;
	@Autowired
	private JavaMailSender mailSender;
	
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
						@RequestParam(value="searchValue", required=false) String value,
						@RequestParam(value="approvalMsg", required=false) String approvalMsg,
						@RequestParam(value="deniedMsg", required=false) String deniedMsg) {

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
			mv.addObject("approvalMsg", approvalMsg);
			mv.addObject("deniedMsg", deniedMsg);
			
			mv.setViewName("admin/hospital/hospitalManage");
		}else {
			System.out.println("병원 목록 조회 실패!");
		}
		return mv;

	}
	
	
	// 병원 상세보기
	@RequestMapping("hpDetail.do")
	public ModelAndView hpDetail(ModelAndView mv, MainHp hp, 
							@RequestParam("hpNo") Integer hpNo) {
		
		
		// 병원 기본 정보
		hp = hpService.selectHpDetail(hpNo);
		
		// 병원 영업시간
		ArrayList<HpTime> hpTimeList = hpService.selectHpDetailTime(hpNo);
		
		// 병원 사진
		ArrayList<MainHp> hpPhotoList = hpService.selectHpDetailPhoto(hpNo);
		
		if(hp != null && hpTimeList != null && hpPhotoList != null) {
			mv.addObject("hp", hp);
			mv.addObject("hpTimeList", hpTimeList);
			mv.addObject("hpPhotoList", hpPhotoList);
			mv.setViewName("admin/hospital/hospitalDetail");
			
		}else {
			System.out.println("병원 상세보기 실패!");
			mv.addObject("hp", hp);
			mv.addObject("hpTimeList", hpTimeList);
			mv.addObject("hpPhotoList", hpPhotoList);
			mv.setViewName("admin/hospital/hospitalDetail");
		}
		
		return mv;
	}
	
	
	// 병원 기본 정보 수정 승인 페이지
	@RequestMapping("hpApproval.do")
	public ModelAndView hpApproval(ModelAndView mv, MainHp hp, MainHp hp1, MainHp hp2, MainHp hp3,
							@RequestParam("hpNo") Integer hpNo) {
		
		hp = hpService.selectNonAppHp(hpNo);
		
		ArrayList<MainHp> photoList = hpService.selectNonAppPic(hpNo);
		
		hp1 = photoList.get(0);
		hp2 = photoList.get(1);
		hp3 = photoList.get(2);
		
		
		if(hp != null && photoList != null) {
			mv.addObject("hp", hp);
			mv.addObject("hp1", hp1);
			mv.addObject("hp2", hp2);
			mv.addObject("hp3", hp3);
			mv.setViewName("admin/hospital/hospitalApproval");
			
		}else {
			mv.addObject("hp", hp);
			mv.addObject("hp1", hp1);
			mv.addObject("hp2", hp2);
			mv.addObject("hp3", hp3);
			mv.setViewName("admin/hospital/hospitalApproval");
			System.out.println("병원 기본 정보 승인 페이지 실패!");
		}
		
		return mv;
	}
	
	
	// 기본정보 승인 허가
	@RequestMapping("basicInfoApproved.do")
	public String basicInfoApproved(RedirectAttributes request, MainHp hp, MainHp hp1, MainHp hp2, MainHp hp3,
							@RequestParam("hpNo") Integer hpNo,
							@RequestParam("hpName") String hpName,
							@RequestParam("hpPostCode") String hpPostCode,
							@RequestParam("hpAddress") String hpAddress,
							@RequestParam("hpPhone") String hpPhone,
							@RequestParam("renameFileName1") String renameFileName1,
							@RequestParam("originalFileName1") String originalFileName1,
							@RequestParam("renameFileName2") String renameFileName2,
							@RequestParam("originalFileName2") String originalFileName2,
							@RequestParam("renameFileName3") String renameFileName3,
							@RequestParam("originalFileName3") String originalFileName3) {
		
		
		hp.setHpNo(hpNo);
		hp.setHpName(hpName);
		hp.setHpPostCode(hpPostCode);
		hp.setHpAddress(hpAddress);
		hp.setHpPhone(hpPhone);
		int basicResult = hpService.updateHp(hp);
		
		
		hp1.setHpNo(hpNo);
		hp1.setOriginFileName(originalFileName1);
		hp1.setRenameFileName(renameFileName1);
		int pic1Result = hpService.updatePic1(hp1);
		
		
		hp2.setHpNo(hpNo);
		hp2.setOriginFileName(originalFileName2);
		hp2.setRenameFileName(renameFileName2);
		int pic2Result = hpService.updatePic2(hp2);
		
		
		hp3.setHpNo(hpNo);
		hp3.setOriginFileName(originalFileName3);
		hp3.setRenameFileName(renameFileName3);
		int pic3Result = hpService.updatePic3(hp3);
		
		
		if(basicResult >0 && pic1Result >0 && pic2Result >0 && pic3Result>0) {
			int deleteResult = hpService.deleteBeforeInfo(hpNo);
			int deletePicResult = hpService.deleteBeforePic(hpNo);	
			
			String approvalMsg = "ok";
			
			if(deleteResult>0 && deletePicResult >0) {
				request.addAttribute("approvalMsg", approvalMsg);
				request.addAttribute("searchCondition", "noneCondition");
				request.addAttribute("searchValue", "noneValue");
				return "redirect:hpList.do";
				
			}else {
				System.out.println("사진 삭제 실패!");
			}
			
			
		}else {
			System.out.println("업데이트 실패!");
		}
		
		return "redirect:hpList.do";
	}
	
	
	// 병원 기본 정보 미승인
	@RequestMapping("denied.do")
	public String denied(RedirectAttributes request, 
					@RequestParam("hpNo") Integer hpNo) {

		int result = hpService.updateDenied(hpNo);
		
		// 승인 전 테이블(BEFORE_HPINFO, BEFORE_HPPIC)에 담아있는 정보 지우기
		int deleteResult = hpService.deleteBeforeInfo(hpNo);
		int deletePicResult = hpService.deleteBeforePic(hpNo);	
		
		if(result>0 && deleteResult >0 && deletePicResult >0) {
			String deniedMsg = "denied";
			request.addAttribute("deniedMsg", deniedMsg);
			request.addAttribute("searchCondition", "noneCondition");
			request.addAttribute("searchValue", "noneValue");
			return "redirect:hpList.do";
			
		}else {
			System.out.println("미승인 처리 성공!");
		}
		
		return "redirect:hpList.do";
	}
	
	@RequestMapping(value="hospitalSubmitManage.do", method=RequestMethod.GET)
	public ModelAndView hospitalSubmitManage(ModelAndView mv,
																	@RequestParam int pageNo) {
		int listCount = hpService.getNonApprovalHospitalCounts();
		PageInfo pi = Pagination.getPageInfo(pageNo, listCount);
		List<Hospital> hospitals = hpService.getNonApprovalHospitals(pi);
		
		mv.addObject("hospitals", hospitals);
		mv.addObject("page", pi);
		mv.setViewName("admin/hospital/hospitalNonApprovalManage");
		return mv;
	}
	
	@RequestMapping(value="hospitalSubmitDetail.do", method=RequestMethod.GET)
	public ModelAndView hospitalSubmitDetail(ModelAndView mv,
																@RequestParam int hpNo) {
		Hospital h = hpService.getNonApprovalHospitalDetail(hpNo);
		mv.addObject("hospital", h);
		for(SubmitImgs s : h.getSubmitImgs()) {
			if(s.getPhotoCode() == 6) {
				mv.addObject("br", s.getPhotoName());
			}
			else if(s.getPhotoCode() == 7) {
				mv.addObject("id", s.getPhotoName());
			}
			else if(s.getPhotoCode() == 8) {
				mv.addObject("dl", s.getPhotoName());
			}
		}
		mv.setViewName("admin/hospital/hospitalNonApprovalDetail");
		return mv;
	}
	
	@RequestMapping(value="approveHospital.do", method=RequestMethod.POST)
	public String approveHospital(@RequestParam int hpNo,
												@RequestParam String aEmail,
												RedirectAttributes ra) {
		int approveHp = hpService.approveHospital(hpNo);
		if(approveHp > 0) {
			sendMail(true, aEmail);
		}
		else {
			return "";
		}
		ra.addAttribute("pageNo", 1);
		return "redirect:hospitalSubmitManage.do";
	}

	@RequestMapping(value="rejectHospital.do", method=RequestMethod.POST)
	public String rejectHospital(@RequestParam int hpNo,
											@RequestParam String aEmail,
											@RequestParam String br,
											@RequestParam String id,
											@RequestParam String dl,
											RedirectAttributes ra) {
		boolean deleteComplete = false;
		int rejectHp = hpService.rejectHospital(hpNo);
		sendMail(false, aEmail);
		String[] fileNames = {br, id, dl};
		deleteComplete = deleteImgs(fileNames);
		
		if(deleteComplete) {
			ra.addAttribute("pageNo", 1);
			return "redirect:hospitalSubmitManage.do";
		}
		else {
			return "";
		}
	}
	
	private void sendMail(boolean flag, String aEmail) {
		String setfrom = "rornfl258@naver.com"; // 보내는 사람
		String tomail = aEmail;
		String title = "[랜닥] 회원님의 병원등록이 승인되었습니다."; // 제목
		String content = "";
		if(flag) {
			content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성
					
					System.getProperty("line.separator") +
					
					"회원님의 병원등록이 승인되었습니다."
					
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"해당 병원으로 의사 회원가입을 하시면 저희 서비스를 이용하실 수 있습니다.";			
		}
		else {
			content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성
					
					System.getProperty("line.separator") +
					
					"회원님의 병원등록이 거절되었습니다."
					
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"********** 대표적인 거절 사유 **********"
				
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"1. 제출하신 첨부 사진이 선명하지 않습니다."
				
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"2. 신청하신 병원이 개업중이지 않거나, 정보가 명확하지 않습니다."
				
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"3. 해당 병원 관계자가 저희 서비스를 거부하셨을 경우입니다."
				
				+ System.getProperty("line.separator") +
				
				System.getProperty("line.separator") +
				
				"해당 사유들을 다시 한번 확인해주세요. 불편을 끼쳐드려 죄송합니다.";
		}

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private boolean deleteImgs(String[] fileNames) {
		
		for(int i = 0; i < fileNames.length; i++) {
			String path = "C:\\lanCableDoctorProject\\files\\" + fileNames[i];
			
			File file = new File(path);
			if( file.exists() ) {
				file.delete();
			}
			else {
				return false;
			}
		}	//end of for
		
		return true;
	}
}















