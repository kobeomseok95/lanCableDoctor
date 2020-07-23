package com.kh.landocProject.admin.hospital.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospital.model.dao.HospitalDao;

@Service("hpService")
public class HospitalServiceImpl implements HospitalService{

	@Autowired
	HospitalDao hpDao;

	@Override
	public int getListCount() {
		
		return hpDao.getListCount();
	}
}
