package com.kh.landocProject.hospital.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.hospital.model.service.MainHpService;
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
	public ModelAndView editHp(HttpSession session, ModelAndView mv, MainHp hp, MainHp hpBasic) {
		DrClient loginDrClient = (DrClient)session.getAttribute("loginDrClient");
		
		int hpNo = loginDrClient.getHpNo();
		int hpCateCode = loginDrClient.getHpCateCode();
		
		
		hp.setHpNo(hpNo);
		hp.setHpCateCode(hpCateCode);
		
//		System.out.println("controller에서 hpNo : " + hpNo);
//		System.out.println("controller에서 hpCateCode : " + hpCateCode);
		
		// 1. 병원 기본정보 + 진료과목 + 설명 추출
		hpBasic = mainHpService.selectOneHp(hp);
//		System.out.println("controller에서 selectOneHp : " + hpBasic);
		
		// 2. 병원 사진 추출
		ArrayList<MainHp> hpPhoto = mainHpService.selectHpPhoto(hp);
//		System.out.println("controller에서 hpPhoto : " + hpPhoto);
		
		
		// 3. 병원 영업 시간 추출 
		ArrayList<MainHp> hpTime = mainHpService.selectHpTime(hp);
//		System.out.println("controller에서 hpTime : " + hpTime);
		
		
		if(hpBasic != null && hpTime != null && hpPhoto != null) {
			mv.addObject("hpBasic", hpBasic);
			mv.addObject("hpPhoto", hpPhoto);
			mv.addObject("hpTime", hpTime);
			mv.setViewName("hospital/modifyHospital");

		}else {
			System.out.println("병원 정보 불러오기 실패!");
		}
		
		return mv;
	}
	
	
	// 병원 기본 정보 수정
	@RequestMapping(value="basicInfoHpEdit.do", method=RequestMethod.POST)
	public String basicInfoHpEdit(MainHp mainHp, HttpServletRequest request,
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
		if(address2 != null) {
			hpAddress = address1 + "," + address2;
		}else {
			hpAddress = address1;
		}
		
		mainHp.setHpAddress(hpAddress);
		
		int beBasicInfo = mainHpService.insertBeforeBasicInfo(mainHp);
//		System.out.println("controller에서 beBasicInfo : " + beBasicInfo);
		
		
		// 2. 인증 사진 자료 업데이트 -> 수정 승인 전 테이블에 insert 
		String renameEmpFileName = saveFile(empPic);
	
		String renameIdFileName = saveFile(idPic);
	
		String renameDrFileName = saveFile(drPic);
		
		if(renameEmpFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(empPic.getOriginalFilename());
			mainHp.setRenameFileName(renameEmpFileName);
			int beEmpResult = mainHpService.insertBeEmpPic(mainHp);
//			System.out.println("controller에서 beEmpResult : " + beEmpResult);
		}
		
		if(renameIdFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(idPic.getOriginalFilename());
			mainHp.setRenameFileName(renameIdFileName);
			int beIdResult = mainHpService.insertBeIdPic(mainHp);
//			System.out.println("controller에서 beIdResult : " + beIdResult);
		}
		
		if(renameDrFileName != null) {
			mainHp.setHpNo(hpNo);
			mainHp.setOriginFileName(drPic.getOriginalFilename());
			mainHp.setRenameFileName(renameDrFileName);
			int beDrResult = mainHpService.insertBeDrPic(mainHp);
//			System.out.println("controller에서 beDrResult : " + beDrResult);
		}
		
		
		// 3. 병원 테이블 수정 승인 상태 -> 'N'으로 UPDATE
		int hpApproval = mainHpService.updateApproval(hpNo);
//		System.out.println("controller에서 hpApproval : " + hpApproval);
		
		
		
		
		//-------------------------------------------------------------------------------
		
		// 기존 등록 된 사진들을 지워주기 위해 각 사진들의 rename을 DB에서 가지고 오기
		ArrayList<MainHp> renameList = mainHpService.selectRenameList(hpNo);
//		System.out.println("controller에서 renameList : " + renameList);
		
		// 기존 등록 된 사진들 삭제
		if(renameList.size() != 0) {
			for(MainHp hp:renameList) {
				String hpRename = hp.getRenameFileName();
//			System.out.println(hp.getRenameFileName());
				deleteFile(hpRename);
			}
		}
		
		

		
		
		
		return null;
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
	
	
	
	
	
}
