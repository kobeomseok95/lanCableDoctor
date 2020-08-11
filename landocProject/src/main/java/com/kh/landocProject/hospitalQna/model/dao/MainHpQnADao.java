package com.kh.landocProject.hospitalQna.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;

@Repository("hpQnaDao")
public class MainHpQnADao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<MainHpQnA> selectHpQnaList(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpQnaMapper.selectHpQna",hpNo);
	}

	public int selectHpQnaCount(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpQnaMapper.selectHpQnaCount", hpNo);
	}

	public int insertHpQna(MainHpQnA hpQna) {
		
		return sqlSessionTemplate.insert("MainHpQnaMapper.insertHpQna", hpQna);
	}
	
	
	
	
}
