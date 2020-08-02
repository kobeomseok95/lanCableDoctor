package com.kh.landocProject.admin.askDr.model.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.askDr.model.vo.AdminAskDrBoard;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.askDr.model.vo.AskDrReply;

@Repository
public class AdminAskDrDao {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getBoardListCount() {
		return sqlSessionTemplate.selectOne("adminAskDr.getBoardListCount");
	}

	public List<AdminAskDrBoard> getBoardList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return sqlSessionTemplate.selectList("adminAskDr.getBoardList", null, rowBounds);
	}

	public int deletePost(int adNo) {
		return sqlSessionTemplate.delete("adminAskDr.deletePost", adNo);
	}

	public AdminAskDrBoard getPostDetail(int adNo) {
		return sqlSessionTemplate.selectOne("adminAskDr.getPostDetail", adNo);
	}

	public int deleteReply(int adrNo) {
		return sqlSessionTemplate.delete("adminAskDr.deleteReply", adrNo);
	}

	public List<AskDrReply> getReplyList(int adNo) {
		return sqlSessionTemplate.selectList("adminAskDr.getReplyList", adNo);
	}

	public List<AdminAskDrBoard> search(HashMap<String, Object> param, PageInfo pageInfo) {
		if( pageInfo != null ) {
			int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit();
			RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
			return sqlSessionTemplate.selectList("adminAskDr.search", param, rowBounds);
		}
		else {
			return sqlSessionTemplate.selectList("adminAskDr.search", param);
		}
	}

	public int searchCount(HashMap<String, Object> param) {
		return sqlSessionTemplate.selectOne("adminAskDr.searchCount", param);
	}
	
}
