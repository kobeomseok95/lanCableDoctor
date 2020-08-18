package com.kh.landocProject.payment.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

	@Override
	public int cartInsert(HashMap<String, Object> cart) {
		
		return payDao.cartInsert(cart);
	}

	@Override
	public int cartUpdate(HashMap<String, Object> cart) {
		
		return payDao.cartUpdate(cart);
	}

	@Override
	public int selectOrderNo() {
		
		return payDao.selectOrderNo();
	}

	@Override
	public int cartPaySuccess(List<HashMap<String, Object>> list) {
	
		return payDao.cartPaySuccess(list);
	}

	@Override
	public int deleteC(List<HashMap<String, Object>> list) {
		
		return payDao.cartPayDelete(list);
	}

	@Override
	public int deleteD(List<HashMap<String, Object>> list) {
		
		return payDao.cartPayDeleteD(list);
	}

}
