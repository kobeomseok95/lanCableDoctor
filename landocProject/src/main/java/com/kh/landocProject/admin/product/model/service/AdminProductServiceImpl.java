package com.kh.landocProject.admin.product.model.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.product.model.dao.AdminProductDao;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPhoto;

@Service
public class AdminProductServiceImpl implements AdminProductService{

	@Resource
	private AdminProductDao adminProductDao;
	
	@Override
	public int getAdminListCount(HashMap<String, Object> param) {
		return adminProductDao.getAdminListCount(param);
	}

	@Override
	public List<Product> getAdminProducts(HashMap<String, Object> param, PageInfo pageInfo) {
		return adminProductDao.getAdminProducts(param, pageInfo);
	}

	@Override
	public int insertProduct(Product p) {
		return adminProductDao.insertProduct(p);
	}

	@Override
	public int insertProductPhoto(ProductPhoto pt) {
		return adminProductDao.insertProductPhoto(pt);
	}

	
}
