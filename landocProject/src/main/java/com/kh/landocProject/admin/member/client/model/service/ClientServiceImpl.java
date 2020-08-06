package com.kh.landocProject.admin.member.client.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.member.client.model.dao.ClientDao;
import com.kh.landocProject.admin.member.client.model.vo.ClientPage;
import com.kh.landocProject.admin.member.client.model.vo.MemberPageInfo;
import com.kh.landocProject.admin.member.client.model.vo.MemberSearchCondition;

@Service("cService")
public class ClientServiceImpl implements ClientService{

	@Autowired
	ClientDao cDao;
	
	@Override
	public int getListCount() {
		
		return cDao.getListCount();
	}

	@Override
	public ArrayList<ClientPage> selectAllList(MemberPageInfo pi) {

		return cDao.selectAllList(pi);
	}

	@Override
	public int getSearchListCont(MemberSearchCondition msc) {
		
		return cDao.getSearchListCount(msc);
	}

	@Override
	public ArrayList<ClientPage> selectList(MemberPageInfo pi, MemberSearchCondition msc) {
	
		return cDao.selectList(pi,msc);
	}

	@Override
	public ClientPage selectClientDetail(String cNo) {
	
		return cDao.selectClientDetail(cNo);
	}

	@Override
	public int modifyClient(ClientPage cPage ) {
		
		return cDao.modifyClient(cPage);
	}

}
