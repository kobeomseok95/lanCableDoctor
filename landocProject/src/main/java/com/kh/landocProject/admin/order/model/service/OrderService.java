package com.kh.landocProject.admin.order.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.order.model.vo.OrderManage;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;



public interface OrderService {

	ArrayList<OrderManage> selectOrderMgList(PageInfo pi);

	ArrayList<OrderManage> selectRefundList(PageInfo pi);

	int getListCountOrdergMgList();

	ArrayList<OrderManage> selectCancelList(PageInfo pi);

	ArrayList<OrderManage> selectHoldList(PageInfo pi);

	ArrayList<OrderManage> searchOrderMg(OrderManage order, PageInfo pi);

	int omGrant(OrderManage order);

	int omGrantCancel(OrderManage order);

	
}
