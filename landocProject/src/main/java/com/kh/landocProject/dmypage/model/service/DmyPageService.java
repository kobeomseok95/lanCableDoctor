package com.kh.landocProject.dmypage.model.service;

import java.util.ArrayList;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;
import com.kh.landocProject.dmypage.model.vo.DrProfile;
import com.kh.landocProject.hospitalReview.model.vo.HpLike;
import com.kh.landocProject.member.model.vo.DrClient;

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
	int getListCountReview();

	// 주문 수
	int getListCountOrderList();

	// 주문 qna 수
	int getListCountOrderQna();

	DPdReview updateReview(DPdReview review);

	int updateReviewInsert(DPdReview review);

	String selectAllSumPoint(String drNo);

	String selectMonthSumPoint(String drNo);

	String selectNowMonthPoint();

	String selectCPoint(String drNo);

	ArrayList<DrMypagePoint> selectPointList(String drNo);

	int listCountPointList(String drNo);

	int orderCancel(DOrderList order);

	String selectDrProfile(String drNo);

	DrProfile selectOneDr(String replyDrNo);

	int selectMyDrLikeCount(HpLike hl);

	int deleteDrLike(HpLike hl);

	int insertDrLike(HpLike hl);

	int selectDrLikeCount(String drNo);

	int selectLikeCount(String drNo);
}
