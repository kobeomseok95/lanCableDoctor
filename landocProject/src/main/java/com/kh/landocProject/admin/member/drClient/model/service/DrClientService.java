package com.kh.landocProject.admin.member.drClient.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientPage;
import com.kh.landocProject.admin.member.drClient.model.vo.DrClientSearchCondition;

public interface DrClientService {

	int getListCount();

	ArrayList<DrClientPage> selectAllList(PageInfo pi);

	int getSearchListCount(DrClientSearchCondition dsc);

	ArrayList<DrClientPage> selectList(PageInfo pi, DrClientSearchCondition dsc);

	ArrayList<DrClientPage> selectDrClientDetail(String drNo);

	DrClientPage selectDrClientDetail1(String drNo);

	int drClientApproval1(String drNo);

	int drClientApproval2(String drNo);

}
