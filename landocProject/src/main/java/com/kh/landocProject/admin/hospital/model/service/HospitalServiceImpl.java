package com.kh.landocProject.admin.hospital.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospital.model.dao.HospitalDao;
import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.MainHp;

@Service("hpService")
public class HospitalServiceImpl implements HospitalService {

	@Autowired
	HospitalDao hpDao;

	@Override
	public int getListCount() {

		return hpDao.getListCount();
	}

	@Override
	public ArrayList<MainHp> selectAllList(PageInfo pi) {
		
		return hpDao.selectAllList(pi);
	}

	@Override
	public int getSearchListCount(AdminHpSearchCondition sc) {
		
		return hpDao.getSearchListCount(sc);
	}

	@Override
	public ArrayList<MainHp> selectSearchList(PageInfo pi, AdminHpSearchCondition sc) {
		
		return hpDao.selectSearchList(pi,sc);
	}
}
