package com.kh.landocProject.admin.hospitalReview.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpReview;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.hospitalReview.model.vo.SearchCondition;

@Repository("hpReDao")
public class HpReviewDao {

   @Autowired
   SqlSessionTemplate sqlSessionTemplate;

   // 전체 리스트 카운트
   public int getListCount() {
      
      System.out.println("dao에서 전체 리스트 갯수 : " + sqlSessionTemplate.selectOne("adminHpReMapper.getListCount"));
      
      return sqlSessionTemplate.selectOne("adminHpReMapper.getListCount");
   }
   
   
   public ArrayList<AdminHpReview> selectAllList(PageInfo pi) {
      
      int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
      
      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
      
      return (ArrayList)sqlSessionTemplate.selectList("adminHpReMapper.selectListAll",null, rowBounds);
   }


   public int getSearchListCount(SearchCondition sc) {
      
      System.out.println("dao에서 검색 리스트 카운트 : " + sqlSessionTemplate.selectOne("adminHpReMapper.selectSearchListCount",sc));
      
      return sqlSessionTemplate.selectOne("adminHpReMapper.selectSearchListCount",sc);
   }
   
   
   public ArrayList<AdminHpReview> selectList(PageInfo pi, SearchCondition sc) {
      
      int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
      
      RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());

//      System.out.println("dao에서 리스트 : " + (ArrayList)sqlSessionTemplate.selectList("adminHpReMapper.selectList", sc, rowBounds));
      
      return (ArrayList)sqlSessionTemplate.selectList("adminHpReMapper.selectList", sc, rowBounds);
   }

   
   public AdminHpReview selectHpReDetail(int hpReNo) {
      
//      System.out.println("dao에서 디테일 : " + sqlSessionTemplate.selectOne("adminHpReMapper.selectHpReDetail", hpReNo));
      
      return sqlSessionTemplate.selectOne("adminHpReMapper.selectHpReDetail", hpReNo);
   }




   
   
   
   
   
   
}