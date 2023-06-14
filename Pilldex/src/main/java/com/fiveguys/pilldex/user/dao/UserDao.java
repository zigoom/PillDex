package com.fiveguys.pilldex.user.dao;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserDao {
	public UserVO selectOne(UserVO inVO) throws SQLException;
	
	/**
	 * 비밀번호 체크
	 * @param user
	 * @return 1(id 존재) / 0 (id 없음) 
	 * @throws SQLException
	 */
	public int passCheck(UserVO user) throws SQLException;
	/**
	 * 아이디 체크
	 * @param user
	 * @return 1(id 존재) / 0 (id 없음) 
	 * @throws SQLException
	 */
	public int idCheck(UserVO user) throws SQLException;
	

	/**
	 * 회원가입
	 * @param user
	 * @return 1 : 성공 , 0 : 실패
	 * @throws SQLException
	 */
	public int addUser(UserVO user) throws SQLException;
	
}