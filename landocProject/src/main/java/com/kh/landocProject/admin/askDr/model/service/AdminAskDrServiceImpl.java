package com.kh.landocProject.admin.askDr.model.service;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.kh.landocProject.admin.askDr.model.dao.AdminAskDrDao;
import com.kh.landocProject.admin.askDr.model.vo.AdminAskDrBoard;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.askDr.model.vo.AskDrReply;

@Service
public class AdminAskDrServiceImpl implements AdminAskDrService{

	@Resource
	private AdminAskDrDao adminAskDrDao;
	
	@Override
	public int getBoardListCount() {
		return adminAskDrDao.getBoardListCount();
	}
	
	@Override
	public List<AdminAskDrBoard> getBoardList(PageInfo pageInfo) {
		return adminAskDrDao.getBoardList(pageInfo);
	}

	@Override
	public int deletePost(int adNo) {
		return adminAskDrDao.deletePost(adNo);
	}

	@Override
	public AdminAskDrBoard getPostDetail(int adNo) {
		return adminAskDrDao.getPostDetail(adNo);
	}

	@Override
	public int deleteReply(int adrNo) {
		return adminAskDrDao.deleteReply(adrNo);
	}

	@Override
	public List<AskDrReply> getReplyList(int adNo) {
		return adminAskDrDao.getReplyList(adNo);
	}

	@Override
	public List<AdminAskDrBoard> search(HashMap<String, Object> param, PageInfo pageInfo) {
		return adminAskDrDao.search(param, pageInfo);
	}

	@Override
	public int searchCount(HashMap<String, Object> param) {
		return adminAskDrDao.searchCount(param);
	}
	
}
