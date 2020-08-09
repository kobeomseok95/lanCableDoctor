package com.kh.landocProject.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.payment.model.dao.PaymentDao;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.PayProduct;

@Service("payService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao payDao;

	@Override
	public MemberPay payClientSelect(String cNo) {
		
		return payDao.PayClientSelect(cNo);
	}

	@Override
	public PayProduct selectPro(int pdNo) {
		
		return payDao.selectPro(pdNo);
	}



	
}
