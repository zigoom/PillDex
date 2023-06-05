package com.fiveguys.pilldex.user;

//VO(Value Object)
public class UserVO {
	private int userNo;		// 사용자 번호
	private int userGrade;	// 회원 등급 (10-관리자, 20-일반사용자)
	private String name;	// 이름
	private String userId;	// 회원id
	private String passwd;	// 비밀번호
	private String tel;		// 전화번호
	private String birthday;// 생년월일
	private char sex;		// 성별
	
	private int postNum; 	// 우편번호
	private String newAddr;// 신주소 
	private String oldAddr;// 구주소
	private String restAddr;// 상세 주소
	
	private String email;	// 이메일 
	private String regDate;	// 가입일 
	private char del_yn;	// 회원탈퇴 여부 
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public int getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(int userGrade) {
		this.userGrade = userGrade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public int getPostNum() {
		return postNum;
	}
	public void setPostNum(int postNum) {
		this.postNum = postNum;
	}
	public String getNewAddr() {
		return newAddr;
	}
	public void setNewAddr(String newAddr) {
		this.newAddr = newAddr;
	}
	public String getOldAddr() {
		return oldAddr;
	}
	public void setOldAddr(String oldAddr) {
		this.oldAddr = oldAddr;
	}
	public String getRestAddr() {
		return restAddr;
	}
	public void setRestAddr(String restAddr) {
		this.restAddr = restAddr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public char getDel_yn() {
		return del_yn;
	}
	public void setDel_yn(char del_yn) {
		this.del_yn = del_yn;
	}
	@Override
	public String toString() {
		return "UserVO [userNo=" + userNo + ", userGrade=" + userGrade + ", name=" + name + ", userId=" + userId
				+ ", passwd=" + passwd + ", tel=" + tel + ", birthday=" + birthday + ", sex=" + sex + ", postNum="
				+ postNum + ", newAddr=" + newAddr + ", oldAddr=" + oldAddr + ", restAddr=" + restAddr + ", email="
				+ email + ", regDate=" + regDate + ", del_yn=" + del_yn + "]";
	}	
}