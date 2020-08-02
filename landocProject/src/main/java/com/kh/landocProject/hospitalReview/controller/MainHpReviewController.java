package com.kh.landocProject.hospitalReview.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.google.gson.Gson;
import com.google.gson.JsonIOException;
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
         
//         int kindnessIn = 0;
//         int sanitaryIn = 0;
//         int explanationIn = 0;
//         int waitingTimeIn = 0;
//         int priceIn = 0;
//         int resultIn = 0;
//         
//         
//         kindnessIn = Integer.parseInt(String.valueOf(Math.round(kindness)));
//         sanitaryIn = Integer.parseInt(String.valueOf(Math.round(sanitary)));
//         explanationIn = Integer.parseInt(String.valueOf(Math.round(explanation)));
//         waitingTimeIn = Integer.parseInt(String.valueOf(Math.round(waitingTime)));
//         priceIn = Integer.parseInt(String.valueOf(Math.round(price)));
//         resultIn = Integer.parseInt(String.valueOf(Math.round(result)));
         
         
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
   
   
}