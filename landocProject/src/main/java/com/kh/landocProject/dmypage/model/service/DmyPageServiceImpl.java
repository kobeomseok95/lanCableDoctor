package com.kh.landocProject.dmypage.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.dmypage.model.dao.DmyPageDao;
import com.kh.landocProject.dmypage.model.vo.DOrderList;
import com.kh.landocProject.dmypage.model.vo.DOrderQna;
import com.kh.landocProject.dmypage.model.vo.DPdReview;
import com.kh.landocProject.dmypage.model.vo.DrMypagePoint;
import com.kh.landocProject.dmypage.model.vo.DrProfile;
import com.kh.landocProject.hospitalReview.model.vo.HpLike;
import com.kh.landocProject.member.model.vo.DrClient;
import com.kh.landocProject.product.model.vo.ProductQna;

@Service("dMypageService")
public class DmyPageServiceImpl implements DmyPageService{

	@Autowired
	DmyPageDao dMypageDao;

	@Override
	public ArrayList<DPdReview> selectPdReviewList(String drNo, CMypagePageInfo pi) {
		
		return dMypageDao.selectPdReviewList(drNo,pi);
	}
	
	@Override
	public int getListCountReview(String drNo) {
		
		return dMypageDao.getListCoundReview(drNo);
	}

	@Override
	public ArrayList<DOrderList> selectOrderList(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.selectOrderList(drNo, pi);
	}

	@Override
	public DOrderList selectOrderDetail(DOrderList order) {
		// TODO Auto-generated method stub
		return dMypageDao.selectOrderDetail(order);
	}

	@Override
	public ArrayList<DOrderList> orderListDateSearch(DOrderList order, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderListDateSearch(order, pi);
	}

	@Override
	public ArrayList<DOrderList> orderListDateSearch2(DOrderList order, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderListDateSearch2(order, pi);
	}

	@Override
	public int pdReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.pdReviewInsert(review);
	}

	@Override
	public int updateOrderStatus(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateOrderStatus(review);
	}

	@Override
	public ArrayList<DOrderQna> orderQnaListY(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaListY(drNo, pi);
	}

	@Override
	public ArrayList<DOrderQna> orderQnaListN(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaListN(drNo);
	}

	@Override
	public ArrayList<DOrderList> orderCancelList(String drNo, CMypagePageInfo pi) {
		// TODO Auto-generated method stub
		return dMypageDao.orderCancelList(drNo, pi);
	}

	@Override
	public int orderQnaInsert(DOrderQna qna) {
		// TODO Auto-generated method stub
		return dMypageDao.orderQnaInsert(qna);
	}

	

	@Override
	public int getListCountOrderList(HashMap<String,Object> order) {
		// TODO Auto-generated method stub
		return dMypageDao.getListCountOrderList(order);
	}

	@Override
	public int getListCountOrderQna(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.getListCountOrderQna(drNo);
	}

	@Override
	public DPdReview updateReview(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateReview(review);
	}

	@Override
	public int updateReviewInsert(DPdReview review) {
		// TODO Auto-generated method stub
		return dMypageDao.updateReviewInsert(review);
	}

	@Override
	public String selectAllSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectAllSumPoint(drNo);
	}

	@Override
	public String selectMonthSumPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectMonthSumPoint(drNo);
	}

	@Override
	public String selectNowMonthPoint() {
		// TODO Auto-generated method stub
		return dMypageDao.selectNowMonthPoint();
	}

	@Override
	public String selectCPoint(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectCPoint(drNo);
	}

	@Override
	public ArrayList<DrMypagePoint> selectPointList(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.selectPointList(drNo);
	}

	@Override
	public int listCountPointList(String drNo) {
		// TODO Auto-generated method stub
		return dMypageDao.listCountPointList(drNo);
	}

	@Override
	public int orderCancel(DOrderList order) {
		// TODO Auto-generated method stub
		return dMypageDao.orderCancel(order);
	}

	@Override
	public String selectDrProfile(String drNo) {
		
		return dMypageDao.selectDrProfile(drNo);
	}

	@Override
	public DrProfile selectOneDr(String replyDrNo) {
		
		return dMypageDao.selectOneDr(replyDrNo);
	}

	@Override
	public int selectMyDrLikeCount(HpLike hl) {
		
		return dMypageDao.selectMyDrLikeCount(hl);
	}

	@Override
	public int deleteDrLike(HpLike hl) {
		
		return dMypageDao.deleteDrLike(hl);
	}

	@Override
	public int insertDrLike(HpLike hl) {
		
		return dMypageDao.insertDrLike(hl);
	}

	@Override
	public int selectDrLikeCount(String drNo) {
		
		return dMypageDao.selectDrLikeCount(drNo);
	}

	@Override
	public int selectLikeCount(String drNo) {
		
		return dMypageDao.selectLikeCount(drNo);
	}

	@Override
	public int selectReplyCount(String drNo) {
		
		return dMypageDao.selectReplyCount(drNo);
	}

	@Override
	public int selectChosenReplyCount(String drNo) {
		
		return dMypageDao.selectChosenReplyCount(drNo);
	}

	@Override
	public ArrayList<DrProfile> selectCommentList(String drNo) {
		
		return dMypageDao.selectCommentList(drNo);
	}

	@Override
	public int selectCommentCount(String drNo) {
		
		return dMypageDao.selectCommentCount(drNo);
	}

	public String selectPdReviewPhoto(DPdReview review) {
		
		return dMypageDao.selectPdReviewPhoto(review);
	}

	@Override
	public int getListCountSearchOrderList(HashMap<String, Object> search) {
		
		return dMypageDao.getListCountSearchOrderList(search);
	}

	@Override
	public int getListCountSearchOrderList2(HashMap<String, Object> search) {
		
		return dMypageDao.getListCountSearchOrderList2(search);
	}

	@Override
	public int insertDrComment(HashMap<String, String> map) {
		
		return dMypageDao.insertDrComment(map);
	}

	@Override
	public ArrayList<DrProfile> getAjaxCommentList(String drNo) {
		
		return dMypageDao.getAjaxCommentList(drNo);
	}

	@Override
	public int getCommentCount(String drNo) {
		
		return dMypageDao.getCommentCount(drNo);
	}

	@Override
	public int getProductQnaAnswerCount(HashMap<String, String> param) {
		return dMypageDao.getProductQnaAnswerCount(param);
	}

	@Override
	public int getProductQnaNonAnswerCount(HashMap<String, String> param) {
		return dMypageDao.getProductQnaNonAnswerCount(param);
	}

	@Override
	public List<ProductQna> getAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo answerPi) {
		return dMypageDao.getAnswerProductQnaList(param, answerPi);
	}

	@Override
	public List<ProductQna> getNonAnswerProductQnaList(HashMap<String, String> param, CMypagePageInfo nonAnswerPi) {
		return dMypageDao.getNonAnswerProductQnaList(param, nonAnswerPi);
	}

	
	
}
