package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.cmypage.model.dao.cMypageDao;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.PdReview;

@Service("cmService")
public class cMypageServiceImpl implements cMypageService {

	@Autowired
	cMypageDao cmDao;
	
	@Override
	public ArrayList<LikeHp> selectList(String cNo) {
	
		return cmDao.selectList(cNo);
	}

	@Override
	public int selectCount(String cNo) {
		
		return cmDao.selectCount(cNo);
	}

	@Override
	public ArrayList<PdReview> selectPdReviewList(String cNo) {
	
		return cmDao.selectPdReviewList(cNo);
	}

	@Override
	public ArrayList<OrderList> selectOrderList(String cNo) {
		
		return cmDao.selectOrderList(cNo);
	}

	@Override
	public OrderList selectOrderDetail(OrderList order) {
		
		return cmDao.selectOrderDetail(order);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch(OrderList order) {
		
		return cmDao.orderListDateSearch(order);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch2(OrderList order) {
		
		return cmDao.orderListDateSearch2(order);
	}

	

	

}
