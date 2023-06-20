package com.fiveguys.pilldex.user.service;

import java.sql.SQLException;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.dao.UserDao;
import com.fiveguys.pilldex.user.dao.UserDaoImpl;


@Service("userService")
public class UserServiceImpl implements UserService {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public UserVO selectUser(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ selectUser()                                           │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return userDao.selectOne(user);
	}

	@Override
	public int doSignUp(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doSignUp()                                             │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		int flag = this.doIdDuplCheck(user); // 아이디 중복 확인			
		if(1==flag) { 	// 이미 동일한 아이디가 있습니다
			return 0;
		}else {   			// 중복된 아이디가 없습니다
			return userDao.addUser(user); // 회원가입 진행
		}		
	}

	@Override
	public int doIdDuplCheck(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doIdDuplCheck()                                        │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return this.userDao.idCheck(user);
	}

	@Override
	public int deleteOne(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ deleteOne()                                            │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		return userDao.deleteOne(user);
	}

	@Override
	public int doLogin(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doLogin()                                              │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		int checkStatus = 0; 		// 10(id 없음)/20(비밀번호 오류),30(성공) 
		int status = this.userDao.idCheck(user);
		
		if(1==status) {
			status = userDao.passCheck(user);
			if(1==status) {
				checkStatus = 30; 	// 로그인 성공 
			}else {
				checkStatus = 20; 	// 비밀번호 오류
			}
		} else {
			checkStatus = 10; 		// id없음
		}
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ checkStatus : "+ checkStatus);
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		return checkStatus;
	}

	@Override
	public String doSearchId(UserVO user) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doSearchId()                                           │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
        String result = "-1";
        
		int flag =0;
		flag = this.userDao.searchIdCheck(user);
		
        if(0==flag) {
            result = "-1";
        }else if(1==flag) {
            result = this.userDao.searchId(user).getId(); 
        } 
        return result;
	}
	
	@Override
    public int doSearchPw(UserVO user) throws SQLException {//10(id 없음)/20(비밀번호 수정 오류),30(비밀번호 수정 성공) 
        int checkStatus = -1;
        checkStatus = this.userDao.searchPwCheck(user);
        if(0==checkStatus) {
            checkStatus = -1;
        } else if(1==checkStatus) {
            user.setPw("123123");     // passUpdate to "123123"
            checkStatus = userDao.updatePw(user);
        } 
        return checkStatus;
    }

	@Override
	public int doChangeInfo(UserVO user) throws SQLException {
		int checkStatus = -1;
        checkStatus = this.userDao.updateUser(user);
        if(0==checkStatus) {
            checkStatus = -1; // 회원정보가 변경되지 않음
        } 
        return checkStatus;
	}
}
