package com.kh.landocProject.product.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPagination;

public interface ProductService {

	int getListCount(HashMap<String, Integer> param);

	List<Product> getMainList(HashMap<String, Integer> param, ProductPagination page);

	int getSearchCount(HashMap<String, Object> param);

	List<Product> suggestProduct(String keyword);

	List<Product> getSearchProducts(HashMap<String, Object> param, ProductPagination page);
}