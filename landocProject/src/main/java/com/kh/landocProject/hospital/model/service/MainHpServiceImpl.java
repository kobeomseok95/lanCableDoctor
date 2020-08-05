package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.hospital.model.dao.MainHpDao;
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

	
	
}
