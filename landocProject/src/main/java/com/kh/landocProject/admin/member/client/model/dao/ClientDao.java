package com.kh.landocProject.admin.member.client.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.member.client.model.vo.ClientPage;
import com.kh.landocProject.admin.member.client.model.vo.MemberPageInfo;
import com.kh.landocProject.admin.member.client.model.vo.MemberSearchCondition;

@Repository("cDao")
public class ClientDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public int getListCount() {
	
//		System.out.println("dao에서 전체 리스트 갯수 : " + sqlSessionTemplate.selectOne("clientMapper.getListCount"));
		
		 return sqlSessionTemplate.selectOne("clientMapper.getListCount");
	}

	public ArrayList<ClientPage> selectAllList(MemberPageInfo pi) {
		 int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
	      
	      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
	      
	      return (ArrayList)sqlSessionTemplate.selectList("clientMapper.selectAllList",null, rowBounds);
	}

	public int getSearchListCount(MemberSearchCondition msc) {
		 System.out.println("dao에서 검색 리스트 카운트 : " + sqlSessionTemplate.selectOne("clientMapper.selectSearchListCount",msc));
	      
	      return sqlSessionTemplate.selectOne("clientMapper.selectSearchListCount",msc);
	}

	public ArrayList<ClientPage> selectList(MemberPageInfo pi, MemberSearchCondition msc) {
		 int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
	      
	      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
	      
	      System.out.println("dao에서 리스트 : " + (ArrayList)sqlSessionTemplate.selectList("clientMapper.selectList", msc, rowBounds));
	      
	      return (ArrayList)sqlSessionTemplate.selectList("clientMapper.selectList", msc, rowBounds);
	}

	public ClientPage selectClientDetail(String cNo) {
		
		return sqlSessionTemplate.selectOne("clientMapper.selectClientDetail", cNo);
	}

	public int modifyClient(ClientPage cPage ) {
		
		return sqlSessionTemplate.update("clientMapper.modifyClient", cPage);
	}

}
