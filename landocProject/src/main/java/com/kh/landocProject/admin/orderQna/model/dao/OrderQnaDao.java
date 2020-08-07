package com.kh.landocProject.admin.orderQna.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;

@Repository("oqDao")
public class OrderQnaDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	public ArrayList<OrderQna> selectOrderQnaList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderQna.orderQnaList", rowBounds);
	}
	public OrderQna selectOrderQnaDetail(int oqnaNo) {
		
		return sqlSessionTemplate.selectOne("adminOrderQna.orderQnaDetail",oqnaNo);
	}
	public ArrayList<OrderQna> searchOrderQna(OrderQna qna,PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderQna.orderQnaSearch",qna,rowBounds);
	}
	public int getListCountOrderQna() {
		
		return sqlSessionTemplate.selectOne("adminOrderQna.getListCountOrderQna");
	}
	public ArrayList<OrderQna> qnaStatusN(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderQna.qnaStatusN",rowBounds);
	}
	public int orderQnaInsert(OrderQna qna) {// TODO Auto-generated method stub
		return sqlSessionTemplate.update("adminOrderQna.orderQnaAnswer",qna);
	}

}
