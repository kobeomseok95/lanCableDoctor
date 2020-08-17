package com.kh.landocProject.admin.product.model.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;

public interface AdminProductService {

	int getAdminListCount(HashMap<String, Object> param);

	List<Product> getAdminProducts(HashMap<String, Object> param, PageInfo pageInfo);

	int insertProduct(Product p);

	int insertProductPhoto(ProductPhoto pt);

	List<String> getProductFileNames(int pdNo);

	int deleteProduct(int pdNo);

	Product getProductDetail(int pdNo);

	int updateProduct(Product p);

	int updateProductPhoto(List<ProductPhoto> photos);

	int getAdminQnaCount();

	List<ProductQna> getAdminQnas(PageInfo pageInfo);

	ProductQna getAdminQna(int pdqNo);

	int answerQna(HashMap<String, Object> param);

	int deleteQnA(int pdqNo);

	int getAdminQnaSearchCount(HashMap<String, Object> param);

	List<ProductQna> getAdminSearchQnas(PageInfo pageInfo, HashMap<String, Object> param);

}
