package com.kh.landocProject.admin.member.client.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.member.client.model.vo.ClientPage;
import com.kh.landocProject.admin.member.client.model.vo.MemberPageInfo;
import com.kh.landocProject.admin.member.client.model.vo.MemberSearchCondition;

public interface ClientService {

	int getListCount();

	ArrayList<ClientPage> selectAllList(MemberPageInfo pi);

	int getSearchListCont(MemberSearchCondition msc);

	ArrayList<ClientPage> selectList(MemberPageInfo pi, MemberSearchCondition msc);

	ClientPage selectClientDetail(String cNo);

	int modifyClient(ClientPage cPage);

}
