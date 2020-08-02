package com.kh.landocProject.dmypage.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dMypageDao")
public class DmyPageDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	
	
	
	

}
