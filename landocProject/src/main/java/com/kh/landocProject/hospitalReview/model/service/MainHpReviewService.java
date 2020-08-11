package com.kh.landocProject.hospitalReview.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.hospitalReview.model.vo.HpReview;
import com.kh.landocProject.hospitalReview.model.vo.SearchHp;

public interface MainHpReviewService {

   ArrayList<SearchHp> selectList(String hpName);

   int insertHpRe(HpReview hpRe);

   ArrayList<SearchHp> selectHpCate(String hpName);

   MainHp selectHpBasicInfo(Integer hpNo);

   ArrayList<MainHp> selectHpPics(Integer hpNo);

   ArrayList<HpTime> selectHpTime(Integer hpNo);

   int selectLikeNum(Integer hpNo);

   ArrayList<HpReview> selectHpReview(Integer hpNo);

   int selectReviewNum(Integer hpNo);

   int selectSmileNum(Integer hpNo);

   int selectBadNum(Integer hpNo);

   ArrayList<MainHpQnA> selectHpQna(Integer hpNo);

   int selectQnaNum(Integer hpNo);

   ArrayList<HpReview> selectHpReviewList(HashMap<String, Integer> map, PageInfo page);




   









   
}