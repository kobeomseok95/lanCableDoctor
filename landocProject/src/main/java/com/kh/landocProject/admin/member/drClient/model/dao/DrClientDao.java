package com.kh.landocProject.admin.member.drClient.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;

@Repository("dDao")
public class DrClientDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int getListCount() {
		System.out.println("dao에서 전체 리스트 갯수 : " + sqlSessionTemplate.selectOne("drClientMapper.getListCount"));

		 return sqlSessionTemplate.selectOne("drClientMapper.getListCount");
	}

	public ArrayList<DrClientPage> selectAllList(PageInfo pi) {
		 int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
	      
	      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
	      
	      return (ArrayList)sqlSessionTemplate.selectList("drClientMapper.selectAllList",null, rowBounds);
	}

	public int getSearchListCount(DrClientSearchCondition dsc) {
		System.out.println("dao에서 검색 리스트 카운트 : " + sqlSessionTemplate.selectOne("drClientMapper.selectSearchListCount",dsc));
	      
	      return sqlSessionTemplate.selectOne("drClientMapper.selectSearchListCount",dsc);
	}

	public ArrayList<DrClientPage> selectList(PageInfo pi, DrClientSearchCondition dsc) {
		 int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
	      
	      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
	      
	      System.out.println("dao에서 리스트 : " + (ArrayList)sqlSessionTemplate.selectList("drClientMapper.selectList", dsc, rowBounds));
	      
	      return (ArrayList)sqlSessionTemplate.selectList("drClientMapper.selectList", dsc, rowBounds);
	}

}
