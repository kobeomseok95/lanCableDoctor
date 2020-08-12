package com.kh.landocProject.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.payment.model.dao.PaymentDao;
import com.kh.landocProject.payment.model.vo.Cart;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.OrderMg;
import com.kh.landocProject.payment.model.vo.OrderProduct;
import com.kh.landocProject.payment.model.vo.PayProduct;
import com.kh.landocProject.payment.model.vo.Payment;


@Service("payService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao payDao;

	@Override

	public ArrayList<Cart> selectCartList(String cNo) {
		
		return payDao.selectCartList(cNo);
	}

	public MemberPay loginClient3(String cNo) {
		
		return payDao.loginClient3(cNo);
	}

	@Override
	public PayProduct selectPro(int pdNo) {
		
		return payDao.selectPro(pdNo);
	}

	@Override
	public MemberPay loginDrClient3(String drNo) {
		
		return payDao.loginDrClient3(drNo);
	}

	@Override
	public int insertPayment(Payment p) {
	
		return payDao.insertPayment(p);
	}

	@Override
	public int insertPayment1(Payment p) {
		
		return payDao.insertPayment1(p);
	}

	@Override
	public int insertOrderMg(OrderMg or) {
	
		return payDao.insertOrderMg(or);
	}

	@Override
	public int insertOrderPro(OrderProduct op) {
		
		return payDao.insertOrderPro(op);
	}

	@Override
	public int updateC(Payment p) {
		
		return payDao.updateC(p);
	}

	@Override
	public int updateDr(Payment p) {
		
		return payDao.updateDr(p);
	}



}
