package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.hospital.model.dao.MainHpDao;
import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
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
	public ArrayList<HpSearch> hpSearchListNormal(HpSearch hp) {
		
		return mainHpDao.hpSearchListNormal(hp);
	}

	@Override
	public ArrayList<HpSearch> hpCateSearchList(String cateName) {
		
		return mainHpDao.hpCateSearchList(cateName);
	}
	
	
}
