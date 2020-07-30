package com.kh.landocProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;
import com.kh.landocProject.member.model.vo.ProfilePhoto;

@Repository("mDao")
public class MainMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// 일반 회원가입_진교
	public int joinClient(Client c) {
//		System.out.println(c);
		return sqlSessionTemplate.insert("memberMapper.joinClient", c);
	}
	// 일반회원 로그인
	public Client loginClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.loginClient", c);
	}
	// 의사회원 로그인
	public DrClient loginDoctor(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient", d);
	}
	// 일반회원 아이디 찾기
	public Client searchClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdClient", c);
	}
	// 의사회원 아이디 찾기
	public DrClient searchDoctor(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdDrClient", d);
	}
	// 의사 회원가입
	public int joinDrClient(DrClient d) {

		return sqlSessionTemplate.insert("memberMapper.joinDrClient", d);
	}
	
	// 의사 회원가입_의사 번호 찾기_진교
	public DrClient joinDrClient2(DrClient d) {
		
		return sqlSessionTemplate.selectOne("memberMapper.joinDrClient2", d);
	}
	
	// 파일제출(재직,사업자)
	public int insertFile1(DrhpPhoto dhp) {
		
		return sqlSessionTemplate.insert("memberMapper.insertFile1", dhp);
	}
	// 파일제출(신분증)
	public int insertFile2(DrhpPhoto dhp) {
	
		return sqlSessionTemplate.insert("memberMapper.insertFile2", dhp);
	}
	// 파일제출(의사면허증)
	public int insertFile3(DrhpPhoto dhp) {

		return sqlSessionTemplate.insert("memberMapper.insertFile3", dhp);
	}
	// 일반회원 비밀번호 찾기1
	public Client searchPwdClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.searchPwdClient", c);
	}
	// 의사회원 비밀번호 찾기1
	public DrClient searchPwdDrClient(DrClient d) {
	
		return sqlSessionTemplate.selectOne("memberMapper.searchPwdDrClient", d);
	}
	// 일반회원 비밀번호 찾기2
	public Client ClientSearchPwd2(Client c) {
		
		return sqlSessionTemplate.selectOne("memberMapper.ClientSearchPwd2", c);
	}
	// 의사회원 비밀번호 찾기2
	public DrClient DrClientSearchPwd2(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.DrClientSearchPwd2", d);
	}
	// 일반회원 비밀번호 찾기3
	public Client ClientSearchPwd3(Client c) {
		
		return sqlSessionTemplate.selectOne("memberMapper.ClientSearchPwd3", c);
	}
	// 의사회원 비밀번호 찾기3
	public DrClient DrClientSearchPwd3(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.DrClientSearchPwd3", d);
	}
	// 일반회원 비밀번호 찾기4
	public int ClientSearchPwd4(Client c) {

		return sqlSessionTemplate.update("memberMapper.ClientSearchPwd4", c);
	}
	// 의사회원 비밀번호 찾기4
	public int DrClientSearchPwd4(DrClient d) {

		return sqlSessionTemplate.update("memberMapper.DrClientSearchPwd4", d);
	}
	// 일반회원 프로필 null값 insert
	public int ClientInsertProfile(ProfilePhoto pp) {

		return sqlSessionTemplate.insert("memberMapper.ClientInsertProfile", pp);
	}
	// 일반회원 정보 수정
	public int updateClient(Client c) {

		return sqlSessionTemplate.update("memberMapper.updateClient", c);
	}
	// 일반회원(회원가입) 정보
	public Client ClientCno(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.ClientCno", c);
	}
	// 의사회원(회원가입) 정보
	public DrClient DrClientDrNo(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.DrClientDrNo", d);
	}
	// 의사회원 프로필 null 값 insert
	public int DrClientInsertProfile(ProfilePhoto pp) {

		return sqlSessionTemplate.insert("memberMapper.DrClientInsertProfile", pp);
	}
	
	// 일반회원 프로필 수정
	public int updateClientProfile(ProfilePhoto pp) {
	
		return sqlSessionTemplate.update("memberMapper.updateClientProfile", pp);
	}
	// 로그인 한 일반회원 정보 수정
	public Client loginClient2(String cNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.loginClient2", cNo);
	}
	// 로그인 한 의사회원 정보 수정
	public DrClient loginDrClient2(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient2", drNo);
	}
	
	public DrClient loginDrClient3(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient3", drNo);
	}
	public DrClient loginDrClient4(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient4", drNo);
	}
	
	// 의사회원 프로필 수정
	public int updateDrClientProfile(ProfilePhoto pp) {
		
		return sqlSessionTemplate.update("memberMapper.updateDrClientProfile", pp);
	}
	
	// 의사회원 정보 수정
	public int updateDrClient(DrClient d) {
		
		return sqlSessionTemplate.update("memberMapper.updateDrClient", d);
	}
	// 프로필 사진 삭제시 일반회원 정보
	public Client CProfile(String cNo) {

		return sqlSessionTemplate.selectOne("memberMapper.CProfile", cNo);
	}
	// 프로필 사진 삭제시 의사회원 정보
	public DrClient DrProfile(String drNo) {

		return sqlSessionTemplate.selectOne("memberMapper.DrProfile", drNo);
	}
	// 제출 파일 삭제시 의사회원 정보
	public DrClient DrFile(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.DrFile", drNo);
	}
	// 일반회원 탈퇴
	public int ClientDelete(String cNo) {
		
		return sqlSessionTemplate.update("memberMapper.ClientDelete", cNo);
	}
	// 의사회원 탈퇴
	public int DrClientDelete(String drNo) {
		
		return sqlSessionTemplate.update("memberMapper.DrClientDelete", drNo);
	}
	public DrClient selectDrClientHp1(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.selectDrClientHp1", drNo);
	}
	public DrClient selectDrClientHp2(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.selectDrClientHp2", drNo);
	}
	public DrClient selectDrClientHp3(String drNo) {
	
		return sqlSessionTemplate.selectOne("memberMapper.selectDrClientHp3", drNo);
	}
	public int drClientHpUpdate1(DrhpPhoto dhp) {
		
		return sqlSessionTemplate.update("memberMapper.drClientHpUpdate1", dhp);
	}
	public int drClientHpUpdate2(DrhpPhoto dhp) {

		return sqlSessionTemplate.update("memberMapper.drClientHpUpdate2", dhp);
	}
	public int drClientHpUpdate3(DrhpPhoto dhp) {
	
		return sqlSessionTemplate.update("memberMapper.drClientHpUpdate3", dhp);
	}
	public DrClient searchFile1(String drNo) {
	
		return sqlSessionTemplate.selectOne("memberMapper.searchFile1", drNo );
	}
	public DrClient searchFile2(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.searchFile2", drNo );
	}
	public DrClient searchFile3(String drNo) {
		
		return sqlSessionTemplate.selectOne("memberMapper.searchFile3", drNo );
	}
	public int drClientApproval(DrClient d) {

		return sqlSessionTemplate.update("memberMapper.drClientApproval", d );
	}


}
