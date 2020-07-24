package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;

public interface cMypageService {

	ArrayList<LikeHp> selectList(String cNo);

	int selectCount(String cNo);

	ArrayList<PdReview> selectPdReviewList(String cNo, CMypagePageInfo pi);

	ArrayList<OrderList> selectOrderList(String cNo, CMypagePageInfo pi);

	OrderList selectOrderDetail(OrderList order);

	ArrayList<OrderList> orderListDateSearch(OrderList order, CMypagePageInfo pi);

	ArrayList<OrderList> orderListDateSearch2(OrderList order, CMypagePageInfo pi);

	int pdReviewInsert(PdReview review);

	int updateOrderStatus(PdReview review);

	ArrayList<OrderQna> orderQnaListY(String cNo, CMypagePageInfo pi);

	ArrayList<OrderQna> orderQnaListN(String cNo);

	ArrayList<OrderList> orderCancelList(String cNo, CMypagePageInfo pi);

	int orderQnaInsert(OrderQna qna);

	// 리뷰 수
	int getListCountReview();

	// 주문 수
	int getListCountOrderList();

	// 주문 qna 수
	int getListCountOrderQna();

	PdReview updateReview(PdReview review);

	int updateReviewInsert(PdReview review);

}