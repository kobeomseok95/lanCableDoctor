package com.kh.landocProject.hospitalReview.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.common.Pagination;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.hospitalReview.model.service.MainHpReviewService;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;
import com.kh.landocProject.member.model.vo.Client;

@Controller
public class MainHpReviewController {

   @Autowired
   MainHpReviewService MainHpReService;
   
   // 사진 저장 폴더
   private final String filePath = "C:\\lanCableDoctorProject\\files\\";
   
   
   // header와의 연결
   @RequestMapping("hpReviewInsert.do")
   public String hpReviewInsert() {
      return "hospitalReview/hpReviewInsert";
      
   }
   
   
   // 병원 검색 모달 창
   @RequestMapping("searchHpName.do")
   public void searchHpName(HttpServletResponse response, @RequestParam(value="hpName") String hpName) throws JsonIOException, IOException {
      
      // 입력받은 문자열 공백 제거
      hpName= hpName.trim().replaceAll("\\p{Z}", "");
      
//      System.out.println("hpName ? " + hpName);
      
      ArrayList<SearchHp> searchHpList = MainHpReService.selectList(hpName);
      
//      System.out.println("controller에서 결과" + searchHpList);
      
      response.setContentType("applicateion/json;charset=utf-8");
      
      Gson gson = new Gson();
      
      gson.toJson(searchHpList, response.getWriter());
      
      
   }
   
   
   // 선택한 병원 진료과목 코드 불러오는 것
   @RequestMapping("searchHpCate.do")
   public void searchHpCate(HttpServletResponse response, @RequestParam(value="hopiName") String hpName) throws JsonIOException, IOException {
	   
	   ArrayList<SearchHp> searchHpCate =  MainHpReService.selectHpCate(hpName);
	   
	   response.setContentType("application/json;charset=utf-8");
	   
	   Gson gson = new Gson();
	   
	   gson.toJson(searchHpCate, response.getWriter());
	   
   }
   
   
   // 병원리뷰등록
   @RequestMapping("hpReInsert.do")
   public String hpReInsert(HttpServletRequest request, HpReview hpRe, HttpSession session,
                        @RequestParam(value="hospital_id") Integer hpNo, 
                        @RequestParam(value="hospital_cateCode") Integer hpCateCode,
                        @RequestParam(value="receipt_image", required=true) MultipartFile file,
                        @RequestParam(value="kindness") Double kindness,
                        @RequestParam(value="sanitary") Double sanitary,
                        @RequestParam(value="explanation") Double explanation,
                        @RequestParam(value="waitingTm") Double waitingTime,
                        @RequestParam(value="price") Double price,
                        @RequestParam(value="result") Double trResult,
                        @RequestParam(value="comment") String comment,
                        @RequestParam(value="suggest") String suggest) {
      
	   
      Client loginClient = (Client)session.getAttribute("loginClient");
//      System.out.println("controller에서 병원 진료과목 : " + hpCateCode);
      
      if(!file.getOriginalFilename().equals("")) {   // 파일이 잘 넘어온 경우
         String renameFileName = saveFile(file,request);
         
         hpRe.setcNo(loginClient.getcNo());
         hpRe.setHpNo(hpNo);
         hpRe.setHpCateCode(hpCateCode);
         hpRe.setHpReContent(comment);   
         hpRe.setLike(suggest);
  
         
         double avg = (kindness + sanitary + explanation + price + trResult)/5;
         hpRe.setAvgRate(avg);
         hpRe.setExplanation(explanation);
         hpRe.setKindness(kindness);
         hpRe.setWaitingTime(waitingTime);
         hpRe.setTrResult(trResult);
         hpRe.setSanitary(sanitary);
         hpRe.setPrice(price);
         
         hpRe.setOriginFile(file.getOriginalFilename());
         hpRe.setRenameFile(renameFileName);
         
//         System.out.println(hpRe);
         
      }
      
      int result = MainHpReService.insertHpRe(hpRe);
      
      if(result>0) {
         return "hospitalReview/hpReInsertSuccess";
      }else {
         return "home";
      }
      
      
   
   }
   
