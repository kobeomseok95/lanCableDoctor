package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.hospital.model.dao.MainHpDao;
import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;

@Service("mainHpService")
public class MainHpServiceImpl implements MainHpService{

	@Autowired
	MainHpDao mainHpDao;

	@Override
	public MainHp selectOneHp(MainHp hp) {
		
		return mainHpDao.selectOneHp(hp);
	}

	@Override
	public ArrayList<MainHp> selectHpTime(MainHp hp) {
		
		return mainHpDao.selectHpTime(hp);
	}

	@Override
	public ArrayList<MainHp> selectHpPhoto(MainHp hp) {
		
		return mainHpDao.selectHpPhoto(hp);
	}


	@Override
	public ArrayList selectRenameList(Integer hpNo) {
		
		return mainHpDao.selectRenameList(hpNo);
	}


	@Override
	public int insertBeforeBasicInfo(MainHp mainHp) {
		
		return mainHpDao.insertBeforeBasicInfo(mainHp);
	}

	@Override
	public int insertBeEmpPic(MainHp mainHp) {
		
		return mainHpDao.insertBeEmpPic(mainHp);
	}

	@Override
	public int insertBeIdPic(MainHp mainHp) {
		
		return mainHpDao.insertBeIdPic(mainHp);
	}

	@Override
	public int insertBeDrPic(MainHp mainHp) {
		
		return mainHpDao.insertBeDrPic(mainHp);
	}

	@Override
	public int updateApproval(Integer hpNo) {
		
		return mainHpDao.updateApproval(hpNo);
	}



	@Override
	public ArrayList<HpSearch> hpSearchListNormal(HpSearch hp) {
		
		return mainHpDao.hpSearchListNormal(hp);
	}

	@Override
	public ArrayList<HpSearch> hpCateSearchList(String cateName) {
		
		return mainHpDao.hpCateSearchList(cateName);
	}

	@Override
	public int deleteOriginPics(Integer hpNo) {
		
		return mainHpDao.deleteOriginPics(hpNo);
	}

	@Override
	public int insertNewHpPhoto(HashMap<String, Object> parameterPhoto) {
		
		return mainHpDao.insertNewHpPhoto(parameterPhoto);
	}

	@Override
	public int updateHptime(HpTime ht2) {
		
		return mainHpDao.updateHptime(ht2);
	}

	@Override
	public int updateComment(MainHp hp) {
		
		return mainHpDao.updateComment(hp);
	}

	
	
}
