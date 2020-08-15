package com.kh.landocProject.dmypage.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;
import com.kh.landocProject.dmypage.model.vo.DrProfile;
import com.kh.landocProject.hospitalReview.model.vo.HpLike;
import com.kh.landocProject.member.model.vo.DrClient;

@Repository("dMypageDao")
public class DmyPageDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<DPdReview> selectPdReviewList(String drNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.pdReviewList", drNo, rowBounds);
	}

	public int getListCoundReview(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.pdReviewListCount",drNo);
	}

	public ArrayList<DOrderList> selectOrderList(String drNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderList", drNo, rowBounds);
	}

	public DOrderList selectOrderDetail(DOrderList order) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.orderDetail", order);
	}

	public ArrayList<DOrderList> orderListDateSearch(DOrderList order, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderListDateSearch", order, rowBounds);
	}

	public ArrayList<DOrderList> orderListDateSearch2(DOrderList order, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderListDateSearch2", order, rowBounds);
	}

	public int pdReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("dMypage.pdReviewInsert", review);
	}

	public int updateOrderStatus(DPdReview review) {
		
		return sqlSessionTemplate.update("dMypage.updateOStatus", review);
	}

	public ArrayList<DOrderQna> orderQnaListY(String drNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderQnaListY", drNo, rowBounds);
	}

	public ArrayList<DOrderQna> orderQnaListN(String drNo) {
		// TODO Auto-generated method stub
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderQnaListN", drNo);
	}

	public ArrayList<DOrderList> orderCancelList(String drNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("dMypage.orderCancelList", drNo, rowBounds);
	}

	public int orderQnaInsert(DOrderQna qna) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("dMypage.orderQnaInsert", qna);
	}

	public int getListCountOrderList(HashMap<String,Object> order) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.orderListCount",order);
	}

	public int getListCountOrderQna(String drNo) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.orderQnaListCount",drNo);
	}

	public DPdReview updateReview(DPdReview review) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.updateReview",review);
	}

	public int updateReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("dMypage.updateReviewInsert",review);
	}

	public String selectAllSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.selectAllSumPoint",drNo);
	}

	public String selectMonthSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.selectMonthSumPoint",drNo);
	}

	public String selectNowMonthPoint() {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.selectNowMonthPoint");
	}

	public String selectCPoint(String drNo) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.selectCPoint",drNo);
	}

	public ArrayList<DrMypagePoint> selectPointList(String drNo) {
		// TODO Auto-generated method stub
		return (ArrayList)sqlSessionTemplate.selectList("dMypage.selectPointList", drNo);
	}

	public int listCountPointList(String drNo) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.listCountPointList",drNo);
	}

	public int orderCancel(DOrderList order) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.update("dMypage.orderCancelUpdate", order);
	}

	public String selectDrProfile(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectDrProfile", drNo);
	}

	public DrProfile selectOneDr(String replyDrNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectOneDr", replyDrNo);
	}

	public int selectMyDrLikeCount(HpLike hl) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectMyDrLikeCount", hl);
	}

	public int deleteDrLike(HpLike hl) {
		
		return sqlSessionTemplate.delete("dMypage.deleteDrLike", hl);
	}

	public int insertDrLike(HpLike hl) {
		
		return sqlSessionTemplate.insert("dMypage.insertDrLike", hl);
	}

	public int selectDrLikeCount(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectDrLikeCount", drNo);
	}

	public int selectLikeCount(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectLikeCount", drNo);
	}

	public int selectReplyCount(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectReplyCount",drNo);
	}

	public int selectChosenReplyCount(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectChosenReplyCount", drNo);
	}

	public ArrayList<DrProfile> selectCommentList(String drNo) {
		
		/*
		 * int offset = (commentPage.getCurrentPage() -1) * commentPage.getBoardLimit();
		 * RowBounds rowBounds = new RowBounds(offset, commentPage.getBoardLimit());
		 */
		
		return (ArrayList)sqlSessionTemplate.selectList("dMypage.selectCommentList", drNo);
	}

	public int selectCommentCount(String drNo) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectCommentCount", drNo);
	}

	public String selectPdReviewPhoto(DPdReview review) {
		
		return sqlSessionTemplate.selectOne("dMypage.selectPdReviewPhoto",review);
	}

	public int getListCountSearchOrderList(HashMap<String, Object> search) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.getListCountSearchOrderList",search);
	}

	public int getListCountSearchOrderList2(HashMap<String, Object> search) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("dMypage.getListCountSearchOrderList2",search);

	}
	
	
	
	
	

}
