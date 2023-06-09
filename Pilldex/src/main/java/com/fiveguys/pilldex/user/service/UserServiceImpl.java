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

	public void setUserDAO(UserDaoImpl userDAO) {
		this.userDAO = userDAO;
	}

	public UserVO getUser(UserVO vo) throws SQLException {
		return userDAO.doSelectOne(vo);
	}
}
