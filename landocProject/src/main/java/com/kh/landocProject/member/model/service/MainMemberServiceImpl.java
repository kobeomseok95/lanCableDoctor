package com.kh.landocProject.member.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.dao.MainMemberDao;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

@Service("mService")
public class MainMemberServiceImpl implements MainMemberService{

	@Autowired
	MainMemberDao mDao;
	// 일반 회원가입
	@Override
	public int joinClient(Client c) {
		
		return mDao.joinClient(c);
	}
	
	// 일반회원 로그인
	@Override
	public Client loginClient(Client c) {

		return mDao.loginClient(c);
	}

	// 의사회원 로그인
	@Override
	public DrClient loginDoctor(DrClient d) {

		return mDao.loginDoctor(d);
	}

	// 일반회원 아이디 찾기
	@Override
	public Client searchIdClient(Client c) {
		
		return mDao.searchClient(c);
	}

	// 의사회원 아이디 찾기
	@Override
	public DrClient searchIdDoctor(DrClient d) {
		
		return mDao.searchDoctor(d);
	}
	
	// 의사 회원가입
	@Override
	public int joinDrClient(DrClient d) {
		
		return mDao.joinDrClient(d);
	}
	// 의사 회원가입_의사 번호 찾기
	@Override
	public DrClient joinDrClient2(DrClient d) {
		
		return mDao.joinDrClient2(d);
	}

	// 파일제출(재직,사업자)
	@Override
	public int insertFile1(DrhpPhoto dhp) {
		
		return mDao.insertFile1(dhp);
	}
	// 파일제출(신분증)
	@Override
	public int insertFile2(DrhpPhoto dhp) {
	
		return mDao.insertFile2(dhp);
	}
	// 파일제출(의사면허증)
	@Override
	public int insertFile3(DrhpPhoto dhp) {

		return mDao.insertFile3(dhp);
	}

	@Override
	public Client searchPwdClient(Client c) {
		
		return mDao.searchPwdClient(c);
	}

	@Override
	public DrClient searchPwdDoctor(DrClient d) {
		
		return mDao.searchPwdDoctor(d);
	}

	
}
