package com.kh.landocProject.admin.hospital.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpTime;
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

	public MainHp selectHpDetail(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("adminHpMapper.selectHpDetail", hpNo);
	}

	public ArrayList<MainHp> selectHpDetailPhoto(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("adminHpMapper.selectHpDetailPhoto", hpNo);
	}

	public ArrayList<HpTime> selectHpDetailTime(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("adminHpMapper.selectHpDetailTime", hpNo);
	}

	public MainHp selectNonAppHp(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("adminHpMapper.selectNonAppHp", hpNo);
	}

	public ArrayList<MainHp> selectNonAppPic(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("adminHpMapper.selectNonAppPic", hpNo);
	}

	public int updateHp(MainHp hp) {
		
		return sqlSessionTemplate.update("adminHpMapper.updateHp", hp);
	}

	public int updatePic1(MainHp hp1) {
		
		return sqlSessionTemplate.update("adminHpMapper.updatePic1", hp1);
	}

	public int updatePic2(MainHp hp2) {
		
		return sqlSessionTemplate.update("adminHpMapper.updatePic2", hp2);
	}

	public int updatePic3(MainHp hp3) {
		
		return sqlSessionTemplate.update("adminHpMapper.updatePic3", hp3);
	}

	public int deleteBeforeInfo(Integer hpNo) {
		
		return sqlSessionTemplate.delete("adminHpMapper.deleteBeforeInfo", hpNo);
	}

	public int deleteBeforePic(Integer hpNo) {
		
		return sqlSessionTemplate.delete("adminHpMapper.deleteBeforePic", hpNo);
	}

	public int updateDenied(Integer hpNo) {
		
		return sqlSessionTemplate.update("adminHpMapper.updateDenied", hpNo);
	}

	public int getNonApprovalHospitalCounts() {
		return sqlSessionTemplate.selectOne("adminHpMapper.getNonApprovalHospitalCounts");
	}

	public List<Hospital> getNonApprovalHospitals(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return sqlSessionTemplate.selectList("adminHpMapper.getNonApprovalHospitals", null, rowBounds);
	}

	public Hospital getNonApprovalHospitalDetail(int hpNo) {
		return sqlSessionTemplate.selectOne("adminHpMapper.getNonApprovalHospitalDetail", hpNo);
	}

}
