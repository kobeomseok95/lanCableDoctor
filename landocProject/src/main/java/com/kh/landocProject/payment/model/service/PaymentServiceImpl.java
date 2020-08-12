package com.kh.landocProject.payment.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.payment.model.dao.PaymentDao;
import com.kh.landocProject.payment.model.vo.Cart;

@Service("payService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao payDao;

	@Override
	public ArrayList<Cart> selectCartList(String cNo) {
		
		return payDao.selectCartList(cNo);
	}
}
