package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PageInfo;
import com.kh.landocProject.cmypage.model.vo.PdReview;

public interface cMypageService {

	ArrayList<LikeHp> selectList(String cNo);

	int selectCount(String cNo);

	ArrayList<PdReview> selectPdReviewList(String cNo, PageInfo pi);

	ArrayList<OrderList> selectOrderList(String cNo, PageInfo pi);

	OrderList selectOrderDetail(OrderList order);

	ArrayList<OrderList> orderListDateSearch(OrderList order, PageInfo pi);

	ArrayList<OrderList> orderListDateSearch2(OrderList order, PageInfo pi);

	int pdReviewInsert(PdReview review);

	int updateOrderStatus(PdReview review);

	ArrayList<OrderQna> orderQnaListY(String cNo, PageInfo pi);

	ArrayList<OrderQna> orderQnaListN(String cNo);

	ArrayList<OrderList> orderCancelList(String cNo, PageInfo pi);

	int orderQnaInsert(OrderQna qna);

	int getListCount();

}

