package com.kh.landocProject.admin.hospital.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.hospital.model.vo.AdminHpSearchCondition;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.MainHp;

public interface HospitalService {

	int getListCount();

	ArrayList<MainHp> selectAllList(PageInfo pi);

	int getSearchListCount(AdminHpSearchCondition sc);

	ArrayList<MainHp> selectSearchList(PageInfo pi, AdminHpSearchCondition sc);

}
