package com.kh.landocProject.admin.hospital.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("hpDao")
public class HospitalDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getListCount() {
		
		return sqlSessionTemplate.selectOne("adminHpMapper.getListCount");
	
	
	
	
	
	
	
}
}