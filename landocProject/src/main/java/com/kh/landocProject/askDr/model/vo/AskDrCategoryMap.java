package com.kh.landocProject.askDr.model.vo;

import java.io.Serializable;
import java.util.HashMap;

import org.springframework.stereotype.Component;

@Component
public class AskDrCategoryMap implements Serializable{

	/**
	 * 					이건 DB에서 불러오는게 맞다 추후 리팩토링때 지워보자
	 */
	private static final long serialVersionUID = -2044794718243393727L;
	private static HashMap<Integer, String> categoryMap = new HashMap<Integer, String>();

	public AskDrCategoryMap() {
		this.setCategoryMap();
	}
	
	public AskDrCategoryMap(HashMap<Integer, String> categoryMap) {
		this.categoryMap = categoryMap;
	}
	
	public HashMap<Integer, String> getCategoryMap() {
		return categoryMap;
	}

	public void setCategoryMap() {
		categoryMap.put(101, "내과");
		categoryMap.put(102, "신경과");
		categoryMap.put(103, "정신건강의학과");
		categoryMap.put(104, "외과");
		categoryMap.put(105, "정형외과");
		categoryMap.put(106, "신경외과");
		categoryMap.put(108, "성형외과");
		categoryMap.put(109, "영상의학과");
		categoryMap.put(110, "산부인과");
		categoryMap.put(111, "소아과");
		categoryMap.put(112, "안과");
		categoryMap.put(113, "이비인후과");
		categoryMap.put(114, "피부과");
		categoryMap.put(115, "비뇨의학과");
		categoryMap.put(116, "마취통증의학과");
		categoryMap.put(120, "재활의학과");
		categoryMap.put(122, "가정의학과");
		categoryMap.put(300, "한방병원");
		categoryMap.put(400, "치과");
	}

	@Override
	public String toString() {
		return "AskDrCategoryMap [categoryMap=" + categoryMap + "]";
	}
}
