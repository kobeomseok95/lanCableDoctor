package com.kh.landocProject.admin.askDr.model.service;

import java.util.HashMap;
import java.util.List;

import com.kh.landocProject.admin.askDr.model.vo.AdminAskDrBoard;
import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.askDr.model.vo.AskDrReply;

public interface AdminAskDrService {

	int getBoardListCount();

	List<AdminAskDrBoard> getBoardList(PageInfo pageInfo);

	int deletePost(int adNo);

	AdminAskDrBoard getPostDetail(int adNo);

	int deleteReply(int adrNo);

	List<AskDrReply> getReplyList(int adNo);

	List<AdminAskDrBoard> search(HashMap<String, Object> param, PageInfo pageInfo);

	int searchCount(HashMap<String, Object> param);

}
