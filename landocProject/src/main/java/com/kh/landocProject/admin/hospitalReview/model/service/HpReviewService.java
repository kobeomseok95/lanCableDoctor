package com.kh.landocProject.admin.hospitalReview.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpRePoint;
import com.kh.landocProject.admin.hospitalReview.model.vo.AdminHpReview;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.hospitalReview.model.vo.SearchCondition;

public interface HpReviewService {

   int getListCount();

   ArrayList<AdminHpReview> selectList(PageInfo pi, SearchCondition sc);

   AdminHpReview selectHpReDetail(int hpReNo);

   ArrayList<AdminHpReview> selectAllList(PageInfo pi);

   int getSearchListCount(SearchCondition sc);

	int approvalHpRe(Integer hpReNo);
	
	int insertPoint(AdminHpRePoint adminHpRePt);

	int updateCPoint(String cNo);

	int reviewDenied(Integer hpReNo);

}