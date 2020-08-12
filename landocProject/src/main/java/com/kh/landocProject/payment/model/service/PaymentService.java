package com.kh.landocProject.payment.model.service;

import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.OrderMg;
import com.kh.landocProject.payment.model.vo.OrderProduct;
import com.kh.landocProject.payment.model.vo.PayProduct;
import com.kh.landocProject.payment.model.vo.Payment;

public interface PaymentService {

	MemberPay loginClient3(String cNo);

	PayProduct selectPro(int pdNo);

	MemberPay loginDrClient3(String drNo);

	int insertPayment(Payment p);

	int insertPayment1(Payment p);

	int insertOrderMg(OrderMg or);

	int insertOrderPro(OrderProduct op);

	int updateC(Payment p);

	int updateDr(Payment p);





}
