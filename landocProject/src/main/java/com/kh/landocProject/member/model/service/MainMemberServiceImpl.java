package com.kh.landocProject.member.model.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.member.model.dao.MainMemberDao;
import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;
import com.kh.landocProject.member.model.vo.JoinHospital;
import com.kh.landocProject.member.model.vo.ProfilePhoto;

@Service("mService")
public class MainMemberServiceImpl implements MainMemberService {

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
	//일반회원 아이디 찾기
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
	// 일반회원 비밀번호 찾기1
	@Override
	public Client searchPwdClient(Client c) {
		
		return mDao.searchPwdClient(c);
	}
	// 의사회원 비밀번호 찾기1
	@Override
	public DrClient SearchPwdDrClient(DrClient d) {
		
		return mDao.searchPwdDrClient(d);
	}
	//일반회원 비밀번호 찾기2
	@Override
	public Client ClientSearchPwd2(Client c) {
	
		return mDao.ClientSearchPwd2(c);
	}
	// 의사회원 비밀번호 찾기2
	@Override
	public DrClient DrClientSearchPwd2(DrClient d) {

		return mDao.DrClientSearchPwd2(d);
	}
	// 일반회원 비밀번호 찾기 3
	@Override
	public Client ClientSearchPwd3(Client c) {
	
		return mDao.ClientSearchPwd3(c);
	}
	// 의사회원 비밀번호 찾기3
	@Override
	public DrClient DrClientSearchPwd3(DrClient d) {

		return mDao.DrClientSearchPwd3(d);
	}
	// 일반회원 비밀번호 찾기4
	@Override
	public int ClientSearchPwd4(Client c) {

		return mDao.ClientSearchPwd4(c);
	}
	// 의사회원 비밀번호 찾기4
	@Override
	public int DrClientSearchPwd4(DrClient d) {
	
		return mDao.DrClientSearchPwd4(d);
	}
	// 일반회원 프로필 사진 null 등록
	@Override
	public int ClientInsertProfile(ProfilePhoto pp) {
		
		return mDao.ClientInsertProfile(pp);
	}
	// 일반 회원정보 수정
	@Override
	public int updateClient(Client c) {
	
		return mDao.updateClient(c);
	}
	
	// 일반회원(회원가입) 정보 가져오기
	@Override
	public Client ClientCno(Client c) {

		return mDao.ClientCno(c);
	}
	// 의사회원(회원가입) 정보 가져오기
	@Override
	public DrClient DrClientDrNo(DrClient d) {

		return mDao.DrClientDrNo(d);
	}
	// 의사회원 프로필 NULL등록
	@Override
	public int DrClientInsertProfile(ProfilePhoto pp) {
		
		return mDao.DrClientInsertProfile(pp);
	}
	// 일반회원 프로필 수정
	@Override
	public int updateClientProfile(ProfilePhoto pp) {

		return mDao.updateClientProfile(pp);
	}
	// 로그인 한 일반회원 정보 찾기
	@Override
	public Client loginClient2(String cNo) {
		
		return mDao.loginClient2(cNo);
	}
	// 로그인 한 의사회원 정보 찾기
	@Override
	public DrClient loginDrClient2(String drNo) {
		
		return mDao.loginDrClient2(drNo);
	}
	
	@Override
	public DrClient loginDrClient3(String drNo) {
		
		return mDao.loginDrClient3(drNo);
	}
	@Override
	public DrClient loginDrClient4(String drNo) {
		
		return mDao.loginDrClient4(drNo);
	}

	// 의사회원 프로필 수정
	@Override
	public int updateDrClientProfile(ProfilePhoto pp) {
	
		return mDao.updateDrClientProfile(pp);
	}
	// 의사회원 정보 수정
	@Override
	public int updateDrClient(DrClient d) {
		
		return mDao.updateDrClient(d);
	}
	// 프로필 사진 삭제시 일반회원 정보
	@Override
	public Client CProfile(String cNo) {
		
		return mDao.CProfile(cNo);
	}
	// 프로필 사진 삭제시 의사회원 정보
	@Override
	public DrClient DrProfile(String drNo) {
	
		return mDao.DrProfile(drNo);
	}
	// 제출 파일 삭제시 의사회원 정보
	@Override
	public DrClient DrFile(String drNo) {
		
		return mDao.DrFile(drNo);
	}
	// 일반회원 탈퇴
	@Override
	public int ClientDelete(String cNo) {
		
		return mDao.ClientDelete(cNo);
	}
	// 의사회원 탈퇴
	@Override
	public int DrClientDelete(String drNo) {
		
		return mDao.DrClientDelete(drNo);
	}
	// 의사 파일가져오기1
	@Override
	public DrClient selectDrClientHp1(String drNo) {

		return mDao.selectDrClientHp1(drNo);
	}
	// 의사 파일가져오기2
	@Override
	public DrClient selectDrClientHp2(String drNo) {
		
		return mDao.selectDrClientHp2(drNo);
	}
	// 의사 파일가져오기3
	@Override
	public DrClient selectDrClientHp3(String drNo) {
	
		return mDao.selectDrClientHp3(drNo);
	}
	@Override
	public int drClientHpUpdate1(DrhpPhoto dhp) {
		
		return mDao.drClientHpUpdate1(dhp);
	}
	@Override
	public int drClientHpUpdate2(DrhpPhoto dhp) {

		return mDao.drClientHpUpdate2(dhp);
	}
	@Override
	public int drClientHpUpdate3(DrhpPhoto dhp) {
		
		return mDao.drClientHpUpdate3(dhp);
	}
	@Override
	public DrClient searchFile1(String drNo) {
		
		return mDao.searchFile1(drNo);
	}
	@Override
	public DrClient searchFile2(String drNo) {
		
		return mDao.searchFile2(drNo);
	}
	@Override
	public DrClient searchFile3(String drNo) {
		
		return mDao.searchFile3(drNo);
	}
	@Override
	public int drClientApproval(DrClient d) {
		
		return mDao.drClientApproval(d);
	}
	@Override
	public int updateProfileYN(Client c) {
	
		return mDao.updateProfileYN(c);
	}
	@Override
	public ArrayList<JoinHospital> selectList() {
		
		return mDao.selectList();
	}
	@Override
	public int updateDrProfileYN(DrClient d) {
		
		return mDao.updateDrProfileYN(d);
	}
	@Override
	public int checkIdDup(String id) {
		
		return mDao.checkIdDup(id);
	}
	@Override
	public int checkIdDrDup(String id) {

		return mDao.checkIdDrDup(id);
	}
	@Override
	public Client selectPwd(String cNo) {
	
		return mDao.selectPwd(cNo);
	}
	
	@Override
	public DrClient selectDrPwd(String drNo) {
	
		return mDao.selectDrPwd(drNo);
	}
	@Override
	public ArrayList<String> selectHpList(Integer hpNo) {
		
		return mDao.selectHpList(hpNo);
	}
	@Override
	public int checkEmailDup(String email) {
	
		return mDao.checkEmailDup(email);
	}
	@Override
	public int checkEmailDrDup(String email) {

		return mDao.checkEmailDrDup(email);
	}

	

}
