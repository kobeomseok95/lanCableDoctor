package com.kh.landocProject.member.model.service;

import java.util.ArrayList;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;
import com.kh.landocProject.member.model.vo.JoinHospital;
import com.kh.landocProject.member.model.vo.ProfilePhoto;

public interface MainMemberService {

	int joinClient(Client c);

	Client loginClient(Client c);

	DrClient loginDoctor(DrClient d);

	Client searchIdClient(Client c);

	DrClient searchIdDoctor(DrClient d);

	int joinDrClient(DrClient d);
	
	int insertFile1(DrhpPhoto dhp);

	int insertFile2(DrhpPhoto dhp);

	int insertFile3(DrhpPhoto dhp);
	
	DrClient joinDrClient2(DrClient d);

	Client searchPwdClient(Client c);

	DrClient SearchPwdDrClient(DrClient d);

	Client ClientSearchPwd2(Client c);

	DrClient DrClientSearchPwd2(DrClient d);

	Client ClientSearchPwd3(Client c);

	DrClient DrClientSearchPwd3(DrClient d);

	int ClientSearchPwd4(Client c);

	int DrClientSearchPwd4(DrClient d);

	int ClientInsertProfile(ProfilePhoto pp);

	int updateClient(Client c);

	Client ClientCno(Client c);

	DrClient DrClientDrNo(DrClient d);

	int DrClientInsertProfile(ProfilePhoto pp);

	int updateClientProfile(ProfilePhoto pp);

	Client loginClient2(String cNo);

	DrClient loginDrClient2(String drNo);

	int updateDrClientProfile(ProfilePhoto pp);

	int updateDrClient(DrClient d);
	
	Client CProfile(String cNo);

	DrClient DrProfile(String drNo);

	DrClient DrFile(String drNo);

	int ClientDelete(String cNo);

	int DrClientDelete(String drNo);

	DrClient selectDrClientHp1(String drNo);

	DrClient selectDrClientHp2(String drNo);

	DrClient selectDrClientHp3(String drNo);

	int drClientHpUpdate1(DrhpPhoto dhp);

	int drClientHpUpdate2(DrhpPhoto dhp);

	int drClientHpUpdate3(DrhpPhoto dhp);

	DrClient loginDrClient3(String drNo);

	DrClient loginDrClient4(String drNo);

	DrClient searchFile1(String drNo);

	DrClient searchFile2(String drNo);

	DrClient searchFile3(String drNo);

	int drClientApproval(DrClient d);

	int updateProfileYN(Client c);

	ArrayList<JoinHospital> selectList();

	int updateDrProfileYN(DrClient d);



}
