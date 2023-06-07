package com.fiveguys.pilldex.domain;

//VO(Value Object)
public class DrugVO {
	private int drugNo;		// 약 즐겨찾기 번호
	private int userNo;		// 회원번호
	private int medNum;		// 약품 번호
	private String name;	// 약품 이름
	private char del;		// 약품삭제여부 
	
	public int getDrugNo() {
		return drugNo;
	}
	public void setDrugNo(int drugNo) {
		this.drugNo = drugNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getMedNum() {
		return medNum;
	}
	public void setMedNum(int medNum) {
		this.medNum = medNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public char getDel() {
		return del;
	}
	public void setDel(char del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "DrugVO [drugNo=" + drugNo + ", userNo=" + userNo + ", medNum=" + medNum + ", name=" + name + ", del="
				+ del + "]";
	}	
}