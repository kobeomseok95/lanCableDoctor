package com.kh.landocProject.admin.order.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.landocProject.admin.hospitalReview.model.vo.PageInfo;
import com.kh.landocProject.admin.order.model.vo.OrderManage;
import com.kh.landocProject.admin.orderQna.model.vo.OrderQna;

@Repository("orderDao")
public class OrderDao{

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public ArrayList<OrderManage> selectOrderMgList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderMg.selectOrderMgList",rowBounds);
	}

	public ArrayList<OrderManage> selectRefundList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderMg.selectRefundList",rowBounds);
	}

	public int getListCountOrdergMgList() {
		
		return sqlSessionTemplate.selectOne("adminOrderMg.getListCountOrdergMg");
	}

	public ArrayList<OrderManage> selectCancelList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderMg.selectCancelList",rowBounds);
	}

	public ArrayList<OrderManage> selectHoldList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderMg.selectHoldList",rowBounds);
	}

	public ArrayList<OrderManage> searchOrderMg(OrderManage order, PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		// 이전페이지까지의 보드개수

		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		return (ArrayList)sqlSessionTemplate.selectList("adminOrderMg.searchOrderMg",order,rowBounds);
	}

	public int omGrant(OrderManage order) {
		
		return sqlSessionTemplate.update("adminOrderMg.omGrant",order);
	}

	public int omGrantCancel(OrderManage order) {
		
		return sqlSessionTemplate.update("adminOrderMg.omGrantCancel",order);
	}
}
