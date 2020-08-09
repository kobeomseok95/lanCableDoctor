package com.kh.landocProject.payment.model.service;

import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.PayProduct;

public interface PaymentService {

	MemberPay payClientSelect(String cNo);

	PayProduct selectPro(int pdNo);





}
