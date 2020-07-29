package com.kh.landocProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.member.model.vo.DrhpPhoto;

@Repository("mDao")
public class MainMemberDao {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	// 일반 회원가입_진교
	public int joinClient(Client c) {
		System.out.println(c);
		return sqlSessionTemplate.insert("memberMapper.joinClient", c);
	}

	public Client loginClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.loginClient", c);
	}

	public DrClient loginDoctor(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.loginDrClient", d);
	}

	public Client searchClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdClient", c);
	}

	public DrClient searchDoctor(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.searchIdDrClient", d);
	}

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

	public Client searchPwdClient(Client c) {

		return sqlSessionTemplate.selectOne("memberMapper.searchPwdClient", c);
	}

	public DrClient searchPwdDrClient(DrClient d) {
	
		return sqlSessionTemplate.selectOne("memberMapper.searchPwdDrClient", d);
	}

	public Client ClientSearchPwd2(Client c) {
		
		return sqlSessionTemplate.selectOne("memberMapper.ClientSearchPwd2", c);
	}

	public DrClient DrClientSearchPwd2(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.DrClientSearchPwd2", d);
	}

	public Client ClientSearchPwd3(Client c) {
		
		return sqlSessionTemplate.selectOne("memberMapper.ClientSearchPwd3", c);
	}

	public DrClient DrClientSearchPwd3(DrClient d) {

		return sqlSessionTemplate.selectOne("memberMapper.DrClientSearchPwd3", d);
	}

	public int ClientSearchPwd4(Client c) {

		return sqlSessionTemplate.update("memberMapper.ClientSearchPwd4", c);
	}

	public int DrClientSearchPwd4(DrClient d) {

		return sqlSessionTemplate.update("memberMapper.DrClientSearchPwd4", d);
	}

}
