package com.kh.landocProject.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.dao.MainMemberDao;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

@Service("mService")
public class MainMemberServiceImpl implements MainMemberService{

	@Autowired
	MainMemberDao mDao;

	@Override
	public int joinClient(Client c) {
		
		return mDao.joinClient(c);
	}

	@Override
	public Client loginClient(Client c) {

		return mDao.loginClient(c);
	}

	@Override
	public DrClient loginDoctor(DrClient d) {

		return mDao.loginDoctor(d);
	}

	@Override
	public Client searchIdClient(Client c) {
		
		return mDao.searchClient(c);
	}

	@Override
	public DrClient searchIdDoctor(DrClient d) {
		
		return mDao.searchDoctor(d);
	}

	@Override
	public int joinDrClient(DrClient d) {
		
		return mDao.joinDrClient(d);
	}

	
}
