package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;

import com.kh.landocProject.hospital.model.vo.HpNameSplit;
import com.kh.landocProject.hospital.model.vo.HpSearch;
import com.kh.landocProject.hospital.model.vo.MainHp;

public interface MainHpService {

	MainHp selectOneHp(MainHp hp);

	ArrayList<MainHp> selectHpTime(MainHp hp);

	ArrayList<MainHp> selectHpPhoto(MainHp hp);

	ArrayList<HpSearch> hpSearchList(HpSearch hp);

	ArrayList<HpNameSplit> hpNameSplit(String hpTitle);

	ArrayList<HpSearch> hpSearchListNormal(HpSearch hp);

	ArrayList<HpSearch> hpCateSearchList(String cateName);

}
