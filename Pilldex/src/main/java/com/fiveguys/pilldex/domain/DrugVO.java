package com.fiveguys.pilldex.domain;

//VO(Value Object)
public class DrugVO {
	private int no;		// 약 즐겨찾기 번호(drugNo)
	private int mNo;	// 회원번호(userNo)
	private int medNo;	// 약품 번호
	private String nm;	// 약품 이름(medName)
	private char del;	// 약품삭제여부 
	
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getmNo() {
		return mNo;
	}
	public void setmNo(int mNo) {
		this.mNo = mNo;
	}
	public int getMedNo() {
		return medNo;
	}
	public void setMedNo(int medNo) {
		this.medNo = medNo;
	}
	public String getNm() {
		return nm;
	}
	public void setNm(String nm) {
		this.nm = nm;
	}
	public char getDel() {
		return del;
	}
	public void setDel(char del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "DrugVO [no=" + no + ", mNo=" + mNo + ", medNo=" + medNo + ", nm=" + nm + ", del=" + del + "]";
	}	
}