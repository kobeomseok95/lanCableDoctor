package com.kh.landocProject.askDr.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.landocProject.askDr.model.service.AskDrService;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;
import com.kh.landocProject.askDr.model.vo.AskDrCategoryMap;
import com.kh.landocProject.askDr.model.vo.AskDrReply;
import com.kh.landocProject.askDr.model.vo.DrClient;
import com.kh.landocProject.askDr.model.vo.SymptomsImage;
import com.kh.landocProject.member.model.vo.Client;

@Controller
public class MainAskDrController {

	@Resource
	private AskDrService askDrServiceImpl; 
	@Resource
	private AskDrCategoryMap askDrCategoryMap;
//	사진 저장 폴더
	private final String filePath = "C:\\lanCableDoctorProject\\files\\";

	@RequestMapping(value = "askDr.do", method = RequestMethod.GET)
	public String askDr() {
		return "askDr/askDr";
	}

//	카테고리별 의사에게 물어봐 list 뽑아오기 -범석
	@RequestMapping(value = "askDrBoard.do", method = RequestMethod.GET)
	public ModelAndView selectAskDrBoard(ModelAndView mv, 
															@RequestParam int category, 
															@RequestParam int pageNo,
															@RequestParam(required = false) String choosed) throws Exception {
		mv.setViewName("askDr/askDrBoard");
		int listCount = 0;
		int currentPage = pageNo;
		//DB수정하기
		int categoryNo = Integer.valueOf(category);
		String subject = askDrCategoryMap.getCategoryMap().get(categoryNo);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("categoryNo", categoryNo);
		
		if( choosed != null && choosed.equals("Y") ) {
			param.put("choosed", choosed);
			listCount = askDrServiceImpl.selectAskDrBoardCount(param);
		}
		else {
			listCount = askDrServiceImpl.selectAskDrBoardCount(param);
		}
		
		AskDrBoardPagination page = AskDrBoardPagination.getAskDrBoardPagination(currentPage, listCount);
		ArrayList<AskDrBoard> list = (ArrayList<AskDrBoard>) askDrServiceImpl.selectAskDrBoard(param, page);
		
		mv.addObject("boardStatus", 1);
		mv.addObject("askDrBoardList", list);
		mv.addObject("subject", subject);
		mv.addObject("page", page);
		mv.addObject("categoryNo", categoryNo);
		if( choosed != null && choosed.equals("Y") ) {
			mv.addObject("choosed", "Y");
		}
		else {
			mv.addObject("choosed", "N");
		}
		return mv;
	}

//	의사에게 물어봐 게시글 상세보기 -범석
	@RequestMapping(value = "askDrDetail.do", method = RequestMethod.GET)
	public ModelAndView askDrDetail(ModelAndView mv, 
													@RequestParam int category,
													@RequestParam int bNo,
													@RequestParam(required=false) Integer searchBoardOption,
													@RequestParam(required=false) String searchBoardContent) throws Exception {
		mv.setViewName("askDr/askDrDetail");
		List<SymptomsImage> images = null;
		List<AskDrReply> replys = null;
		
		String subject = askDrCategoryMap.getCategoryMap().get(category);
		
		HashMap<String, Integer> parameterMap = new HashMap<String, Integer>();
		parameterMap.put("category", category);
		parameterMap.put("bNo", bNo);
		AskDrBoard askDrBoardDetail = askDrServiceImpl.selectAskDrBoardDeatil(parameterMap);
		changeGender(askDrBoardDetail);
		
		if(askDrBoardDetail.getCountImage() > 0) {
			images = askDrServiceImpl.selectAskDrBoardDeatilImages( askDrBoardDetail.getbNo() );
			mv.addObject("imageList", images);
		}
		
		if(askDrBoardDetail.getCountReply() > 0) {
			replys = askDrServiceImpl.selectAskDrBoardDetailReply( askDrBoardDetail.getbNo() );
			mv.addObject("replys", replys);
		}
		
		if(searchBoardOption != null && 
				!searchBoardContent.equals("") &&
				searchBoardContent != null) {
			mv.addObject("searchBoardOption", searchBoardOption);
			mv.addObject("searchBoardContent", searchBoardContent);
		}
		mv.addObject("askDrBoardDetail", askDrBoardDetail);
		mv.addObject("subject", subject);
		mv.addObject("categoryNo", category);
		return mv;
	}

	public void changeGender(AskDrBoard settingDetail) {
		if (settingDetail.getGender().equals("M")) {
			settingDetail.setGender("남");
		} else {
			settingDetail.setGender("여");
		}
	}

