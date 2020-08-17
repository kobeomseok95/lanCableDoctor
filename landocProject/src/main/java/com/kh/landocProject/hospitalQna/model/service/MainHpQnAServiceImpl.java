package com.kh.landocProject.hospitalQna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.hospitalQna.model.dao.MainHpQnADao;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;

@Service("hpQnaService")
public class MainHpQnAServiceImpl implements MainHpQnAService{

	@Autowired
	MainHpQnADao hpQnaDao;

	@Override
	public ArrayList<MainHpQnA> selectHpQnaList(Integer hpNo) {
		
		return hpQnaDao.selectHpQnaList(hpNo);
	}

	@Override
	public int selectHpQnaCount(Integer hpNo) {
		
		return hpQnaDao.selectHpQnaCount(hpNo);
	}

	@Override
	public int insertHpQna(MainHpQnA hpQna) {
		
		return hpQnaDao.insertHpQna(hpQna);
	}

	@Override
	public int getHpQnaListCount(int hpNo) {
		
		return hpQnaDao.getHpQnaListCount(hpNo);
	}

	@Override
	public ArrayList<MainHpQnA> getHpQnaList(int hpNo, CMypagePageInfo pi) {
		
		return hpQnaDao.getHpQnaList(hpNo, pi);
	}

	@Override
	public ArrayList<MainHpQnA> getNotYetList(int hpNo) {
		
		return hpQnaDao.getNotYetList(hpNo);
	}

	@Override
	public int updateHpQnaReply(HashMap<String, Object> map) {
		
		return hpQnaDao.updateHpQnaReply(map);
	}
	
	
	
}
