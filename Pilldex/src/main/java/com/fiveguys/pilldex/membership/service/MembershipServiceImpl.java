package com.fiveguys.pilldex.membership.service;

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
		
}