	@RequestMapping(value = "askDrBoardSearch.do", method = RequestMethod.GET)
	public ModelAndView askDrBoardSearch(ModelAndView mv, 
																@RequestParam int searchBoardOption,
																@RequestParam String searchBoardContent, 
																@RequestParam int category, 
																@RequestParam int pageNo,
																@RequestParam(required = false) String choosed) {
		mv.setViewName("askDr/askDrBoard");
		int listCount = 0;
		String subject = askDrCategoryMap.getCategoryMap().get(category);
		
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("category", category);
		param.put("searchBoardOption", searchBoardOption);
		searchBoardContent = searchBoardContent.replaceAll("\\p{Z}", ""); // 모든 공백 제거
		param.put("searchBoardContent", searchBoardContent);
		if(choosed != null && choosed.equals("Y")) {
			param.put("choosed", "Y");
			listCount = askDrServiceImpl.selectAskDrBoardSearchCount(param);
		}
		else {
			listCount = askDrServiceImpl.selectAskDrBoardSearchCount(param);
		}
		
		int currentPage = pageNo;
		AskDrBoardPagination page = AskDrBoardPagination.getAskDrBoardPagination(currentPage, listCount);
		ArrayList<AskDrBoard> searchList = (ArrayList<AskDrBoard>) askDrServiceImpl.selectAskDrBoardSearch(param,
				page);

		mv.addObject("boardStatus", 2);
		mv.addObject("askDrBoardSearchList", searchList);
		mv.addObject("subject", subject);
		mv.addObject("page", page);
		mv.addObject("searchBoardContent", searchBoardContent);
		mv.addObject("searchBoardOption", searchBoardOption);
		mv.addObject("categoryNo", category);
		if( choosed != null && choosed.equals("Y") ) {
			mv.addObject("choosed", "Y");
		}
		else {
			mv.addObject("choosed", "N");
		}
		return mv;
	}

	@RequestMapping(value = "askDrBoardInsertForm.do", method = RequestMethod.GET)
	public String askDrBoardInsertForm() {
		return "askDr/askDrBoardInsertForm";
	}
	
