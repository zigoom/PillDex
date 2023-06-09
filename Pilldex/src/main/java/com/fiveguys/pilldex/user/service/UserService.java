package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserService {
	// CRUD 기능의 메소드 구현
	// 회원 등록
	public UserVO selectUser(UserVO vo) throws SQLException;
}
