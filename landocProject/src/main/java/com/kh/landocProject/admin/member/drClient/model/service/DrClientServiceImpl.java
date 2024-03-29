package com.kh.landocProject.admin.member.drClient.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.member.drClient.model.dao.DrClientDao;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;

@Service("dService")
public class DrClientServiceImpl implements DrClientService{

	@Autowired
	DrClientDao dDao;
	
	@Override
	public int getListCount() {
		
		return dDao.getListCount();
	}

	@Override
	public ArrayList<DrClientPage> selectAllList(PageInfo pi) {
		
		return dDao.selectAllList(pi);
	}

	@Override
	public int getSearchListCount(DrClientSearchCondition dsc) {
		
		return dDao.getSearchListCount(dsc);
	}

	@Override
	public ArrayList<DrClientPage> selectList(PageInfo pi, DrClientSearchCondition dsc) {
		
		return dDao.selectList(pi,dsc);
	}

	@Override
	public ArrayList<DrClientPage> selectDrClientDetail(String drNo) {
		
		return dDao.selectDrClientDetail(drNo);
	}

	@Override
	public DrClientPage selectDrClientDetail1(String drNo) {
		
		return dDao.selectClientDetail1(drNo);
	}

	@Override
	public int drClientApproval1(String drNo) {
	
		return dDao.drClientApproval1(drNo);
	}

	@Override
	public int drClientApproval2(String drNo) {
		
		return dDao.drClientApproval2(drNo);
	}

}
