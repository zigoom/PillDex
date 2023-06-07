package com.fiveguys.pilldex.domain;

//VO(Value Object)
public class AddressVO {
	private int addressNo;		// 약 즐겨찾기 번호
	private int userNo;			// 회원번호
	private int postNum;		// 우편번호
	private String nAddr;		// 신주소
	private String oAddr;		// 구주소
	private String restAddr;	// 상세주소
	private char del;			// 주소삭제여부
	public int getAddressNo() {
		return addressNo;
	}
	public void setAddressNo(int addressNo) {
		this.addressNo = addressNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getPostNum() {
		return postNum;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public String getnAddr() {
		return nAddr;
	}
	public void setnAddr(String nAddr) {
		this.nAddr = nAddr;
	}
	public String getoAddr() {
		return oAddr;
	}
	public void setoAddr(String oAddr) {
		this.oAddr = oAddr;
	}
	public String getRestAddr() {
		return restAddr;
	}
	public void setRestAddr(String restAddr) {
		this.restAddr = restAddr;
	}
	public char getDel() {
		return del;
	}
	public void setDel(char del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "AddressVO [addressNo=" + addressNo + ", userNo=" + userNo + ", postNum=" + postNum + ", nAddr=" + nAddr
				+ ", oAddr=" + oAddr + ", restAddr=" + restAddr + ", del=" + del + "]";
	}	
}