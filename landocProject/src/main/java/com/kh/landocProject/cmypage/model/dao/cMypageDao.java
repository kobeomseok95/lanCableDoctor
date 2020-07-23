package com.kh.landocProject.cmypage.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.PdReview;

@Repository("cmDao")
public class cMypageDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public ArrayList<LikeHp> selectList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.likeHpList",cNo);
	}

	public int selectCount(String cNo) {
		
		return sqlSessionTemplate.selectOne("cMypage.listCount",cNo);
	}

	public ArrayList<PdReview> selectPdReviewList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.pdReviewList",cNo);
	}

	public ArrayList<OrderList> selectOrderList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderList",cNo);
	}

	public OrderList selectOrderDetail(OrderList order) {
		
		return sqlSessionTemplate.selectOne("cMypage.orderDetail", order);
	}

	public ArrayList<OrderList> orderListDateSearch(OrderList order) {
	
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderListDateSearch",order);
	}

	public ArrayList<OrderList> orderListDateSearch2(OrderList order) {
		
		return (ArrayList)sqlSessionTemplate.selectList("cMypage.orderListDateSearch2",order);
	}



}
