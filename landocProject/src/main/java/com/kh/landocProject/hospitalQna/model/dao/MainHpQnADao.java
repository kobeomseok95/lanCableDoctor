package com.kh.landocProject.hospitalQna.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
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

	public ArrayList<MainHpQnA> getHpQnaList(int hpNo, CMypagePageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpQnaMapper.getHpQnaList", hpNo, rowBounds);
	}

	public int getHpQnaListCount(int hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpQnaMapper.getHpQnaListCount", hpNo);
	}

	public ArrayList<MainHpQnA> getNotYetList(int hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpQnaMapper.getNotYetList", hpNo);
	}

	public int updateHpQnaReply(HashMap<String, Object> map) {
		
		return sqlSessionTemplate.update("MainHpQnaMapper.updateHpQnaReply", map);
	}
	
	
	
	
}
