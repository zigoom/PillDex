package com.fiveguys.pilldex.membership.service;

import com.fiveguys.pilldex.domain.UserVO;

public interface MembershipService {
	
	/**
	 * 회원정보 등록
	 * @param search
	 * @return 
	 * @throws SQLException
	 */
	public int register(UserVO user) throws Exception;
	
}