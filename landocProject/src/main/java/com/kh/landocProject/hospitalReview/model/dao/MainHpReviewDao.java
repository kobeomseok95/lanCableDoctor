package com.kh.landocProject.hospitalReview.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}