package com.fiveguys.pilldex.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.dao.UserDaoImpl;
import com.fiveguys.pilldex.domain.UserVO;


@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserDaoImpl userDAO;

	public void setUserDAO(UserDaoImpl userDAO) {
		this.userDAO = userDAO;
	}

	public UserVO getUser(UserVO vo) throws SQLException {
		return userDAO.doSelectOne(vo);
	}
}
