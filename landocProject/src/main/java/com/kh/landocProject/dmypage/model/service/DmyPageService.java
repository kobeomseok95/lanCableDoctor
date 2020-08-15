package com.kh.landocProject.dmypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;

public interface DmyPageService {
	ArrayList<DPdReview> selectPdReviewList(String drNo, CMypagePageInfo pi);

	ArrayList<DOrderList> selectOrderList(String drNo, CMypagePageInfo pi);

	DOrderList selectOrderDetail(DOrderList order);

	ArrayList<DOrderList> orderListDateSearch(DOrderList order, CMypagePageInfo pi);

	ArrayList<DOrderList> orderListDateSearch2(DOrderList order, CMypagePageInfo pi);

	int pdReviewInsert(DPdReview review);

	int updateOrderStatus(DPdReview review);

	ArrayList<DOrderQna> orderQnaListY(String drNo, CMypagePageInfo pi);

	ArrayList<DOrderQna> orderQnaListN(String drNo);

	ArrayList<DOrderList> orderCancelList(String drNo, CMypagePageInfo pi);

	int orderQnaInsert(DOrderQna qna);

	// 리뷰 수
	int getListCountReview(String drNo);

	// 주문 수
	int getListCountOrderList(HashMap<String,Object> order);

	// 주문 qna 수
	int getListCountOrderQna(String drNo);

	DPdReview updateReview(DPdReview review);

	int updateReviewInsert(DPdReview review);

	String selectAllSumPoint(String drNo);

	String selectMonthSumPoint(String drNo);

	String selectNowMonthPoint();

	String selectCPoint(String drNo);

	ArrayList<DrMypagePoint> selectPointList(String drNo);

	int listCountPointList(String drNo);

	int orderCancel(DOrderList order);

	String selectPdReviewPhoto(DPdReview review);

	int getListCountSearchOrderList(HashMap<String, Object> search);

	int getListCountSearchOrderList2(HashMap<String, Object> search);
}
