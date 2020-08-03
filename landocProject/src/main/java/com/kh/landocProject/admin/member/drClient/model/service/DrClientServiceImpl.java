package com.kh.landocProject.admin.member.drClient.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.member.drClient.model.dao.DrClientDao;

@Service("dService")
public class DrClientServiceImpl implements DrClientService{

	@Autowired
	DrClientDao dDao;
	
	@Override
	public int getListCount() {
		
		return dDao.getListCount();
	}

}
