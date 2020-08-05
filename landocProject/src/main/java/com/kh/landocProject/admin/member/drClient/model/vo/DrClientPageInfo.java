package com.kh.landocProject.admin.member.drClient.model.vo;

import java.io.Serializable;

public class DrClientPageInfo implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -9211818381550839737L;
	
	private int currentPage;
	private int listCount;
	private int PageLimit;
	private int maxPage;
	private int startPage;
	private int endPage;
	private int boardLimit;
	protected DrClientPageInfo() {
	}
	protected DrClientPageInfo(int currentPage, int listCount, int pageLimit, int maxPage, int startPage, int endPage,
			int boardLimit) {
		this.currentPage = currentPage;
		this.listCount = listCount;
		PageLimit = pageLimit;
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
		return PageLimit;
	}
	public void setPageLimit(int pageLimit) {
		PageLimit = pageLimit;
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
		return "DrClientPageInfo [currentPage=" + currentPage + ", listCount=" + listCount + ", PageLimit=" + PageLimit
				+ ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage + ", boardLimit="
				+ boardLimit + "]";
	}
	
}