   public String saveFile(MultipartFile file, HttpServletRequest request) {
//      // webapp까지의 경로
//      String root = request.getSession().getServletContext().getRealPath("resources");
//      
//      // resources안의 hpReUploadFiles 폴더까지의 경로
//      String savePath = root + "\\hpReUploadFiles";
      
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
   
   
   
   // 메인 병원 리뷰 페이지 병원 정보 가져오기
   @RequestMapping("mainHpReviewDetail.do")
   public ModelAndView mainHpReviewDetail(ModelAndView mv, MainHp hp, HpReview hr, MainHpQnA qna, HashMap<String, Integer> map,
		   						@RequestParam("hpNo") Integer hpNo,
		   						@RequestParam("orderBy") Integer orderBy,
		   						@RequestParam("currentPage") Integer currentPage) {
	   
//	   System.out.println("controller에서 hpNo : " + hpNo);
	   
	   // 병원 기본 정보
	   hp = MainHpReService.selectHpBasicInfo(hpNo);
//	   System.out.println("controller에서 hp : " + hp);
	   
	   // 병원 기본 사진
	   ArrayList<MainHp> picList = MainHpReService.selectHpPics(hpNo);
//	   System.out.println("controller에서 picList : " + picList);
	   
	   // 병원 영업시간
	   ArrayList<HpTime> timeList = MainHpReService.selectHpTime(hpNo);
//	   System.out.println("controller에서 timeList : " + timeList);
	   
	   // 해당 병원 찜 숫자
	   int likeNum = MainHpReService.selectLikeNum(hpNo);
	   
	   
	   // 해당 병원 리뷰 수
	   int reviewNum = MainHpReService.selectReviewNum(hpNo);
	   
	   
	   // 해당 병원 좋아요 수
	   int smileNum =  MainHpReService.selectSmileNum(hpNo);
	   
	   
	   // 해당 병원 싫어요 수
	   int badNum = MainHpReService.selectBadNum(hpNo);
	   
	   // 전체 리뷰 
	   ArrayList<HpReview> hrList = MainHpReService.selectHpReview(hpNo);
	   
	   double avgRate = 0;
	   for(HpReview list : hrList) {
		   avgRate += list.getAvgRate(); 
	   }
	   double totalAvgRate = Math.floor((avgRate / reviewNum)*100/100.0);
//	   System.out.println("controller에서  평균 리뷰 점수  : " + totalRate);
	
	   
	   double explanation = 0;
	   for(HpReview list : hrList) {
		   explanation += list.getExplanation(); 
	   }
	   double totalExplanation = Math.floor((explanation / reviewNum)*100/100.0);
	   
	   double kindness = 0;
	   for(HpReview list : hrList) {
		   kindness += list.getKindness(); 
	   }
	   double totalKindness = Math.floor((kindness / reviewNum)*100/100.0);
	   
	   double waitingTime = 0;
	   for(HpReview list : hrList) {
		   waitingTime  += list.getKindness(); 
	   }
	   double totalWaitingTime = Math.floor((waitingTime / reviewNum)*100/100.0);
	   
	   
	   double trResult = 0;
	   for(HpReview list : hrList) {
		   trResult  += list.getKindness(); 
	   }
	   double totalTrResult = Math.floor((trResult / reviewNum)*100/100.0);
	   
	   
	   double sanitary = 0;
	   for(HpReview list : hrList) {
		   sanitary  += list.getKindness(); 
	   }
	   double totalSanitary = Math.floor((sanitary / reviewNum)*100/100.0);
	   
	   
	   double price = 0;
	   for(HpReview list : hrList) {
		   price  += list.getKindness(); 
	   }
	   double totalPrice = Math.floor((price / reviewNum)*100/100.0);
	   
	
	   hr.setAvgRate(totalAvgRate);
	   hr.setExplanation(totalExplanation);
	   hr.setKindness(totalKindness);
	   hr.setWaitingTime(totalWaitingTime);
	   hr.setTrResult(totalTrResult);
	   hr.setSanitary(totalSanitary);
	   hr.setPrice(totalPrice);
	   
	   
	   // 병원 리뷰 페이징 처리
	   PageInfo page = Pagination.getHpReviewPageInfo(currentPage, reviewNum);
	   map.put("hpNo", hpNo);
	   map.put("orderBy", orderBy);
	   
	   ArrayList<HpReview> hpReList = MainHpReService.selectHpReviewList(map, page);
//	   System.out.println("controller에서 hpReList : " + hpReList);
	   
	   // 병원 QNA
	   int qnaNum = MainHpReService.selectQnaNum(hpNo);
	   ArrayList<MainHpQnA> qnaList = MainHpReService.selectHpQna(hpNo);
//	   System.out.println("controller에서 qnaList : "  + qnaList);
	   
	   
	   
	   if(hp != null && picList != null && timeList != null) {
		   mv.addObject("hp", hp);
		   mv.addObject("picList", picList);
		   mv.addObject("timeList", timeList);
		   mv.addObject("likeNum", likeNum);
		   mv.addObject("reviewNum", reviewNum);
		   mv.addObject("hr", hr);
		   mv.addObject("smileNum", smileNum);
		   mv.addObject("badNum", badNum);
		   mv.addObject("qnaNum", qnaNum);
		   mv.addObject("qnaList", qnaList);
		   mv.addObject("hpReList", hpReList);
		   
		   mv.setViewName("hospitalReview/hpReviewMain");
		   
	   }else {
		   System.out.println("병원 기본 정보 select 실패!");
	   }
	   
	   return mv;
   }
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   }
   
   
   