package com.kh.landocProject.product.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.dmypage.model.vo.DrProductRecommends;
import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductDetailPagination;
import com.kh.landocProject.product.model.vo.ProductPagination;
import com.kh.landocProject.product.model.vo.ProductPhoto;
import com.kh.landocProject.product.model.vo.ProductQna;
import com.kh.landocProject.product.model.vo.ProductRecommand;
import com.kh.landocProject.product.model.vo.ProductReview;

@Repository
public class ProductDao {

	@Resource(name="sqlSessionTemplate")
	private SqlSessionTemplate sqlSessionTemplate;
	
	public int getListCount(HashMap<String, Integer> param) {
		return sqlSessionTemplate.selectOne("productMapper.getListCount", param);
	}

	public List<Product> getMainList(HashMap<String, Integer> param, ProductPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getMainList", param, rowBounds);
	}

	public int getSearchCount(HashMap<String, Object> param) {
		return sqlSessionTemplate.selectOne("productMapper.getSearchCount", param);
	}

	public List<Product> suggestProduct(String keyword) {
		return sqlSessionTemplate.selectList("productMapper.suggestProduct", keyword);
	}

	public List<Product> getSearchProducts(HashMap<String, Object> param, ProductPagination page) {
		int offset = (page.getCurrentPage() - 1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getSearchProducts", param, rowBounds);
	}

	public Product getProductDetail(int pdNo) {
		return sqlSessionTemplate.selectOne("productMapper.getProductDetail", pdNo);
	}

	public List<ProductPhoto> getProductPhotos(int pdNo) {
		return sqlSessionTemplate.selectList("productMapper.getProductPhotos", pdNo);
	}

	public List<ProductReview> getProductReviews(int pdNo, ProductDetailPagination reviewPage) {
		int offset = (reviewPage.getCurrentPage() - 1) * reviewPage.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, reviewPage.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getProductReviews", pdNo, rowBounds);
	}

	public List<ProductQna> getProductQnas(int pdNo, ProductDetailPagination qnaPage) {
		int offset = (qnaPage.getCurrentPage() - 1) * qnaPage.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, qnaPage.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getProductQnas", pdNo, rowBounds);
	}

	public List<DrProductRecommends> getProductRecommends(int pdNo, ProductDetailPagination recommendPage) {
		int offset = (recommendPage.getCurrentPage() - 1) * recommendPage.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, recommendPage.getBoardLimit());
		return sqlSessionTemplate.selectList("productMapper.getProductRecommends", pdNo, rowBounds);
	}

	public int getReviewCount(int pdNo) {
		return sqlSessionTemplate.selectOne("productMapper.getReviewCount", pdNo);
	}

	public int getQnaCount(int pdNo) {
		return sqlSessionTemplate.selectOne("productMapper.getQnaCount", pdNo);
	}

	public int getRecommendCount(int pdNo) {
		return sqlSessionTemplate.selectOne("productMapper.getRecommendCount", pdNo);
	}

	public int updateViewCount(int pdNo) {
		return sqlSessionTemplate.update("productMapper.updateViewCount", pdNo);
	}
	
	public ProductQna getAnswer(int pdqNo) {
		return sqlSessionTemplate.selectOne("productMapper.getAnswer", pdqNo);
	}

	public int insertQna(ProductQna qna) {
		return sqlSessionTemplate.insert("productMapper.insertQna", qna);
	}

	public List<Product> proRecommand(HashMap<String, Integer> param) {
		
		return sqlSessionTemplate.selectList("productMapper.proRecommand", param);
	}

	public int drRecommendInsert(List<HashMap<String, Object>> list) {
		
		return sqlSessionTemplate.insert("productMapper.drRecommendInsert", list);
	}

	public int recoUpdate(List<HashMap<String, Object>> list) {
		
		return sqlSessionTemplate.update("productMapper.recoUpdate", list);
	}

	public List<String> selectP(String drNo) {
		
		return sqlSessionTemplate.selectList("productMapper.selectP", drNo);
	}

	

	
}
