package com.kh.landocProject.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.member.model.vo.Client;
import com.kh.landocProject.member.model.vo.DrClient;

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

	

}
