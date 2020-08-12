package com.kh.landocProject.payment.model.vo;

public class Cart {
	private int cartNo;
	private String renameFile;
	private int pdNo;
	private String pdName;
	private int cartCount;
	private String cNo;
	private String drNo;
	public Cart() {
		super();
	}
	public Cart(int cartNo, String renameFile, int pdNo, String pdName, int cartCount, String cNo, String drNo) {
		this.cartNo = cartNo;
		this.renameFile = renameFile;
		this.pdNo = pdNo;
		this.pdName = pdName;
		this.cartCount = cartCount;
		this.cNo = cNo;
		this.drNo = drNo;
	}
	public int getCartNo() {
		return cartNo;
	}
	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}
	public String getRenameFile() {
		return renameFile;
	}
	public void setRenameFile(String renameFile) {
		this.renameFile = renameFile;
	}
	public int getPdNo() {
		return pdNo;
	}
	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	public String getPdName() {
		return pdName;
	}
	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	public int getCartCount() {
		return cartCount;
	}
	public void setCartCount(int cartCount) {
		this.cartCount = cartCount;
	}
	public String getcNo() {
		return cNo;
	}
	public void setcNo(String cNo) {
		this.cNo = cNo;
	}
	public String getDrNo() {
		return drNo;
	}
	public void setDrNo(String drNo) {
		this.drNo = drNo;
	}
	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", renameFile=" + renameFile + ", pdNo=" + pdNo + ", pdName=" + pdName
				+ ", cartCount=" + cartCount + ", cNo=" + cNo + ", drNo=" + drNo + "]";
	}
	
	
	
	
}
