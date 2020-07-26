package com.kh.landocProject.askDr.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.askDr.model.vo.AskDrBoardPagination;
import com.kh.landocProject.askDr.model.vo.SymptomsImage;

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
	
	public int selectAskDrBoardSearchCount(HashMap<String, Object> parameterMap) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardSearchCount", parameterMap);
	}

	public ArrayList<AskDrBoard> selectAskDrBoardSearch(HashMap<String, Object> parameterMap,
			AskDrBoardPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("askDr.selectAskDrBoardSearch", parameterMap, rowBounds);
	}

	public int insertAskDrBoard(AskDrBoard askDrBoard) {
		return sqlSessionTemplate.insert("askDr.insertAskDrBoard", askDrBoard);
	}

	public int deleteAskDrBoard(int bNo) {
		return sqlSessionTemplate.delete("askDr.deleteAskDrBoard", bNo);
	}

	public AskDrBoard selectAskDrBoardUpdateDeatil(int bNo) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardUpdateDeatil", bNo);
	}

	public int updateAskDrBoard(AskDrBoard askDrBoard) {
		return sqlSessionTemplate.update("askDr.updateAskDrBoard", askDrBoard);
	}

	public int insertAskDrBoardPhoto(HashMap<String, Object> parameterPhoto) {
		return sqlSessionTemplate.insert("askDr.insertAskDrBoardPhoto", parameterPhoto);
	}

	public AskDrBoard selectAskDrBoardDetail(HashMap<String, Integer> parameterMap) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardDetail", parameterMap);
	}

	public List<SymptomsImage> selectAskDrBoardDeatilImages(int bNo) {
		return sqlSessionTemplate.selectList("askDr.selectAskDrBoardDeatilImages", bNo);
	}

	public List<String> selectAskDrBoardImgNames(int bNo) {
		return sqlSessionTemplate.selectList("askDr.selectAskDrBoardImgNames", bNo);
	}

	public void deleteImgs(int bNo) {
		sqlSessionTemplate.selectList("askDr.deleteImgs", bNo);
	}

	public int updateAskDrBoardPhoto(HashMap<String, Object> parameterPhoto) {
		return sqlSessionTemplate.insert("askDr.updateAskDrBoardPhoto", parameterPhoto);
	}
	
}












