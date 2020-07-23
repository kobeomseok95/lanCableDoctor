package com.kh.landocProject.askDr.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;

public interface AskDrService {

	int selectAskDrBoardCount(int categoryNo) throws Exception;

	ArrayList<AskDrBoard> selectAskDrBoard(int categoryNo, AskDrBoardPagination page) throws Exception;

	AskDrBoard selectAskDrBoardDeatil(int category, int bNo);

	int selectAskDrBoardSearchCount(HashMap<String, Object> parameterMap);

	ArrayList<AskDrBoard> selectAskDrBoardSearch(HashMap<String, Object> parameterMap, AskDrBoardPagination page);
	
}
