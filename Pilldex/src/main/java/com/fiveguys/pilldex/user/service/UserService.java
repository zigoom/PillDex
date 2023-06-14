package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserService {
	// CRUD 기능의 메소드 구현
	// 회원 등록
	public UserVO selectUser(UserVO user) throws SQLException;
	
	/**
	 * 회원가입
	 * @param user
	 * @return 1 : 성공 , 0 : 실패
	 * @throws SQLException
	 */
	public int doSignUp(UserVO user) throws SQLException;
	
	/**
	 * 아이디 확인
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	public int doFindID(UserVO user) throws SQLException;
	
}
