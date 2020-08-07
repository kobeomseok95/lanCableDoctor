package com.kh.landocProject.dmypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.dmypage.model.dao.DmyPageDao;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;

@Service("dMypageService")
public class DmyPageServiceImpl implements DmyPageService{

	@Autowired
	DmyPageDao dMypageDao;

	@Override
	public ArrayList<DPdReview> selectPdReviewList(String drNo, CMypagePageInfo pi) {
		
		return dMypageDao.selectPdReviewList(drNo,pi);
	}
	
	@Override
	public int getListCountReview() {
		
		return dMypageDao.getListCoundReview();
	}

	@Override
	public ArrayList<DOrderList> selectOrderList(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.selectOrderList(drNo, pi);
	}

	@Override
	public DOrderList selectOrderDetail(DOrderList order) {
		// TODO Auto-generated method stub
		return dMypageDao.selectOrderDetail(order);
	}

	@Override
	public ArrayList<DOrderList> orderListDateSearch(DOrderList order, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderListDateSearch(order, pi);
	}

	@Override
	public ArrayList<DOrderList> orderListDateSearch2(DOrderList order, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderListDateSearch2(order, pi);
	}

	@Override
	public int pdReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.pdReviewInsert(review);
	}

	@Override
	public int updateOrderStatus(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateOrderStatus(review);
	}

	@Override
	public ArrayList<DOrderQna> orderQnaListY(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaListY(drNo, pi);
	}

	@Override
	public ArrayList<DOrderQna> orderQnaListN(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaListN(drNo);
	}

	@Override
	public ArrayList<DOrderList> orderCancelList(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderCancelList(drNo, pi);
	}

	@Override
	public int orderQnaInsert(DOrderQna qna) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaInsert(qna);
	}

	

	@Override
	public int getListCountOrderList() {
		// TODO Auto-generated method stub
		return dMypageDao.getListCountOrderList();
	}

	@Override
	public int getListCountOrderQna() {
		// TODO Auto-generated method stub
		return dMypageDao.getListCountOrderQna();
	}

	@Override
	public DPdReview updateReview(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateReview(review);
	}

	@Override
	public int updateReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateReviewInsert(review);
	}

	@Override
	public String selectAllSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectAllSumPoint(drNo);
	}

	@Override
	public String selectMonthSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectMonthSumPoint(drNo);
	}

	@Override
	public String selectNowMonthPoint() {
		// TODO Auto-generated method stub
		return dMypageDao.selectNowMonthPoint();
	}

	@Override
	public String selectCPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectCPoint(drNo);
	}

	@Override
	public ArrayList<DrMypagePoint> selectPointList(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectPointList(drNo);
	}

	@Override
	public int listCountPointList(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.listCountPointList(drNo);
	}

	@Override
	public int orderCancel(DOrderList order) {
		// TODO Auto-generated method stub
		return dMypageDao.orderCancel(order);
	}
	
	
	
	
}