	@RequestMapping(value = "askDrBoardInsert.do", method = RequestMethod.POST)
	public String askDrBoardInsert(@SessionAttribute("loginClient") Client loginClient,
												RedirectAttributes ra,
												AskDrBoard askDrBoard) {
		askDrBoard.setMemberNo(loginClient.getcNo());
		
		int resultOfBoard = askDrServiceImpl.insertAskDrBoard(askDrBoard);
		int resultOfPhoto = 0;

		if( !askDrBoard.getSymptomPicture().get(0).getOriginalFilename().equals("") &&
				resultOfBoard > 0 ) {
			HashMap<String, Object> parameterPhoto = new HashMap<String, Object>();
			parameterPhoto.put("boardNo", askDrBoard.getbNo());
			parameterPhoto.put("filePath", filePath);

			resultOfPhoto = saveFiles(parameterPhoto, askDrBoard.getSymptomPicture(), 1);
		}
		else {
			resultOfPhoto = 1;		//	사진이 없을경우에는 그냥 이렇게 설정하고 넘어가긔
		}
		
		if(resultOfBoard > 0 && resultOfPhoto > 0) {
			ra.addAttribute("category", askDrBoard.getCategoryNo());
			ra.addAttribute("pageNo", 1);
			return "redirect:/askDrBoard.do";
		}
		else {
			return "";
		}
	}
	
//	사진을 서버에 저장 및 DB에 경로 저장
	private int saveFiles(HashMap<String, Object> parameterPhoto, List<MultipartFile> symptomPicture,
								int type) {
		int resultSum = 0;
		
		File folder = new File(filePath);
		if(!folder.exists())
			folder.mkdirs();
		
		for(MultipartFile mf : symptomPicture) {
			String originalFileName = mf.getOriginalFilename();
			if(originalFileName == null || originalFileName == "") {
				break;
			}
			String fileName = System.currentTimeMillis() + originalFileName;
			
			String saveFile = filePath + fileName;
			try {
				mf.transferTo(new File(saveFile));
				
				parameterPhoto.put("fileName", fileName);
//				게시글 insert
				if(type == 1) {	
					resultSum = resultSum +  askDrServiceImpl.insertAskDrBoardPhoto(parameterPhoto);
				}
//				게시글 update
				else if(type == 2) {
					resultSum = resultSum +  askDrServiceImpl.updateAskDrBoardPhoto(parameterPhoto);
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return resultSum;
	}
	
	@RequestMapping(value="askDrBoardDelete.do", method=RequestMethod.POST)
	public String askDrBoardDelete(@RequestParam int bNo) {
		List<String> fileNames = askDrServiceImpl.selectAskDrBoardImgNames(bNo);
		if( !fileNames.isEmpty() ) {
			deleteStoredImgs(fileNames);
			askDrServiceImpl.deleteImgs(bNo);
		}
		
		int result = askDrServiceImpl.deleteAskDrBoard(bNo);
		if(result > 0) {
			return "redirect:/askDr.do";			
		}
		else {
			return "";
		}
	}
	
//	외부 폴더에 저장된 사진들을 지운다. 이 메소드는 게시글삭제, 수정에 쓰임
	public void deleteStoredImgs(List<String> fileNames) {
		for(String fileName : fileNames) {
			String path = "C:\\lanCableDoctorProject\\files\\" + fileName;
			
			File file = new File(path);
			if( file.exists() ) {
				file.delete();
			}
		}
	}
	
	@RequestMapping(value="askDrBoardUpdateForm.do", method=RequestMethod.POST)
	public ModelAndView askDrBoardUpdateForm(ModelAndView mv,
																@RequestParam int bNo) {
		mv.setViewName("askDr/askDrBoardUpdateForm");
		
		AskDrBoard askDrBoardUpdateDetail = askDrServiceImpl.selectAskDrBoardUpdateDeatil(bNo);
		
		List<SymptomsImage> images = null;
		if(askDrBoardUpdateDetail.getCountImage() > 0) {
			images = askDrServiceImpl.selectAskDrBoardDeatilImages(bNo);
		}
		
		mv.addObject("askDrBoardUpdateDetail", askDrBoardUpdateDetail);
		mv.addObject("imageList", images);
		return mv;
	}
	
	@RequestMapping(value="askDrBoardUpdate.do", method=RequestMethod.POST)
	public String askDrBoardUpdate(AskDrBoard askDrBoard,
													RedirectAttributes ra) {
		int resultOfPhoto = 0;
		HashMap<String, Object> parameterPhoto = new HashMap<String, Object>();
		parameterPhoto.put("boardNo", askDrBoard.getbNo());
		parameterPhoto.put("filePath", filePath);
		
		List<String> fileNames = 
				askDrServiceImpl.selectAskDrBoardImgNames( askDrBoard.getbNo() );
		if( !fileNames.isEmpty() ) {
			deleteStoredImgs(fileNames);
			askDrServiceImpl.deleteImgs( askDrBoard.getbNo() );
		}
		
		int resultOfBoard = askDrServiceImpl.updateAskDrBoard(askDrBoard);

		if( resultOfBoard > 0 && !askDrBoard.getSymptomPicture().isEmpty() ) {
			resultOfPhoto = saveFiles(parameterPhoto, askDrBoard.getSymptomPicture(), 2);
		}
		else if ( resultOfBoard <= 0 ) {
			return "";		//실패
		}
		
		if(resultOfPhoto + resultOfBoard > 0) {
			ra.addAttribute("category", askDrBoard.getCategoryNo());
			ra.addAttribute("bNo", askDrBoard.getbNo());
			return "redirect:/askDrDetail.do";
		}
		else {
			return "";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="chooseAnswer.do", method=RequestMethod.POST)
	public String chooseAnswer(@RequestParam int bNo,
											@RequestParam int adrNo,
											@RequestParam String cNo,
											@RequestParam String drNo) {
		int resultOfAnswer = askDrServiceImpl.updateAskDrReplyChooseStatus(adrNo);
		int resultOfBoard = askDrServiceImpl.updateAskDrBoardChooseStatus(bNo);
		int pointUpClient = askDrServiceImpl.pointUpClient(cNo);
		int pointUpDr = askDrServiceImpl.pointUpDr(drNo);
		
		if(resultOfAnswer > 0 && 
				resultOfBoard > 0 &&
				pointUpClient > 0 &&
				pointUpDr > 0) {
			return "success";
		}
		else {
			return "error";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="insertAskDrBoardReply.do", method=RequestMethod.POST)
	public String insertReply(AskDrReply askDrReply, 
									HttpServletResponse response) throws JsonIOException, IOException {
		int result = askDrServiceImpl.insertAskDrBoardReply(askDrReply);
		if(result > 0) {
			return "success";
		}
		else{
			return "error";
		}
	}
	
	@RequestMapping(value="selectAskDrBoardReply.do", method=RequestMethod.GET)
	public void getReplyList(HttpServletResponse response, 
										int bNo) throws JsonIOException, IOException {
		List<AskDrReply> replys = askDrServiceImpl.selectAskDrBoardDetailReply( bNo );
		
		response.setContentType("application/json;charset=utf-8");	
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(replys, response.getWriter());
//		void에서 replys를 반환하였다.
//		return replys;
	}
	
	@ResponseBody
	@RequestMapping(value="deleteAskDrBoardReply.do", method=RequestMethod.POST)
	public String deleteReply(int adrNo) {
		int result = askDrServiceImpl.deleteAskDrBoardReply(adrNo);
		if(result > 0) {
			return "success";
		}
		else {
			return "error";
		}
	}
	
	@ResponseBody
	@RequestMapping(value="updateAskDrBoardReply.do", method=RequestMethod.POST)
	public String updateReply(AskDrReply askDrReply) {
		int result = askDrServiceImpl.updateAskDrBoardReply(askDrReply);
		
		if(result > 0) {
			return "success";
		}
		else {
			return "error";
		}
	}
	
	@RequestMapping(value = "searchDr.do", method = RequestMethod.GET)
	public ModelAndView askDrSearch(ModelAndView mv,
														@RequestParam String drName) {
		drName = drName.replaceAll("\\p{Z}", "");
		List<DrClient> searchList = askDrServiceImpl.getSearchDr(drName);
		
		mv.addObject("searchList", searchList);
		mv.addObject("drName", drName);
		mv.setViewName("askDr/askDrSearch");
		return mv;
	}
}
















