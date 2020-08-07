package com.kh.landocProject.admin.orderQna.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.orderQna.model.dao.OrderQnaDao;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;

@Service("oqService")
public class OrderQnaServiceImpl implements OrderQnaService{

	@Autowired
	OrderQnaDao oqDao;
	@Override
	public ArrayList<OrderQna> selectOrdrQnaList(PageInfo pi) {
		
		return oqDao.selectOrderQnaList(pi);
	}
	@Override
	public OrderQna selectOrderQnaDetail(int oqnaNo) {
		
		return oqDao.selectOrderQnaDetail(oqnaNo);
	}
	@Override
	public ArrayList<OrderQna> searchOrderQna(OrderQna qna,PageInfo pi) {
	
		return oqDao.searchOrderQna(qna,pi);
	}
	@Override
	public int getListCountOrderQna() {
		
		return oqDao.getListCountOrderQna();
	}
	@Override
	public ArrayList<OrderQna> qnaStatusN(PageInfo pi) {
		
		return oqDao.qnaStatusN(pi);
	}
	@Override
	public int orderQnaInsert(OrderQna qna) {
		
		return oqDao.orderQnaInsert(qna);
	}

	
	
}
