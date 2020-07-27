package com.kh.landocProject.askDr.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.askDr.model.dao.AskDrDAO;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;
import com.kh.landocProject.askDr.model.vo.AskDrReply;
import com.kh.landocProject.askDr.model.vo.SymptomsImage;

@Service
public class AskDrServiceImpl implements AskDrService {

	@Resource
	private AskDrDAO askDrDAO;
	
	@Override
	public int selectAskDrBoardCount(int categoryNo) {
		return askDrDAO.selectAskDrBoardCount(categoryNo);
	}

	@Override
	public ArrayList<AskDrBoard> selectAskDrBoard(int categoryNo, AskDrBoardPagination page) throws Exception {
		return askDrDAO.selectAskDrBoard(categoryNo, page);
	}

	@Override
	public int selectAskDrBoardSearchCount(HashMap<String, Object> parameterMap) {
		return askDrDAO.selectAskDrBoardSearchCount(parameterMap);
	}

	@Override
	public ArrayList<AskDrBoard> selectAskDrBoardSearch(HashMap<String, Object> parameterMap,
			AskDrBoardPagination page) {
		return askDrDAO.selectAskDrBoardSearch(parameterMap, page);
	}

	@Override
	public int insertAskDrBoard(AskDrBoard askDrBoard) {
		return askDrDAO.insertAskDrBoard(askDrBoard);
	}

	@Override
	public int deleteAskDrBoard(int bNo) {
		return askDrDAO.deleteAskDrBoard(bNo);
	}

	@Override
	public AskDrBoard selectAskDrBoardUpdateDeatil(int bNo) {
		return askDrDAO.selectAskDrBoardUpdateDeatil(bNo);
	}

	@Override
	public int updateAskDrBoard(AskDrBoard askDrBoard) {
		return askDrDAO.updateAskDrBoard(askDrBoard);
	}

	@Override
	public int insertAskDrBoardPhoto(HashMap<String, Object> parameterPhoto) {
		return askDrDAO.insertAskDrBoardPhoto(parameterPhoto);
	}

	@Override
	public AskDrBoard selectAskDrBoardDeatil(HashMap<String, Integer> parameterMap) {
		return askDrDAO.selectAskDrBoardDetail(parameterMap);
	}

	@Override
	public List<SymptomsImage> selectAskDrBoardDeatilImages(int bNo) {
		return askDrDAO.selectAskDrBoardDeatilImages(bNo);
	}

	@Override
	public List<String> selectAskDrBoardImgNames(int bNo) {
		return askDrDAO.selectAskDrBoardImgNames(bNo);
	}

	@Override
	public void deleteImgs(int bNo) {
		askDrDAO.deleteImgs(bNo);
	}

	@Override
	public int updateAskDrBoardPhoto(HashMap<String, Object> parameterPhoto) {
		return askDrDAO.updateAskDrBoardPhoto(parameterPhoto);
	}

	@Override
	public List<AskDrReply> selectAskDrBoardDetailReply(int bNo) {
		return askDrDAO.selectAskDrBoardDetailReply(bNo);
	}

	@Override
	public int updateAskDrReplyChooseStatus(int adrNo) {
		return askDrDAO.updateAskDrReplyChooseStatus(adrNo);
	}

	@Override
	public int updateAskDrBoardChooseStatus(int bNo) {
		return askDrDAO.updateAskDrBoardChooseStatus(bNo);
	}
}
