package com.kh.landocProject.hospitalReview.model.service;

import java.util.ArrayList;

import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;

public interface MainHpReviewService {

   ArrayList<SearchHp> selectList(String hpName);

   int insertHpRe(HpReview hpRe);

   
   
}