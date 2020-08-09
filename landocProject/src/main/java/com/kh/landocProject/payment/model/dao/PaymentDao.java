package com.kh.landocProject.payment.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.payment.model.vo.MemberPay;
import com.kh.landocProject.payment.model.vo.PayProduct;

@Repository("payDao")
public class PaymentDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public MemberPay PayClientSelect(String cNo) {
		
		return sqlSessionTemplate.selectOne("payMapper.payClientSelect", cNo);
	}

	public PayProduct selectPro(int pdNo) {
	
		return sqlSessionTemplate.selectOne("payMapper.selectPro", pdNo);
	}


}
