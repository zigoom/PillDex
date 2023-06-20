package com.fiveguys.pilldex.membership.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.membership.dao.MembershipDao;

@Service
public class MembershipServiceImpl implements MembershipService {
	
	@Autowired
	MembershipDao membershipDao;
	
	public MembershipServiceImpl() {}

	@Override
	public int register(UserVO user) throws Exception {
		System.out.println("============================================");
		System.out.println("MembershipServiceImpl register()");
		System.out.println("============================================");
		
		int regNum = 0;
		
		
		int idCheck = this.membershipDao.idCheck(user);
		int add = this.membershipDao.add(user);
		
		// 10 : 가입 성공 / 20 : 가입 실패
		if(0 == idCheck) {
			if(1 == add) {
				regNum = 10;
			} else {
				regNum = 20;
			}
		} else {
			regNum = 20;
		}
		
		return regNum;
	}

	@Override
	public int doIdDuplCheck(UserVO user) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ doIdDuplCheck()                                        │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		
		int result = 0;
		int flag = 0;
		
		flag = this.membershipDao.idCheck(user);
		
		if(1 == flag) {
			result = 10;
		} else if (0 == flag) {
			result = 20;
		} 
		return result;
	}
		
}