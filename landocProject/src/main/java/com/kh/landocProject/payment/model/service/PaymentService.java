package com.kh.landocProject.payment.model.service;

import java.util.ArrayList;

import com.kh.landocProject.payment.model.vo.Cart;

public interface PaymentService {

	ArrayList<Cart> selectCartList(String cNo);

}
