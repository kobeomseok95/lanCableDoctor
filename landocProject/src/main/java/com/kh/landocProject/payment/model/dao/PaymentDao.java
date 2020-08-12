package com.kh.landocProject.payment.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.payment.model.vo.Cart;

@Repository("payDao")
public class PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<Cart> selectCartList(String cNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList(".selectCartList",cNo);
	}
}
