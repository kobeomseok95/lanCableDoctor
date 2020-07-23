package com.kh.landocProject.cmypage.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PageInfo;
import com.kh.landocProject.cmypage.model.vo.PdReview;

@Repository("cmDao")
public class cMypageDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ArrayList<LikeHp> selectList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.likeHpList",cNo);
	}

	// 찜한병원 수
	public int selectCount(String cNo) {
		
		return sqlSessionTemplate.selectOne("cMypage.listCount",cNo);
	}

	public ArrayList<PdReview> selectPdReviewList(String cNo,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.pdReviewList",cNo,rowBounds);
	}

	public ArrayList<OrderList> selectOrderList(String cNo,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderList",cNo,rowBounds);
	}

	public OrderList selectOrderDetail(OrderList order) {
		
		return sqlSessionTemplate.selectOne("cMypage.orderDetail", order);
	}

	public ArrayList<OrderList> orderListDateSearch(OrderList order,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderListDateSearch",order,rowBounds);
	}

	public ArrayList<OrderList> orderListDateSearch2(OrderList order,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderListDateSearch2",order,rowBounds);
	}

	public int pdReviewInsert(PdReview review) {
		
		return sqlSessionTemplate.insert("cMypage.pdReviewInsert", review);
	}

	public int updateOrderStatus(PdReview review) {
		
		return sqlSessionTemplate.update("cMypage.updateOStatus", review);
	}

	public ArrayList<OrderQna> orderQnaListY(String cNo,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderQnaListY",cNo,rowBounds);
	}

	public ArrayList<OrderQna> orderQnaListN(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderQnaListN",cNo);
	}

	public ArrayList<OrderList> orderCancelList(String cNo,PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		//이전페이지까지의 보드개수
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderCancelList",cNo,rowBounds);
	}

	public int orderQnaInsert(OrderQna qna) {
	
		return sqlSessionTemplate.insert("cMypage.orderQnaInsert",qna);
	}

	public int getListCount() {
		
		return sqlSessionTemplate.selectOne("cMypage.pdReviewListCount");
	}



}
