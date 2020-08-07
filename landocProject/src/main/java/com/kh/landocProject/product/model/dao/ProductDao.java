package com.kh.landocProject.product.model.dao;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.product.model.vo.Product;
import com.kh.landocProject.product.model.vo.ProductPagination;

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
	
}
