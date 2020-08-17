package com.kh.landocProject.hospitalQna.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import com.kh.landocProject.cmypage.model.vo.CMypagePageInfo;
import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;

public interface MainHpQnAService {

	ArrayList<MainHpQnA> selectHpQnaList(Integer hpNo);

	int selectHpQnaCount(Integer hpNo);

	int insertHpQna(MainHpQnA hpQna);

	ArrayList<MainHpQnA> getHpQnaList(int hpNo, CMypagePageInfo pi);

	int getHpQnaListCount(int hpNo);

	ArrayList<MainHpQnA> getNotYetList(int hpNo);

	int updateHpQnaReply(HashMap<String, Object> map);

}
