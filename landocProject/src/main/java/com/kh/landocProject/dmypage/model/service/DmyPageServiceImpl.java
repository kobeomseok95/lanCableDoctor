package com.kh.landocProject.dmypage.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.landocProject.dmypage.model.dao.DmyPageDao;

@Service("dMypageService")
public class DmyPageServiceImpl implements DmyPageService{

	@Autowired
	DmyPageDao dMypageDao;
	
	
	
	
}
