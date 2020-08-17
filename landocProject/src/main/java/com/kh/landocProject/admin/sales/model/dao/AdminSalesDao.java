package com.kh.landocProject.admin.sales.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.sales.model.vo.AdminSales;

@Repository("salesDao")
public class AdminSalesDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public AdminSales getMonthlySales() {
		
		return sqlSessionTemplate.selectOne("AdminSalesMapper.getMonthlySales");
	}


}
