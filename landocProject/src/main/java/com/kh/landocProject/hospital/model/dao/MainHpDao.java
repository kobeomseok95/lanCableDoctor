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


	public ArrayList selectRenameList(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.selectRenameList", hpNo);
	}


	public int insertBeforeBasicInfo(MainHp mainHp) {
		
		return sqlSessionTemplate.insert("mainHpMapper.insertBeforeBasicInfo", mainHp);
	}

	public int insertBeEmpPic(MainHp mainHp) {
		
		return sqlSessionTemplate.insert("mainHpMapper.insertBeEmpPic", mainHp);
	}

	public int insertBeIdPic(MainHp mainHp) {
		
		return sqlSessionTemplate.insert("mainHpMapper.insertBeIdPic", mainHp);
	}

	public int insertBeDrPic(MainHp mainHp) {
		
		return sqlSessionTemplate.insert("mainHpMapper.insertBeDrPic", mainHp);
	}

	public int updateApproval(Integer hpNo) {
		
		return sqlSessionTemplate.update("mainHpMapper.updateApproval", hpNo);
	}

	public ArrayList<HpSearch> hpSearchListNormal(HpSearch hp) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpSearchListNormal",hp);
	}

	public ArrayList<HpSearch> hpCateSearchList(String cateName) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpCateSearchList",cateName);

	}
	
}
