package com.kh.landocProject.admin.hospital.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.MainHp;

@Repository("hpDao")
public class HospitalDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public int getListCount() {

		return sqlSessionTemplate.selectOne("adminHpMapper.getListCount");

	}

	public ArrayList<MainHp> selectAllList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("adminHpMapper.selectAllList", null, rowBounds);
	}

	public int getSearchListCount(AdminHpSearchCondition sc) {
		
		return sqlSessionTemplate.selectOne("adminHpMapper.selectSearchListCount", sc);
	}

	public ArrayList<MainHp> selectSearchList(PageInfo pi, AdminHpSearchCondition sc) {
		
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("adminHpMapper.selectSearchList", sc, rowBounds);
	}

}
