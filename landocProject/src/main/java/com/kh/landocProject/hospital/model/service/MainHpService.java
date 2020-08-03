package com.kh.landocProject.hospital.model.service;

import java.util.ArrayList;

import com.kh.landocProject.hospital.model.vo.MainHp;

public interface MainHpService {

	MainHp selectOneHp(MainHp hp);

	ArrayList<MainHp> selectHpTime(MainHp hp);

	ArrayList<MainHp> selectHpPhoto(MainHp hp);

}
