package com.kh.landocProject.hospitalReview.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.hospital.model.vo.HpTime;
import com.kh.landocProject.hospital.model.vo.MainHp;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;
import com.kh.landocProject.hospitalReview.model.dao.MainHpReviewDao;
import com.kh.landocProject.hospitalReview.model.vo.HpLike;
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
      
//      System.out.println(MainHpReDao.insertHpRe(hpRe));
      return MainHpReDao.insertHpRe(hpRe);
   }

	@Override
	public ArrayList<SearchHp> selectHpCate(String hpName) {
		
		return MainHpReDao.selectHpCate(hpName);
	}

	@Override
	public MainHp selectHpBasicInfo(Integer hpNo) {
		
		return MainHpReDao.selectHpBasicInfo(hpNo);
	}

	@Override
	public ArrayList<MainHp> selectHpPics(Integer hpNo) {
		
		return MainHpReDao.selectHpPics(hpNo);
	}

	@Override
	public ArrayList<HpTime> selectHpTime(Integer hpNo) {
		
		return MainHpReDao.selectHpTime(hpNo);
	}

	@Override
	public int selectLikeNum(Integer hpNo) {
		
		return MainHpReDao.selectLikeNum(hpNo);
	}

	@Override
	public ArrayList<HpReview> selectHpReview(Integer hpNo) {
		
		return MainHpReDao.selectHpReview(hpNo);
	}

	@Override
	public int selectReviewNum(Integer hpNo) {
		
		return MainHpReDao.selectReviewNum(hpNo);
	}

	@Override
	public int selectSmileNum(Integer hpNo) {
		
		return MainHpReDao.selectSmileNum(hpNo);
	}

	@Override
	public int selectBadNum(Integer hpNo) {
		
		return MainHpReDao.selectBadNum(hpNo);
	}

	@Override
	public ArrayList<MainHpQnA> selectHpQna(Integer hpNo) {
		
		return MainHpReDao.selectHpQna(hpNo);
	}

	@Override
	public int selectQnaNum(Integer hpNo) {
		
		return MainHpReDao.selectQnaNum(hpNo);
	}

	@Override
	public ArrayList<HpReview> selectHpReviewList(HashMap<String, Object> map, PageInfo page) {
		
		return MainHpReDao.selectHpReviewList(map, page);
	}

	@Override
	public int deleteHpLike(HpLike hl) {
		
		return MainHpReDao.deleteHpLike(hl);
	}

	@Override
	public int insertHpLike(HpLike hl) {
		
		return MainHpReDao.insertHpLike(hl);
	}

	@Override
	public int selectMyHpLikeCount(HpLike hl) {
		
		return MainHpReDao.selectMyHpLikeCount(hl);
	}

	@Override
	public int selectHpLikeCount(Integer hpNo) {
		
		return MainHpReDao.selectHpLikeCount(hpNo);
	}

	
   
   
   
   
}