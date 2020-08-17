package com.kh.landocProject.product.model.vo;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

public class DrComment implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -1673769511767732781L;
	
	private int drCommentNo;
	private Date drCommentDate;
	private String drComment;
	private String drNo;
	private String pdNo;
	private List<DrComment> drCo;
	protected DrComment() {
	}
	protected DrComment(int drCommentNo, Date drCommentDate, String drComment, String drNo, String pdNo) {
		this.drCommentNo = drCommentNo;
		this.drCommentDate = drCommentDate;
		this.drComment = drComment;
		this.drNo = drNo;
		this.pdNo = pdNo;
	}
	
	protected DrComment(int drCommentNo, Date drCommentDate, String drComment, String drNo, String pdNo,
			List<DrComment> drCo) {
		this.drCommentNo = drCommentNo;
		this.drCommentDate = drCommentDate;
		this.drComment = drComment;
		this.drNo = drNo;
		this.pdNo = pdNo;
		this.drCo = drCo;
	}
	public int getDrCommentNo() {
		return drCommentNo;
	}
	public void setDrCommentNo(int drCommentNo) {
		this.drCommentNo = drCommentNo;
	}
	public Date getDrCommentDate() {
		return drCommentDate;
	}
	public void setDrCommentDate(Date drCommentDate) {
		this.drCommentDate = drCommentDate;
	}
	public String getDrComment() {
		return drComment;
	}
	public void setDrComment(String drComment) {
		this.drComment = drComment;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	public String getPdNo() {
		return pdNo;
	}
	public void setPdNo(String pdNo) {
		this.pdNo = pdNo;
	}
	
	public List<DrComment> getDrCo() {
		return drCo;
	}
	public void setDrCo(List<DrComment> drCo) {
		this.drCo = drCo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "DrComment [drCommentNo=" + drCommentNo + ", drCommentDate=" + drCommentDate + ", drComment=" + drComment
				+ ", drNo=" + drNo + ", pdNo=" + pdNo + ", drCo=" + drCo + "]";
	}
	
}
