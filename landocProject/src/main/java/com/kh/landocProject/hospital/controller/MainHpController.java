package com.kh.landocProject.hospital.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kh.landocProject.hospital.Exception.MainHpException;
import com.kh.landocProject.hospital.model.service.MainHpService;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class MainHpController {

	@Autowired
	MainHpService mainHpService;
	
	// 사진 저장 폴더 경로
	private final String filePath =  "C:\\lanCableDoctorProject\\files\\";
	
	// 화면 구현 테스트 용
	@RequestMapping("preEditHp.do")
	public String preEditHp(){
		
		return "hospital/modifyHospital";
	}
	
	
	
	// 병원 수정 페이지(데이터 불러오기)
	@RequestMapping("editHp.do")
	public ModelAndView editHp(HttpSession session, ModelAndView mv, MainHp hp, MainHp hpBasic,
								@RequestParam(value="msg", required=false) String msg,
								@RequestParam(value="basicHpInfoMsg", required=false) String basicHpInfoMsg,
								@RequestParam(value="hpTimeMsg", required=false) String hpTimeMsg,
								@RequestParam(value="hpCommentMsg", required=false) String hpCommentMsg) {
		
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		
		int hpNo = loginDrClient.getHpNo();
		int hpCateCode = loginDrClient.getHpCateCode();
		
		
		hp.setHpNo(hpNo);
		hp.setHpCateCode(hpCateCode);
		
		// 1. 병원 기본정보 + 진료과목 + 설명 추출
		hpBasic = mainHpService.selectOneHp(hp);
		
		// 2. 병원 사진 추출
		ArrayList<MainHp> hpPhoto = mainHpService.selectHpPhoto(hp);
		
		// 3. 병원 영업 시간 추출 
		ArrayList<MainHp> hpTime = mainHpService.selectHpTime(hp);
		
		if(hpBasic != null && hpTime != null && hpPhoto != null) {
			mv.addObject("hpBasic", hpBasic);
			mv.addObject("hpPhoto", hpPhoto);
			mv.addObject("hpTime", hpTime);
			mv.addObject("msg", msg);
			mv.addObject("basicHpInfoMsg", basicHpInfoMsg);
			mv.addObject("hpTimeMsg", hpTimeMsg);
			mv.addObject("hpCommentMsg", hpCommentMsg);
			mv.setViewName("hospital/modifyHospital");

		}else {
			System.out.println("병원 정보 불러오기 실패!");
		}
		
		return mv;
	}
	
	

	// 병원 기본 정보 수정
	@RequestMapping(value="basicInfoHpEdit.do", method=RequestMethod.POST)
	public String basicInfoHpEdit(MainHp mainHp, HttpServletRequest request, 
								RedirectAttributes redirectAttributes,
								@RequestParam("hpNo") Integer hpNo,
								@RequestParam("empPic") MultipartFile empPic,
								@RequestParam("idPic") MultipartFile idPic,
								@RequestParam("drPic") MultipartFile drPic,
								@RequestParam("hospital_name") String hpName,
								@RequestParam("hospital_phone") String hpPhone,
								@RequestParam("postCode") String hpPostCode,
								@RequestParam("address1") String address1,
								@RequestParam(value="address2", required=false) String address2) {
		
		
		// 1. 기본 정보 업데이트 -> 수정 승인 전 테이블에 insert
		mainHp.setHpNo(hpNo);
		mainHp.setHpName(hpName);
		mainHp.setHpPhone(hpPhone);
		mainHp.setHpPostCode(hpPostCode);
		
		String hpAddress = ""; 
		if(address2 == "") {
			hpAddress = address1 + "," + address2;
		}else {
			hpAddress = address1;
		}
		
		mainHp.setHpAddress(hpAddress);
		
		int beBasicInfo = mainHpService.insertBeforeBasicInfo(mainHp);
		
		
		// 2. 인증 사진 자료 업데이트 -> 수정 승인 전 테이블에 insert 
		String renameEmpFileName = saveFile(empPic);
	
		String renameIdFileName = saveFile(idPic);
	
		String renameDrFileName = saveFile(drPic);
		
		int beEmpResult = 0;
		int beIdResult = 0;
		int beDrResult = 0;
		
		if(renameEmpFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(empPic.getOriginalFilename());
			mainHp.setRenameFileName(renameEmpFileName);
			beEmpResult = mainHpService.insertBeEmpPic(mainHp);
		}
		
		if(renameIdFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(idPic.getOriginalFilename());
			mainHp.setRenameFileName(renameIdFileName);
			beIdResult = mainHpService.insertBeIdPic(mainHp);
		}
		
		if(renameDrFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(drPic.getOriginalFilename());
			mainHp.setRenameFileName(renameDrFileName);
			beDrResult = mainHpService.insertBeDrPic(mainHp);
		}
		
		
		// 3. 병원 테이블 수정 승인 상태 -> 'N'으로 UPDATE
		int hpApproval = mainHpService.updateApproval(hpNo);
		
		
		
		if(beBasicInfo >0 && beEmpResult>0 && beIdResult>0 && beDrResult>0 && hpApproval>0) {
			String basicHpInfoMsg ="ok";
			redirectAttributes.addAttribute("basicHpInfoMsg", basicHpInfoMsg);
			return "redirect:editHp.do";
			
		}
		
		
		//-------------------------------------------------------------------------------
		
//		// 기존 등록 된 사진들을 지워주기 위해 각 사진들의 rename을 DB에서 가지고 오기
//		ArrayList<MainHp> renameList = mainHpService.selectRenameList(hpNo);
////		System.out.println("controller에서 renameList : " + renameList);
//		
//		// 기존 등록 된 사진들 삭제
//		if(renameList.size() != 0) {
//			for(MainHp hp:renameList) {
//				String hpRename = hp.getRenameFileName();
////			System.out.println(hp.getRenameFileName());
//				deleteFile(hpRename);
//			}
//		}
			
		return "home";
	}

	   
	@RequestMapping(value="hpSearch.do")
	public ModelAndView hpSearch(ModelAndView mv, HttpSession session,HpSearch hp,@RequestParam(value="area") String area, @RequestParam(value="hpSearch") String hpTitle) throws MainHpException{
		  
	      
	   
	      String[] hpNameSplit = hpTitle.split("");
	      String hpNameLike ="";
	      for(int i =0; i<hpNameSplit.length;i++) {
	    	 
	    	   	if(i==hpNameSplit.length-1) {
	    	   		hpNameLike += "%"+hpNameSplit[i]+"%";
	    	   	}else {
	    	   	    hpNameLike += "%"+hpNameSplit[i];
	    	   	}
	      }
	      hp.setArea(area);
	      hp.setHpName(hpNameLike);
	   
	      ArrayList<HpSearch> hpList = mainHpService.hpSearchListNormal(hp);
	      if(hpList !=null) {
	    	  mv.addObject("hp",hpList);
	    	  mv.addObject("area",area);
	    	  mv.addObject("hpName", hpTitle);
	    	  mv.setViewName("hospital/hpSearch");
	      }else {
	    	  throw new MainHpException("병원검색 실패!");
	      }
	      
	      return mv;
	  }

	
	// 파일 저장 메소드
	public String saveFile(MultipartFile file) {
		
		File folder = new File(filePath);
		
		if(!folder.exists()) {
			folder.mkdirs();
		}
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String originFileName = file.getOriginalFilename();
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "." + originFileName.substring(originFileName.lastIndexOf(".")+1);
		
		String saveFiles = filePath + renameFileName;
		
		 try {
	         file.transferTo(new File(saveFiles));   // 이 때 파일이 저장
	         
	      } catch (IllegalStateException e) {
	         
	         e.printStackTrace();
	      } catch (IOException e) {
	         
	         e.printStackTrace();
	      }
		
		return renameFileName;
		
	}
	
	
	// 파일 삭제 메소드
	public void deleteFile(String fileName) {
		
		File f = new File(filePath + fileName);
		
		if(f.exists()) {
			f.delete();
		}
	}
	

	@RequestMapping(value="hpCate.do")
	public ModelAndView hpCateSearch(ModelAndView mv, HttpSession session,@RequestParam(value="cateName") String cateName) throws MainHpException{
		  ArrayList<HpSearch> hpList = mainHpService.hpCateSearchList(cateName);
	      
	      if(hpList !=null) {
	    	  mv.addObject("hp",hpList);
	    	  mv.addObject("cateName", cateName);
	    	  mv.setViewName("hospital/hpSearch");
	      }else {
	    	  throw new MainHpException("진료과목 검색 실패!");
	      }
	      
	      return mv;
	  }

	
	
	// 병원 사진 UPDATE
	@RequestMapping(value="hpPicEdit.do",  method=RequestMethod.POST)
	public String hpPicEdit(MainHp hp, MultipartHttpServletRequest request,
						RedirectAttributes redirectAttributes,
						HashMap<String, Object> parameterPhoto,
						@SessionAttribute("loginDrClient") DrClient loginDrClient,
						@RequestParam("hpPics") List<MultipartFile> file,
						@RequestParam("hpNo") Integer hpNo) {
		
		String drNo = loginDrClient.getDrNo();
		
		hp.setHpNo(hpNo);
	
		// 기존 병원  소개 사진 추출
		ArrayList<MainHp> hpPhoto = mainHpService.selectHpPhoto(hp);
		
		
		// 기존 등록 된 사진들 서버에서 삭제
		if(hpPhoto.size() != 0) {
			for(MainHp pics: hpPhoto) {
				String hpRename = pics.getRenameFileName();
				deleteFile(hpRename);
			}
		}
		
		// 기존 등록 된 사진들 DB에서 삭제
		int deleteResult = mainHpService.deleteOriginPics(hpNo);
		int insertNewPhoto = 0;
		
		if(deleteResult >= 0) {
		
			
//		Iterator<String> files = request.getFileNames();
//		while(files.hasNext()) {
//			String uploadFile = files.next();
//			
//			MultipartFile mFile = request.getFile(uploadFile);
//			System.out.println("controller에서 mFile : " + mFile);
//			
//		}
		
	
//		System.out.println("controller에서 다중 사진 : " + file);

//		List<MultipartFile> fileList = request.getFiles("hpPics");
//		System.out.println("controller에서 fileList : " + fileList);
		
			
			// 새로운 사진 파일을 서버에 저장 및 DB에 경로 저장
			
			for(MultipartFile mf : file) {
				String originalFileName = mf.getOriginalFilename();
				String renameFileName = System.currentTimeMillis() + originalFileName;
				
				String saveFile = filePath + renameFileName;
				
				try {
					mf.transferTo(new File(saveFile));
					
					parameterPhoto.put("hpNo", hpNo);
					parameterPhoto.put("drNo",drNo);
					parameterPhoto.put("renameFileName", renameFileName);
					parameterPhoto.put("originalFileName", originalFileName);
					
					insertNewPhoto = mainHpService.insertNewHpPhoto(parameterPhoto);
					
				} catch (IllegalStateException e) {
					
					e.printStackTrace();
				} catch (IOException e) {
					
					e.printStackTrace();
				}
			}
			
		}
		
		if(insertNewPhoto>0) {
			String msg ="ok";
			redirectAttributes.addAttribute("msg", msg);
			return "redirect:editHp.do";
		}
		System.out.println("병원 사진 수정 실패!");
		return "home";
	}
	
	
	// 병원 영업시간 UPDATE
	@RequestMapping(value="hpTimeEdit.do",  method=RequestMethod.POST)
	public String hpTimeEdit(HpTime ht, RedirectAttributes redirectAttributes, HttpServletRequest request) {
		
//		System.out.println("htList : " + ht.getHpTimeList());
		
		List<HpTime> hpTimeList = ht.getHpTimeList();
		int result = 0;
	
		if(hpTimeList.size() != 0) {
			for(HpTime ht2 : hpTimeList) {
//				System.out.println(ht2);
				result = mainHpService.updateHptime(ht2);
//				System.out.println("controller에서 result : " + result);
			}
		}
		
		if(result > 0) {
			String hpTimeMsg = "ok";
			redirectAttributes.addAttribute("hpTimeMsg", hpTimeMsg);
			return "redirect:editHp.do";
	
		}else {
			System.out.println("병원 영업시간 업데이트 실패!");
			return "home";
		}
	}
	
	
	// 병원 간단 소개 UPDATE
	@RequestMapping(value="introHpEdit.do", method=RequestMethod.POST)
	public String introHpEdit(MainHp hp, RedirectAttributes redirectAttributes,
						@RequestParam("hpNo") Integer hpNo,
						@RequestParam("comment") String comment) {
	
		hp.setHpNo(hpNo);
		hp.setHpComment(comment);
		
		int result = mainHpService.updateComment(hp);
		
		if(result>0) {
			String hpCommentMsg = "ok";
			redirectAttributes.addAttribute("hpCommentMsg", hpCommentMsg);
			return "redirect:editHp.do";
		}else {
			System.out.println("병원 소개 업데이트 실패!");
			return "home";
		}
		
	}
	
	
}
