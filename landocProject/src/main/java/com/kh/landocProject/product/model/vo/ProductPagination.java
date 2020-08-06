package com.kh.landocProject.product.model.vo;

import java.io.Serializable;


public class ProductPagination implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -5933999559713987292L;
	private int currentPage;
	private int listCount;
	private int pageLimit;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int boardLimit;
	
	public static ProductPagination getPagination(int currentPage, int listCount) {
		ProductPagination pagination = new ProductPagination();
		pagination.setCurrentPage(currentPage);
		pagination.setListCount(listCount);
		
		pagination.setPageLimit(5);
		pagination.setBoardLimit(12);
		pagination.setMaxPage(
			(int) ((double)listCount / pagination.getBoardLimit() + 0.93)
		);
		pagination.setStartPage(
			((int) ((double)pagination.getCurrentPage() / pagination.getPageLimit() + 0.8) - 1) * pagination.getPageLimit() + 1
		);
		pagination.setEndPage(
			pagination.getStartPage() + pagination.getPageLimit() - 1
		);
		
		if(pagination.getMaxPage() < pagination.getEndPage()) {
			pagination.setEndPage(pagination.getMaxPage());
		}
		return pagination;
	}
	
	public ProductPagination() {
	}
	
	public ProductPagination(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage,
			int boardLimit) {
		this.currentPage = currentPage;
		this.listCount = listCount;
		this.pageLimit = pageLimit;
		this.maxPage = maxPage;
		this.startPage = startPage;
		this.endPage = endPage;
		this.boardLimit = boardLimit;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getListCount() {
		return listCount;
	}
	public void setListCount(int listCount) {
		this.listCount = listCount;
	}
	public int getPageLimit() {
		return pageLimit;
	}
	public void setPageLimit(int pageLimit) {
		this.pageLimit = pageLimit;
	}
	public int getMaxPage() {
		return maxPage;
	}
	public void setMaxPage(int maxPage) {
		this.maxPage = maxPage;
	}
	public int getStartPage() {
		return startPage;
	}
	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	public int getEndPage() {
		return endPage;
	}
	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}
	public int getBoardLimit() {
		return boardLimit;
	}
	public void setBoardLimit(int boardLimit) {
		this.boardLimit = boardLimit;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "AskDrBoardPagination [currentPage=" + currentPage + ", listCount=" + listCount + ", pageLimit="
				+ pageLimit + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage
				+ ", boardLimit=" + boardLimit + "]";
	}
	
}
