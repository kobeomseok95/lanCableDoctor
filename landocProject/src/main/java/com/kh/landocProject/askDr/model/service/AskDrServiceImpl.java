package com.kh.landocProject.askDr.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.askDr.model.dao.AskDrDAO;
import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;

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
	public AskDrBoard selectAskDrBoardDeatil(int category, int bNo) {
		return askDrDAO.selectAskDrBoardDetail(category, bNo);
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
}
