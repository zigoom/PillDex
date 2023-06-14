package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.dao.UserDao;
import com.fiveguys.pilldex.user.dao.UserDaoImpl;


@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDao userDAO;
	
	@Override
	public UserVO selectUser(UserVO user) throws SQLException {
		return userDAO.selectOne(user);
	}

	@Override
	public int doSignUp(UserVO user) throws SQLException {
		return userDAO.addUser(user);
	}

	@Override
	public int doFindID(UserVO user) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
}
