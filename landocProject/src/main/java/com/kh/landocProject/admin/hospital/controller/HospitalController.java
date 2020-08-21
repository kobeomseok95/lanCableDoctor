package com.kh.landocProject.admin.hospital.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
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
//		System.out.println("여기로 옴!");
		
		int result = hpService.updateDenied(hpNo);
		
		if(result>0) {
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
	

}
