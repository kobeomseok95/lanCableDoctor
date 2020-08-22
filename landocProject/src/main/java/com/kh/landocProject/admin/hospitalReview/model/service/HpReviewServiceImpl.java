package com.kh.landocProject.admin.hospitalReview.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.dao.HpReviewDao;
import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpRePoint;
import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpReview;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.hospitalReview.model.vo.SearchCondition;

@Service("hpReService")
public class HpReviewServiceImpl implements HpReviewService{

   @Autowired
   HpReviewDao hpReDao;
   
   
   @Override
   public int getListCount() {
      
      return hpReDao.getListCount();
   }
   

   @Override
   public ArrayList<AdminHpReview> selectList(PageInfo pi, SearchCondition sc) {
      
      return hpReDao.selectList(pi,sc);
   }


   @Override
   public AdminHpReview selectHpReDetail(int hpReNo) {
      
      return hpReDao.selectHpReDetail(hpReNo);
   }


   @Override
   public ArrayList<AdminHpReview> selectAllList(PageInfo pi) {
      
      return hpReDao.selectAllList(pi);
   }


   @Override
   public int getSearchListCount(SearchCondition sc) {
      
      return hpReDao.getSearchListCount(sc);
   }


	@Override
	public int approvalHpRe(Integer hpReNo) {
		
		return hpReDao.approvalHpRe(hpReNo);
	}


	@Override
	public int insertPoint(AdminHpRePoint adminHpRePt) {
		
		return hpReDao.insertPoint(adminHpRePt);
	}


	@Override
	public int updateCPoint(String cNo) {
		
		return hpReDao.updateCPoint(cNo);
	}


	@Override
	public int reviewDenied(Integer hpReNo) {
		
		return hpReDao.reviewDenied(hpReNo);
	}



}