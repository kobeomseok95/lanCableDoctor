package com.kh.landocProject.hospital.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
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
import com.kh.landocProject.hospital.model.vo.Applicant;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.member.model.vo.DrClient;

@Controller
public class MainHpController {

	@Autowired
	MainHpService mainHpService;
	@Autowired
	private JavaMailSender mailSender;
	
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
		
		String originFileName = file.getOriginalFilename();
		String renameFileName = System.currentTimeMillis() + originFileName;
		
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
		
		List<HpTime> hpTimeList = ht.getHpTimeList();
		int result = 0;
	
		if(hpTimeList.size() != 0) {
			for(HpTime ht2 : hpTimeList) {
				result = mainHpService.updateHptime(ht2);
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
	
	@RequestMapping(value="insertHpView.do", method=RequestMethod.GET)
	public String insertHpView() {
		return "hospital/insertHpView";
	}
	
	@RequestMapping(value="emailConfirmHp.do", method=RequestMethod.POST)
	public ModelAndView emailConfirmHp(ModelAndView mv,
											@RequestParam String address2,
											Hospital h,
											Applicant a) {
		h.setAddress(h.getAddress() + " " + address2);
		
		int insertHospital = mainHpService.insertHospital(h);
		
		List<Integer> list = Arrays.stream(h.getCategoryCode()).boxed().collect(Collectors.toList());
		int insertHpList = mainHpService.insertHpList(list);
		int insertApplicant = mainHpService.insertApplicant(a);
		
		boolean selectSequenceNo = getSequenceNo(h, a);
		
		if( insertHospital > 0 && insertApplicant > 0 && insertHpList > 0 && selectSequenceNo) {
			// 난수 생성
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for (int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
				switch (rIndex) {
				case 0:
					temp.append((char) ((int) (rnd.nextInt(26)) + 97));
					break;
				case 1:
					temp.append((char) ((int) (rnd.nextInt(26)) + 65));
					break;
				case 2:
					temp.append((rnd.nextInt(10)));
					break;
				}
			}
			String dice = temp.toString();
			String setfrom = "rornfl258@naver.com"; // 보내는 사람
			String tomail = a.getApplicantEmail(); // 받는 사람 이메일
			String title = "읍남매들 회원 인증 이메일 입니다."; // 제목
			String content = System.getProperty("line.separator") + // 한줄씩 줄간격을 두기위해 작성
	
					System.getProperty("line.separator") +
	
					"회원가입 인증 메일입니다."
	
					+ System.getProperty("line.separator") +
	
					System.getProperty("line.separator") +
	
					" 인증번호는 " + dice + " 입니다. "
	
					+ System.getProperty("line.separator") +
	
					System.getProperty("line.separator") +
	
					"받으신 인증번호를 홈페이지에 입력해 주시면 됩니다."; // 내용
	
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

			mv.addObject("hpNo", h.getHpNo());
			mv.addObject("aNo", a.getaNo());
			mv.addObject("dice", dice);
			mv.setViewName("hospital/insertHpView2");
			return mv;
		}
		else {
			return null;
		}
	}
	
	private boolean getSequenceNo(Hospital h, Applicant a) {
		int hospitalSeq = mainHpService.getHospitalSeq(h);
		int applicantSeq = mainHpService.getApplicantSeq(a);
		
		if(hospitalSeq != 0 && applicantSeq != 0) {
			h.setHpNo(hospitalSeq);
			a.setaNo(applicantSeq);
			return true;
		}
		else {
			return false;
		}
	}

	@RequestMapping(value="cancelHospital.do", method=RequestMethod.POST)
	public String cancelHospital(@RequestParam int hpNo,
											@RequestParam int aNo) {
		int deleteApplicant = mainHpService.deleteApplicant(aNo);
		int deleteHpList = mainHpService.deleteHpList(hpNo);
		int deleteHospital = mainHpService.deleteHospital(hpNo);
		
		if(deleteHospital > 0 && deleteApplicant > 0 && deleteHpList > 0) {
			return "redirect:home.do";
		}
		else {
			return "";
		}
	}
	
	@RequestMapping(value="insertHpMaterialView.do", method=RequestMethod.POST)
	public ModelAndView insertHpMaterial(ModelAndView mv,
															@RequestParam int hpNo,
															@RequestParam int aNo) {
		
		mv.addObject("hpNo", hpNo);
		mv.addObject("aNo", aNo);
		mv.setViewName("hospital/insertHpView3");
		return mv;
	}
	
	@RequestMapping(value="insertCompleteView.do", method=RequestMethod.POST)
	public String insertCompleteView(Hospital h) {
		h.setBrFileName(saveFile(h.getBusinessRegistration()));
		h.setIdFileName(saveFile(h.getIdentifyDocument()));
		h.setDlFileName(saveFile(h.getDrLicense()));

		int result = mainHpService.insertHospitalFiles(h);
		
		if(result > 0) {
			return "hospital/insertHpView4";
		}
		else {
			return "";
		}
	}
}



















