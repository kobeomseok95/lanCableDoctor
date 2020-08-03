package com.kh.landocProject.admin.member.drClient.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dDao")
public class DrClientDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int getListCount() {
		System.out.println("dao에서 전체 리스트 갯수 : " + sqlSessionTemplate.selectOne("drClientMapper.getListCount"));

		 return sqlSessionTemplate.selectOne("drClientMapper.getListCount");
	}

}
