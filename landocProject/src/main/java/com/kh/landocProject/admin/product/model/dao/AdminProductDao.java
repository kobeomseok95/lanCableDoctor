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

	

}
