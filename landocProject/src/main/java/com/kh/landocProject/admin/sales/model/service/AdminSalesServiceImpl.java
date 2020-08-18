package com.kh.landocProject.admin.sales.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.sales.model.dao.AdminSalesDao;
import com.kh.landocProject.admin.sales.model.vo.AdminSales;

@Service("salesService")
public class AdminSalesServiceImpl implements AdminSalesService{

	@Autowired
	AdminSalesDao salesDao;

	@Override
	public AdminSales getMonthlySales() {
		
		return salesDao.getMonthlySales();
	}


}
