package com.kh.landocProject.askDr.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;

@Repository
public class AskDrDAO {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int selectAskDrBoardCount(int categoryNo) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardCount", categoryNo);
	}

	public ArrayList<AskDrBoard> selectAskDrBoard(int categoryNo, AskDrBoardPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("askDr.selectAskDrBoard", categoryNo, rowBounds);
	}

	public AskDrBoard selectAskDrBoardDetail(int category, int bNo) {
		HashMap<String, Integer> parameterMap = new HashMap<String, Integer>();
		parameterMap.put("category", category);
		parameterMap.put("bNo", bNo);
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardDetail", parameterMap);
	}
	
	public int selectAskDrBoardSearchCount(HashMap<String, Object> parameterMap) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardSearchCount", parameterMap);
	}

	public ArrayList<AskDrBoard> selectAskDrBoardSearch(HashMap<String, Object> parameterMap,
			AskDrBoardPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("askDr.selectAskDrBoardSearch", parameterMap, rowBounds);
	}
}












