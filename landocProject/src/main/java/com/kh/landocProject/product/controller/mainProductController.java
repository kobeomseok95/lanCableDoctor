package com.kh.landocProject.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.landocProject.product.model.service.ProductService;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPagination;

@Controller
public class mainProductController {
	
	@Resource
	private ProductService productServiceImpl;
	
	@RequestMapping(value="productIndex.do", method=RequestMethod.GET)
	public ModelAndView productIndex(ModelAndView mv,
														@RequestParam int sortNo,
														@RequestParam int pageNo,
														@RequestParam int categoryNo) {
		HashMap<String, Integer> param = new HashMap<String, Integer>();
		param.put("categoryNo", categoryNo);
		int listCount = productServiceImpl.getListCount(param);
		
		ProductPagination page = ProductPagination.getPagination(pageNo, listCount);
		param.put("sortNo", sortNo);
		
		List<Product> products = productServiceImpl.getMainList(param, page);
		
		mv.addObject("products",products);
		mv.addObject("page", page);
		mv.addObject("sortNo", sortNo);
		mv.addObject("categoryNo", categoryNo);
		mv.addObject("listCount", listCount);
		mv.setViewName("product/productIndex");
		return mv;
	}
	
	@RequestMapping(value="productSearch.do", method=RequestMethod.GET)
	public ModelAndView productSearch(ModelAndView mv,
															@RequestParam String keyword,
															@RequestParam(required=false) Integer sortNo,
															@RequestParam(required=false) Integer pageNo) {
		HashMap<String, Object> param = new HashMap<String, Object>();
		param.put("keyword", keyword);
		int listCount = productServiceImpl.getSearchCount(param);
		if(pageNo == null)	pageNo = 1;
		if(sortNo == null) sortNo = 1;
		param.put("pageNo", pageNo);
		param.put("sortNo", sortNo);
		
		ProductPagination page = ProductPagination.getPagination(pageNo, listCount);
		List<Product> products = productServiceImpl.getSearchProducts(param, page);
		
		mv.addObject("products", products);
		mv.addObject("page", page);
		mv.addObject("sortNo", sortNo);
		mv.addObject("listCount", listCount);
		mv.addObject("keyword", keyword);
		mv.setViewName("product/productSearch");
		return mv;
	}
	
	@RequestMapping(value="suggestProduct.do", method=RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> suggestProduct(String keyword) {
		HashMap<String, Object> returnValue = new HashMap<>();
		List<Product> suggestProducts = productServiceImpl.suggestProduct(keyword);
		
		if(suggestProducts.size() == 0) {
			returnValue.put("result", "not");
			return returnValue;
		}
		else {
			returnValue.put("result", "ok");
		}
		returnValue.put("suggestProducts", suggestProducts);
		return returnValue;
	}
	
	@RequestMapping(value="productDetail.do", method=RequestMethod.GET)
	public String productDetail() {
		return "product/productDetail";
	}
	
}









