package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserService {
	// CRUD 기능의 메소드 구현
	// 회원 등록
	public UserVO selectUser(UserVO user) throws SQLException;
	
	/**
	 * 로그인
	 * @param user
	 * @return 10: id 없음, 20: 비밀번호 오류, 30: 로그인 성공 
	 * @throws SQLException
	 */
	public int doLogin(UserVO user) throws SQLException;
	
	/**
	 * 아이디 중복 검사
	 * @param user
	 * @return 1: id 존재 , 0: id 없음 
	 * @throws SQLException
	 */
	public int doIdDuplCheck(UserVO user) throws SQLException;
	
	/**
	 * 아이디 여부 확인 및  비밀번호 수정
	 * @param user
	 * @return 10: id 없음, 20: 비밀번호 오류, 30: 로그인 성공 
	 * @throws SQLException
	 */
	public UserVO doSearchId(UserVO user) throws SQLException;
	
	/**
	 * 회원가입
	 * @param user
	 * @return 1: 성공 , 0: 실패
	 * @throws SQLException
	 */
	public int doSignUp(UserVO user) throws SQLException;
	
	/**
	 * 회원 정보 삭제
	 * @param user
	 * @return 1: 성공 , 0: 실패
	 * @throws SQLException
	 */
	public int deleteOne(UserVO user) throws SQLException;
}
