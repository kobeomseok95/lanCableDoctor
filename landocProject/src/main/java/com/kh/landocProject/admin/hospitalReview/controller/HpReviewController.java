package com.kh.landocProject.admin.hospitalReview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HpReviewController {

	@RequestMapping("hpReviewManage")
	public String hpReviewManage() {
		return"admin/hospitalReview/hpReviewManage";
	}
	
	@RequestMapping("hpReviewDetail")
	public String hpReviewDetail() {
		return"admin/hospitalReview/hpReviewDetail";
	}
	
}
