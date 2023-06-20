package com.fiveguys.pilldex.membership.service;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface MembershipService {
	
	/**
	 * 회원정보 등록
	 * @param search
	 * @return 
	 * @throws SQLException
	 */
	public int register(UserVO user) throws Exception;
	
	/**
	 * 아이디 중복 검사
	 * @param user
	 * @return 1: id 존재 , 0: id 없음 
	 * @throws SQLException
	 */
	public int doIdDuplCheck(UserVO user) throws SQLException;
	
}