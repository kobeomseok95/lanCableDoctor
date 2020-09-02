package com.kh.landocProject.hospital.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.hospital.model.vo.Applicant;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.HpTime;
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

	public ArrayList<HpSearch> hpSearchListNormal( HashMap<String,Object> map) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpSearchListNormal",map);
	}

	public ArrayList<HpSearch> hpCateSearchList(String cateName) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.hpCateSearchList",cateName);

	}

	public int deleteOriginPics(Integer hpNo) {
		
		return sqlSessionTemplate.delete("mainHpMapper.deleteOriginPics", hpNo);
	}

	public int insertNewHpPhoto(HashMap<String, Object> parameterPhoto) {
	
		return sqlSessionTemplate.insert("mainHpMapper.insertNewHpPhoto", parameterPhoto);
	}

	public int updateHptime(HpTime ht2) {
		
		return sqlSessionTemplate.update("mainHpMapper.updateHptime", ht2);
	}

	public int updateComment(MainHp hp) {
		
		return sqlSessionTemplate.update("mainHpMapper.updateComment", hp);
	}


	public ArrayList<HpSearch> selectHpAvgList(HashMap<String,Object> map) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.selectHpAvgList",map);
	}

	public ArrayList<HpSearch> selectHpAvgListCate(String cateName) {
		
		return (ArrayList)sqlSessionTemplate.selectList("mainHpMapper.selectHpAvgListCate",cateName);
	}
	public int insertHospital(Hospital h) {
		return sqlSessionTemplate.insert("mainHpMapper.insertHospital", h);
	}

	public int insertApplicant(Applicant a) {
		return sqlSessionTemplate.insert("mainHpMapper.insertApplicant", a);
	}

	public int insertHpList(List<Integer> list) {
		return sqlSessionTemplate.insert("mainHpMapper.insertHpList", list);
	}

	public int deleteHospital(int hpNo) {
		return sqlSessionTemplate.delete("mainHpMapper.deleteHospital", hpNo);
	}

	public int deleteHpList(int hpNo) {
		return sqlSessionTemplate.delete("mainHpMapper.deleteHpList", hpNo);
	}

	public int deleteApplicant(int aNo) {
		return sqlSessionTemplate.delete("mainHpMapper.deleteApplicant", aNo);
	}

	public int getHospitalSeq(Hospital h) {
		return sqlSessionTemplate.selectOne("mainHpMapper.getHospitalSeq", h);
	}

	public int getApplicantSeq(Applicant a) {
		return sqlSessionTemplate.selectOne("mainHpMapper.getApplicantSeq", a);
	}

	public int insertHospitalFiles(Hospital h) {
		return sqlSessionTemplate.insert("mainHpMapper.insertHospitalFiles", h);
	}
	
}
