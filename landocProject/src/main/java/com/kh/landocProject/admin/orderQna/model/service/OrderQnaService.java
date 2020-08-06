package com.kh.landocProject.admin.orderQna.model.service;

import java.util.ArrayList;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;

public interface OrderQnaService {

	ArrayList<OrderQna> selectOrdrQnaList(PageInfo pi);

	OrderQna selectOrderQnaDetail(int oqnaNo);

	ArrayList<OrderQna> searchOrderQna(OrderQna qna,PageInfo pi);

	int getListCountOrderQna();

	ArrayList<OrderQna> qnaStatusN(PageInfo pi);

	int orderQnaInsert(OrderQna qna);

}
