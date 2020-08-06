package com.kh.landocProject.product.model.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.product.model.dao.ProductDao;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPagination;

@Service
public class ProductServiceImpl implements ProductService{

	@Resource
	private ProductDao productDao;

	@Override
	public int getListCount(HashMap<String, Integer> param) {
		return productDao.getListCount(param);
	}

	@Override
	public List<Product> getMainList(HashMap<String, Integer> param, ProductPagination page) {
		return productDao.getMainList(param, page);
	}

}
