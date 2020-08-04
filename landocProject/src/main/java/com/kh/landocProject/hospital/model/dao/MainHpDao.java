package com.kh.landocProject.hospital.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.MainHp;

@Repository("mainHpDao")
public class MainHpDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public MainHp selectOneHp(MainHp hp) {
		
		return sqlSessionTemplate.selectOne("mainHpMapper.selectOneHp", hp);
	}

	public ArrayList<MainHp> selectHpTime(MainHp hp) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.selectHpTime", hp);
	}

	public ArrayList<MainHp> selectHpPhoto(MainHp hp) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.selectHpPhoto", hp);
	}


	public ArrayList<HpSearch> hpSearchListNormal(HpSearch hp) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpSearchListNormal",hp);
	}

	public ArrayList<HpSearch> hpCateSearchList(String cateName) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpCateSearchList",cateName);
	}
	
}
