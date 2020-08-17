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
import com.kh.landocProject.product.model.vo.ProductQna;

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

	@Override
	public List<String> getProductFileNames(int pdNo) {
		return adminProductDao.getProductFileNames(pdNo);
	}

	@Override
	public int deleteProduct(int pdNo) {
		return adminProductDao.deleteProduct(pdNo);
	}

	@Override
	public Product getProductDetail(int pdNo) {
		return adminProductDao.getProductDetail(pdNo);
	}

	@Override
	public int updateProduct(Product p) {
		return adminProductDao.updateProduct(p);
	}

	@Override
	public int updateProductPhoto(List<ProductPhoto> photos) {
		return adminProductDao.updateProductPhoto(photos);
	}

	@Override
	public int getAdminQnaCount() {
		return adminProductDao.getAdminQnaCount();
	}

	@Override
	public List<ProductQna> getAdminQnas(PageInfo pageInfo) {
		return adminProductDao.getAdminQnas(pageInfo);
	}

	@Override
	public ProductQna getAdminQna(int pdqNo) {
		return adminProductDao.getAdminQna(pdqNo);
	}

	@Override
	public int answerQna(HashMap<String, Object> param) {
		return adminProductDao.answerQna(param);
	}

	@Override
	public int deleteQnA(int pdqNo) {
		return adminProductDao.deleteQnA(pdqNo);
	}

	@Override
	public int getAdminQnaSearchCount(HashMap<String, Object> param) {
		return adminProductDao.getAdminQnaSearchCount(param);
	}

	@Override
	public List<ProductQna> getAdminSearchQnas(PageInfo pageInfo, HashMap<String, Object> param) {
		return adminProductDao.getAdminSearchQnas(pageInfo, param);
	}
}
