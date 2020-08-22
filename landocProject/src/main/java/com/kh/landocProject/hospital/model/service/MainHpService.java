package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;

public interface MainHpService {

	MainHp selectOneHp(MainHp hp);

	ArrayList<MainHp> selectHpTime(MainHp hp);

	ArrayList<MainHp> selectHpPhoto(MainHp hp);


	ArrayList<MainHp> selectRenameList(Integer hpNo);

	int insertBeforeBasicInfo(MainHp mainHp);

	int insertBeEmpPic(MainHp mainHp);

	int insertBeIdPic(MainHp mainHp);

	int insertBeDrPic(MainHp mainHp);

	int updateApproval(Integer hpNo);

	ArrayList<HpSearch> hpSearchListNormal(HpSearch hp);

	ArrayList<HpSearch> hpCateSearchList(String cateName);

	int deleteOriginPics(Integer hpNo);

	int insertNewHpPhoto(HashMap<String, Object> parameterPhoto);

	int updateHptime(HpTime ht2);

	int updateComment(MainHp hp);

	ArrayList<HpSearch> selectHpAvgList(HpSearch hp);

	ArrayList<HpSearch> selectHpAvgListCate(String cateName);

}
