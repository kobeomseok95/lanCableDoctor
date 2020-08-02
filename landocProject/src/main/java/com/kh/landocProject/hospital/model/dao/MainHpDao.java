package com.kh.landocProject.hospital.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.hospital.model.vo.MainHp;

@Repository("mainHpDao")
public class MainHpDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public MainHp selectOneHp(MainHp hp) {
		
		return sqlSessionTemplate.selectOne("mainHpMapper.selectOneHp", hp);
	}
	
}
