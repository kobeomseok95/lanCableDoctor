package com.kh.landocProject.product.model.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.dmypage.model.vo.DrProductRecommends;
import com.kh.landocProject.product.model.dao.ProductDao;
import com.kh.landocProject.product.model.vo.DrComment;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductDetailPagination;
import com.kh.landocProject.product.model.vo.ProductPagination;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.product.model.vo.ProductReview;

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

	@Override
	public int getSearchCount(HashMap<String, Object> param) {
		return productDao.getSearchCount(param);
	}

	@Override
	public List<Product> suggestProduct(String keyword) {
		return productDao.suggestProduct(keyword);
	}

	@Override
	public List<Product> getSearchProducts(HashMap<String, Object> param, ProductPagination page) {
		return productDao.getSearchProducts(param, page);
	}

	@Override
	public Product getProductDetail(int pdNo) {
		return productDao.getProductDetail(pdNo);
	}

	@Override
	public List<ProductPhoto> getProductPhotos(int pdNo) {
		return productDao.getProductPhotos(pdNo);
	}

	@Override
	public List<ProductReview> getProductReviews(int pdNo, ProductDetailPagination reviewPage) {
		return productDao.getProductReviews(pdNo, reviewPage);
	}

	@Override
	public List<ProductQna> getProductQnas(int pdNo, ProductDetailPagination qnaPage) {
		return productDao.getProductQnas(pdNo, qnaPage);
	}

	@Override
	public List<DrProductRecommends> getProductRecommends(int pdNo, ProductDetailPagination recommendPage) {
		return productDao.getProductRecommends(pdNo, recommendPage);
	}

	@Override
	public int getReviewCount(int pdNo) {
		return productDao.getReviewCount(pdNo);
	}

	@Override
	public int getQnaCount(int pdNo) {
		return productDao.getQnaCount(pdNo);
	}

	@Override
	public int getRecommendCount(int pdNo) {
		return productDao.getRecommendCount(pdNo);
	}

	@Override
	public int updateViewCount(int pdNo) {
		return productDao.updateViewCount(pdNo);
	}

	@Override
	public ProductQna getAnswer(int pdqNo) {
		return productDao.getAnswer(pdqNo);
	}

	@Override
	public int insertQna(ProductQna qna) {
		return productDao.insertQna(qna);
	}

	@Override
	public List<Product> proRecommand(HashMap<String, Integer> param) {
		
		return productDao.proRecommand(param);
	}

	@Override
	public int drRecommendInsert(List<HashMap<String, Object>> list) {
		
		return productDao.drRecommendInsert(list);
	}

	@Override
	public int recoUpdate(List<HashMap<String, Object>> list) {
		
		return productDao.recoUpdate(list);
	}

	@Override
	public int checkPdNoDup(DrComment dc) {
		
		return productDao.checkPdNoDup(dc);
	}





}
