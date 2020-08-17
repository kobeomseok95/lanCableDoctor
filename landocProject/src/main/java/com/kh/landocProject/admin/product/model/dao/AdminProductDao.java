package com.kh.landocProject.admin.product.model.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;

@Repository
public class AdminProductDao {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getAdminListCount(HashMap<String, Object> param) {
		return sqlSessionTemplate.selectOne("productMapper.getListCount", param);
	}

	public List<Product> getAdminProducts(HashMap<String, Object> param, PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getAdminProducts", param, rowBounds);
	}

	public int insertProduct(Product p) {
		return sqlSessionTemplate.insert("productMapper.insertProduct", p);
	}

	public int insertProductPhoto(ProductPhoto pt) {
		return sqlSessionTemplate.insert("productMapper.insertProductPhoto", pt);
	}

	public List<String> getProductFileNames(int pdNo) {
		return sqlSessionTemplate.selectList("productMapper.getProductFileNames", pdNo);
	}

	public int deleteProduct(int pdNo) {
		return sqlSessionTemplate.update("productMapper.deleteProduct", pdNo);
	}

	public Product getProductDetail(int pdNo) {
		return sqlSessionTemplate.selectOne("productMapper.getProductDetail", pdNo);
	}

	public int updateProduct(Product p) {
		return sqlSessionTemplate.update("productMapper.updateProduct", p);
	}

	public int updateProductPhoto(List<ProductPhoto> photos) {
		return sqlSessionTemplate.update("productMapper.updateProductPhoto", photos);
	}

	public int getAdminQnaCount() {
		return sqlSessionTemplate.selectOne("productMapper.getAdminQnaCount");
	}

	public List<ProductQna> getAdminQnas(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getAdminQnas", null, rowBounds);
	}

	public ProductQna getAdminQna(int pdqNo) {
		return sqlSessionTemplate.selectOne("productMapper.getAdminQna", pdqNo);
	}

	public int answerQna(HashMap<String, Object> param) {
		return sqlSessionTemplate.update("productMapper.answerQna", param);
	}

	public int deleteQnA(int pdqNo) {
		return sqlSessionTemplate.delete("productMapper.deleteQnA", pdqNo);
	}
}
