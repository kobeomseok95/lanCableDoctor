package com.kh.landocProject.admin.sales.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.admin.sales.model.service.AdminSalesService;
import com.kh.landocProject.admin.sales.model.vo.AdminSales;

@Controller
public class AdminSalesController {

	@Autowired
	AdminSalesService salesService;
	
	
	@RequestMapping(value="salesManage.do")
	public ModelAndView salesManage(ModelAndView mv, AdminSales as) {
		
		as =  salesService.getMonthlySales();
		
		if(as != null) {
			mv.addObject("as", as);
			mv.setViewName("admin/sales/salesManage");
		}
		return mv;
	}
	
}
