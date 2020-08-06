package com.kh.landocProject.admin.order.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.order.model.dao.OrderDao;
import com.kh.landocProject.admin.order.model.vo.OrderManage;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	OrderDao orderDao;

	@Override
	public ArrayList<OrderManage> selectOrderMgList(PageInfo pi) {
		
		return orderDao.selectOrderMgList(pi);
	}

	@Override
	public ArrayList<OrderManage> selectRefundList(PageInfo pi) {
		
		return orderDao.selectRefundList(pi);
	}

	@Override
	public int getListCountOrdergMgList() {
		
		return orderDao.getListCountOrdergMgList();
	}

	@Override
	public ArrayList<OrderManage> selectCancelList(PageInfo pi) {
		
		return orderDao.selectCancelList(pi);
	}

	@Override
	public ArrayList<OrderManage> selectHoldList(PageInfo pi) {
		
		return orderDao.selectHoldList(pi);
	}

	@Override
	public ArrayList<OrderManage> searchOrderMg(OrderManage order, PageInfo pi) {
		
		return orderDao.searchOrderMg(order,pi);
	}

	@Override
	public int omGrant(OrderManage order) {
		
		return orderDao.omGrant(order);
	}

	@Override
	public int omGrantCancel(OrderManage order) {
		
		return orderDao.omGrantCancel(order);
	}
}
