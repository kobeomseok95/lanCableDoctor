package com.kh.landocProject.member.model.service;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;
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

}
