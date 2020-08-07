package com.kh.landocProject.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("payDao")
public class PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
}
