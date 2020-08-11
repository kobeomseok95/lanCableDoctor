package com.kh.landocProject.hospitalReview.model.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;

@Repository
public class MainHpReviewDao {
   

   @Autowired
   SqlSessionTemplate sqlSessionTemplate;
   

   // 병원 모달창 검색 결과 가져오는 메소드
   public ArrayList<SearchHp> selectList(String hpName) {
   
      return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpList",hpName);
   }


   public int insertHpRe(HpReview hpRe) {
      
      return sqlSessionTemplate.insert("MainHpReviewMapper.insertHpRe", hpRe);
   }


	public ArrayList<SearchHp> selectHpCate(String hpName) {
		
//		System.out.println("dao에서 병원 카테고리 리스트 : " + (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpCate", hpNo));
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpCate", hpName);
	}


	public MainHp selectHpBasicInfo(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectHpBasicInfo", hpNo);
	}


	public ArrayList<MainHp> selectHpPics(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpPics", hpNo);
	}


	public ArrayList<HpTime> selectHpTime(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpTime", hpNo);
	}


	public int selectLikeNum(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectLikeNum", hpNo);
	}


	public ArrayList<HpReview> selectHpReview(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpReview", hpNo);
	}


	public int selectReviewNum(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectReviewNum", hpNo);
	}


	public int selectSmileNum(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectSmileNum", hpNo);
	}


	public int selectBadNum(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectBadNum", hpNo);
	}


	public ArrayList<MainHpQnA> selectHpQna(Integer hpNo) {
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpQna", hpNo);
	}


	public int selectQnaNum(Integer hpNo) {
		
		return sqlSessionTemplate.selectOne("MainHpReviewMapper.selectQnaNum", hpNo);
	}


	public ArrayList<HpReview> selectHpReviewList(HashMap<String, Integer> map, PageInfo page) {
		
		int offset = (page.getCurrentPage()-1) * page.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, page.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("MainHpReviewMapper.selectHpReviewList", map, rowBounds);
	}
	
	
	
	
	
}