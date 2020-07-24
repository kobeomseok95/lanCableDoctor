package com.kh.landocProject.cmypage.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.cmypage.model.dao.cMypageDao;
import com.kh.landocProject.cmypage.model.vo.LikeHp;
import com.kh.landocProject.cmypage.model.vo.OrderList;
import com.kh.landocProject.cmypage.model.vo.OrderQna;
import com.kh.landocProject.cmypage.model.vo.PageInfo;
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
	public ArrayList<PdReview> selectPdReviewList(String cNo, PageInfo pi) {

		return cmDao.selectPdReviewList(cNo, pi);
	}

	@Override
	public ArrayList<OrderList> selectOrderList(String cNo, PageInfo pi) {

		return cmDao.selectOrderList(cNo, pi);
	}

	@Override
	public OrderList selectOrderDetail(OrderList order) {

		return cmDao.selectOrderDetail(order);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch(OrderList order, PageInfo pi) {

		return cmDao.orderListDateSearch(order, pi);
	}

	@Override
	public ArrayList<OrderList> orderListDateSearch2(OrderList order, PageInfo pi) {

		return cmDao.orderListDateSearch2(order, pi);
	}

	@Override
	public int pdReviewInsert(PdReview review) {

		return cmDao.pdReviewInsert(review);
	}

	@Override
	public int updateOrderStatus(PdReview review) {

		return cmDao.updateOrderStatus(review);
	}

	@Override
	public ArrayList<OrderQna> orderQnaListY(String cNo, PageInfo pi) {

		return cmDao.orderQnaListY(cNo, pi);
	}

	@Override
	public ArrayList<OrderQna> orderQnaListN(String cNo) {

		return cmDao.orderQnaListN(cNo);
	}

	@Override
	public ArrayList<OrderList> orderCancelList(String cNo, PageInfo pi) {

		return cmDao.orderCancelList(cNo, pi);
	}

	@Override
	public int orderQnaInsert(OrderQna qna) {

		return cmDao.orderQnaInsert(qna);
	}

	@Override
	public int getListCount() {

		return cmDao.getListCount();
	}

}

