package com.kh.landocProject.cmypage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePoint;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;

@Repository("cmDao")
public class cMypageDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<LikeHp> selectList(String cNo) {

		return (ArrayList) sqlSessionTemplate.selectList("cMypage.likeHpList", cNo);
	}

	// 찜한병원 수
	public int selectCount(String cNo) {

		return sqlSessionTemplate.selectOne("cMypage.listCount", cNo);
	}

	public ArrayList<PdReview> selectPdReviewList(String cNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.pdReviewList", cNo, rowBounds);
	}

	public ArrayList<OrderList> selectOrderList(String cNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderList", cNo, rowBounds);
	}

	public OrderList selectOrderDetail(OrderList order) {

		return sqlSessionTemplate.selectOne("cMypage.orderDetail", order);
	}

	public ArrayList<OrderList> orderListDateSearch(OrderList order, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderListDateSearch", order, rowBounds);
	}

	public ArrayList<OrderList> orderListDateSearch2(OrderList order, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderListDateSearch2", order, rowBounds);
	}

	public int pdReviewInsert(PdReview review) {

		return sqlSessionTemplate.insert("cMypage.pdReviewInsert", review);
	}

	public int updateOrderStatus(PdReview review) {

		return sqlSessionTemplate.update("cMypage.updateOStatus", review);
	}

	public ArrayList<OrderQna> orderQnaListY(String cNo,CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderQnaListY", cNo, rowBounds);
	}

	public ArrayList<OrderQna> orderQnaListN(String cNo) {

		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderQnaListN", cNo);
	}

	public ArrayList<OrderList> orderCancelList(String cNo, CMypagePageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList) sqlSessionTemplate.selectList("cMypage.orderCancelList", cNo, rowBounds);
	}

	public int orderQnaInsert(OrderQna qna) {

		return sqlSessionTemplate.insert("cMypage.orderQnaInsert", qna);
	}

	// 리뷰 수
	public int getListCountReview() {

		return sqlSessionTemplate.selectOne("cMypage.pdReviewListCount");
	}

	public int getListCountOrderList() {
		
		return sqlSessionTemplate.selectOne("cMypage.orderListCount");
	}

	public int getListCountOrderQna() {
		
		return sqlSessionTemplate.selectOne("cMypage.orderQnaListCount");
	}

	// 업데이트 할 리뷰 정보 가져오기
	public PdReview updateReview(PdReview review) {
		
		return sqlSessionTemplate.selectOne("cMypage.updateReview",review);
	}

	public int updateReviewInsert(PdReview review) {
		
		return sqlSessionTemplate.update("cMypage.updateReviewInsert",review);
	}

	public String selectAllSumPoint(String cNo) {
	
		return sqlSessionTemplate.selectOne("cMypage.selectAllSumPoint",cNo);
	}

	public String selectMonthSumPoint(String cNo) {
		
		return sqlSessionTemplate.selectOne("cMypage.selectMonthSumPoint",cNo);
	}

	public String selectNowMonthPoint() {

		return sqlSessionTemplate.selectOne("cMypage.selectNowMonthPoint");
	}

	public String selectCPoint(String cNo) {
	
		return sqlSessionTemplate.selectOne("cMypage.selectCPoint",cNo);
	}

	public ArrayList<CMypagePoint> selectPointList(String cNo) {
	
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.selectPointList", cNo);
	}

	public int listCountPointList(String cNo) {
		
		return sqlSessionTemplate.selectOne("cMypage.listCountPointList",cNo);
	}

	public int orderCancel(OrderList order) {
		
		return sqlSessionTemplate.update("cMypage.orderCancelUpdate", order);
	}

	public String selectPdReviewPhoto(PdReview review) {
		
		return sqlSessionTemplate.selectOne("cMypage.selectPdReviewPhoto",review);
	}



}
