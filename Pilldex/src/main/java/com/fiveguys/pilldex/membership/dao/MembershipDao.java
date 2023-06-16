package com.fiveguys.pilldex.membership.dao;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface MembershipDao {
	
	/**
	 * ID 중복검사
	 * @param user
	 * @return
	 * @throws SQLException
	 */
	public int idCheck(UserVO user) throws SQLException;
	
	/**
	 * 회원정보 추가
	 * @param user
	 * @return
	 * @throws Exception
	 */
	public int add(UserVO user) throws Exception;
}