package com.kh.landocProject.product.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.dmypage.model.vo.DrProductRecommends;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductDetailPagination;
import com.kh.landocProject.product.model.vo.ProductPagination;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.product.model.vo.ProductReview;

public interface ProductService {

	int getListCount(HashMap<String, Integer> param);

	List<Product> getMainList(HashMap<String, Integer> param, ProductPagination page);

	int getSearchCount(HashMap<String, Object> param);

	List<Product> suggestProduct(String keyword);

	List<Product> getSearchProducts(HashMap<String, Object> param, ProductPagination page);

	Product getProductDetail(int pdNo);

	List<ProductPhoto> getProductPhotos(int pdNo);

	List<ProductReview> getProductReviews(int pdNo, ProductDetailPagination reviewPage);

	List<ProductQna> getProductQnas(int pdNo, ProductDetailPagination qnaPage);

	List<DrProductRecommends> getProductRecommends(int pdNo, ProductDetailPagination recommendPage);

	int getReviewCount(int pdNo);

	int getQnaCount(int pdNo);

	int getRecommendCount(int pdNo);

	int updateViewCount(int pdNo);
}
