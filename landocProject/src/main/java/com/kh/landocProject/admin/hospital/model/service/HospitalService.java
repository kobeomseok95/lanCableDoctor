package com.kh.landocProject.admin.hospital.model.service;

import java.util.ArrayList;
import java.util.List;

import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.Hospital;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;

public interface HospitalService {

	int getListCount();

	ArrayList<MainHp> selectAllList(PageInfo pi);

	int getSearchListCount(AdminHpSearchCondition sc);

	ArrayList<MainHp> selectSearchList(PageInfo pi, AdminHpSearchCondition sc);

	MainHp selectHpDetail(Integer hpNo);

	ArrayList<MainHp> selectHpDetailPhoto(Integer hpNo);

	ArrayList<HpTime> selectHpDetailTime(Integer hpNo);

	MainHp selectNonAppHp(Integer hpNo);

	ArrayList<MainHp> selectNonAppPic(Integer hpNo);

	int updateHp(MainHp hp);

	int updatePic1(MainHp hp1);

	int updatePic2(MainHp hp2);

	int updatePic3(MainHp hp3);

	int deleteBeforeInfo(Integer hpNo);

	int deleteBeforePic(Integer hpNo);

	int updateDenied(Integer hpNo);

	int getNonApprovalHospitalCounts();

	List<Hospital> getNonApprovalHospitals(PageInfo pi);

}
