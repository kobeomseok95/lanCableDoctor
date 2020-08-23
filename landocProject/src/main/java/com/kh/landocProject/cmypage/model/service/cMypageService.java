package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.askDr.model.vo.AskDrBoard;
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePoint;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PdReview;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;

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
	int getListCountReview(String cNo);

	// 주문 수
	int getListCountOrderList(HashMap<String,Object> order);

	// 주문 qna 수
	int getListCountOrderQna(String cNo);

	PdReview updateReview(PdReview review);

	int updateReviewInsert(PdReview review);

	String selectAllSumPoint(String cNo);

	String selectMonthSumPoint(String cNo);

	String selectNowMonthPoint();

	String selectCPoint(String cNo);

	ArrayList<CMypagePoint> selectPointList(String cNo);

	int listCountPointList(String cNo);

	int orderCancel(OrderList order);

	String selectPdReviewPhoto(PdReview review);

	int getListCountSearchOrderList(HashMap<String, Object> search);

	int getListCountSearchOrderList2(HashMap<String, Object> search);


	Client selectC(String cNo);

	ArrayList<LikeHp> selectHpAvgList(String cNo);

	int getMyChooseCount(String cNo);

	int getMyNonChooseCount(String cNo);

	List<AskDrBoard> getChooseList(String cNo, CMypagePageInfo choosePi);

	List<AskDrBoard> getNonChooseList(String cNo, CMypagePageInfo nonChoosePi);

	int getHpReCount(String cNo);

	ArrayList<HpReview> getMyHpReList(String cNo, CMypagePageInfo pi);

	int getProductQnaAnswerCount(HashMap<String, String> param);

	int getProductQnaNonAnswerCount(HashMap<String, String> param);

	List<ProductQna> getAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo answerPi);

	List<ProductQna> getNonAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo nonAnswerPi);

	



}

