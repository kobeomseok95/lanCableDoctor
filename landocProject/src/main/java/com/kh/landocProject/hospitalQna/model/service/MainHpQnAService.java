package com.kh.landocProject.hospitalQna.model.service;

import java.util.ArrayList;

import com.kh.landocProject.hospitalQna.model.vo.MainHpQnA;

public interface MainHpQnAService {

	ArrayList<MainHpQnA> selectHpQnaList(Integer hpNo);

	int selectHpQnaCount(Integer hpNo);

	int insertHpQna(MainHpQnA hpQna);

}
