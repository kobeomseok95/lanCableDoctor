package com.kh.landocProject.hospitalReview.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.hospitalReview.model.dao.MainHpReviewDao;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;

@Service
public class MainHpReviewServiceImpl implements MainHpReviewService{

   @Autowired
   MainHpReviewDao MainHpReDao;

   @Override
   public ArrayList<SearchHp> selectList(String hpName) {
      
      
      return MainHpReDao.selectList(hpName);
   }

   @Override
   public int insertHpRe(HpReview hpRe) {
      
      System.out.println(MainHpReDao.insertHpRe(hpRe));
      return MainHpReDao.insertHpRe(hpRe);
   }
   
   
   
   
}