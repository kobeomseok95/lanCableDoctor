package com.kh.landocProject.product.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPagination;

public interface ProductService {

	int getListCount(HashMap<String, Integer> param);

	List<Product> getMainList(HashMap<String, Integer> param, ProductPagination page);
}
