package com.fiveguys.pilldex.user.dao;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserDao {
	public UserVO doSelectOne(UserVO inVO) throws SQLException;
}