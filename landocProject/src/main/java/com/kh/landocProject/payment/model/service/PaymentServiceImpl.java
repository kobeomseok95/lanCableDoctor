package com.kh.landocProject.payment.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.payment.model.dao.PaymentDao;

@Service("payService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	PaymentDao payDao;
}
