package com.kh.landocProject.admin.hospital.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospital.model.dao.HospitalDao;
import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpTime;
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

	@Override
	public MainHp selectHpDetail(Integer hpNo) {
		
		return hpDao.selectHpDetail(hpNo);
	}

	@Override
	public ArrayList<MainHp> selectHpDetailPhoto(Integer hpNo) {
		
		return hpDao.selectHpDetailPhoto(hpNo);
	}

	@Override
	public ArrayList<HpTime> selectHpDetailTime(Integer hpNo) {
		
		return hpDao.selectHpDetailTime(hpNo);
	}

	@Override
	public MainHp selectNonAppHp(Integer hpNo) {
		
		return hpDao.selectNonAppHp(hpNo);
	}

	@Override
	public ArrayList<MainHp> selectNonAppPic(Integer hpNo) {
		
		return hpDao.selectNonAppPic(hpNo);
	}

	@Override
	public int updateHp(MainHp hp) {
		
		return hpDao.updateHp(hp);
	}

	@Override
	public int updatePic1(MainHp hp1) {
		
		return hpDao.updatePic1(hp1);
	}

	@Override
	public int updatePic2(MainHp hp2) {
		
		return hpDao.updatePic2(hp2);
	}

	@Override
	public int updatePic3(MainHp hp3) {
		
		return hpDao.updatePic3(hp3);
	}

	@Override
	public int deleteBeforeInfo(Integer hpNo) {
		
		return hpDao.deleteBeforeInfo(hpNo);
	}

	@Override
	public int deleteBeforePic(Integer hpNo) {
		
		return hpDao.deleteBeforePic(hpNo);
	}

	@Override
	public int updateDenied(Integer hpNo) {
		
		return hpDao.updateDenied(hpNo);
	}

	@Override
	public int getNonApprovalHospitalCounts() {
		return hpDao.getNonApprovalHospitalCounts();
	}

	@Override
	public List<Hospital> getNonApprovalHospitals(PageInfo pi) {
		return hpDao.getNonApprovalHospitals(pi);
	}

	@Override
	public Hospital getNonApprovalHospitalDetail(int hpNo) {
		return hpDao.getNonApprovalHospitalDetail(hpNo);
	}
}
