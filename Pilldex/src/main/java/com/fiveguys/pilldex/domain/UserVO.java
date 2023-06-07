package com.fiveguys.pilldex.domain;

//VO(Value Object)
public class UserVO {
	private int no;		// 사용자 번호
	private int grade;		// 회원 등급 (10-관리자, 20-일반사용자)
	private String name;	// 이름
	private String id;		// 회원id
	private String pw;		// 비밀번호
	private String tel;		// 전화번호
	private String birth;	// 생년월일
	private char sex;		// 성별
	
	private int post_num; 	// 우편번호
	private String n_addr;	// 신주소 
	private String o_addr;	// 구주소
	private String rest_addr;// 상세 주소
	
	private String email;	// 이메일 
	private String reg_dt;	// 가입일 
	private char del;		// 회원탈퇴 여부 
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public char getSex() {
		return sex;
	}
	public void setSex(char sex) {
		this.sex = sex;
	}
	public int getPost_num() {
		return post_num;
	}
	public void setPost_num(int post_num) {
		this.post_num = post_num;
	}
	public String getN_addr() {
		return n_addr;
	}
	public void setN_addr(String n_addr) {
		this.n_addr = n_addr;
	}
	public String getO_addr() {
		return o_addr;
	}
	public void setO_addr(String o_addr) {
		this.o_addr = o_addr;
	}
	public String getRest_addr() {
		return rest_addr;
	}
	public void setRest_addr(String rest_addr) {
		this.rest_addr = rest_addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(String reg_dt) {
		this.reg_dt = reg_dt;
	}
	public char getDel() {
		return del;
	}
	public void setDel(char del) {
		this.del = del;
	}
	@Override
	public String toString() {
		return "UserVO [no=" + no + ", grade=" + grade + ", name=" + name + ", id=" + id + ", pw=" + pw + ", tel=" + tel
				+ ", birth=" + birth + ", sex=" + sex + ", post_num=" + post_num + ", n_addr=" + n_addr + ", o_addr="
				+ o_addr + ", rest_addr=" + rest_addr + ", email=" + email + ", reg_dt=" + reg_dt + ", del=" + del
				+ "]";
	}
}