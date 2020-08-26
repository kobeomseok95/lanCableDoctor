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
import com.kh.landocProject.askDr.model.vo.AskDrReply;
import com.kh.landocProject.askDr.model.vo.DrClient;
import com.kh.landocProject.askDr.model.vo.SymptomsImage;

@Repository
public class AskDrDAO {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int selectAskDrBoardCount(HashMap<String, Object> param) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardCount", param);
	}

	public ArrayList<AskDrBoard> selectAskDrBoard(HashMap<String, Object> param, AskDrBoardPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("askDr.selectAskDrBoard", param, rowBounds);
	}
	
	public int selectAskDrBoardSearchCount(HashMap<String, Object> param) {
		return sqlSessionTemplate.selectOne("askDr.selectAskDrBoardSearchCount", param);
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

	public List<AskDrReply> selectAskDrBoardDetailReply(int bNo) {
		return sqlSessionTemplate.selectList("askDr.selectAskDrBoardDetailReply", bNo);
	}

	public int updateAskDrReplyChooseStatus(int adrNo) {
		return sqlSessionTemplate.update("askDr.updateAskDrReplyChooseStatus", adrNo);
	}

	public int updateAskDrBoardChooseStatus(int bNo) {
		return sqlSessionTemplate.update("askDr.updateAskDrBoardChooseStatus", bNo);
	}

	public int insertAskDrBoardReply(AskDrReply askDrReply) {
		return sqlSessionTemplate.insert("askDr.insertAskDrBoardReply", askDrReply);
	}

	public int deleteAskDrBoardReply(int adrNo) {
		return sqlSessionTemplate.delete("askDr.deleteAskDrBoardReply", adrNo);
	}

	public int updateAskDrBoardReply(AskDrReply askDrReply) {
		return sqlSessionTemplate.update("askDr.updateAskDrBoardReply", askDrReply);
	}

	public List<DrClient> getSearchDr(String drName) {
		return sqlSessionTemplate.selectList("askDr.getSearchDr", drName);
	}

	public int pointUpClient(String cNo) {
		return sqlSessionTemplate.update("askDr.pointUpClient", cNo);
	}

	public int pointUpDr(String drNo) {
		return sqlSessionTemplate.update("askDr.pointUpDr", drNo);
	}

	public int recordPointSaveClient(HashMap<String, Object> param) {
		return sqlSessionTemplate.update("askDr.recordPointSaveClient", param);
	}

	public int recordPointSaveDr(HashMap<String, Object> param) {
		return sqlSessionTemplate.update("askDr.recordPointSaveDr", param);
	}

		
}












