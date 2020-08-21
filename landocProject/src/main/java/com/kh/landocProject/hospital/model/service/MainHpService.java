package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.hospital.model.vo.Applicant;
import com.kh.landocProject.hospital.model.vo.Hospital;
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

	int insertHospital(Hospital h);

	int insertApplicant(Applicant a);

	int insertHpList(List<Integer> list);

	int deleteHospital(int hpNo);

	int deleteHpList(int hpNo);

	int deleteApplicant(int aNo);

	int getHospitalSeq(Hospital h);

	int getApplicantSeq(Applicant a);

	int insertHospitalFiles(Hospital h);

}
