package com.fiveguys.pilldex.membership.dao;

import java.sql.SQLException;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.UserVO;

//bean에 추가하지 않아도 자동으로 데이터에 올려줌(?)
@Repository
public class MembershipDaoImpl implements MembershipDao {
	
	final String NAMESPACE = "com.fiveguys.pilldex.user";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;	// DB를 연결하는 객체!
	
	public MembershipDaoImpl() {}

	@Override
	public int idCheck(UserVO user) throws SQLException {
		System.out.println("============================================");
		System.out.println("MembershipDaoImpl idCheck()");
		System.out.println("============================================");
		
		
		int flag = 0;
		String statement = this.NAMESPACE+".idCheck";
		System.out.println("============================================");
		System.out.println("1. statement : \n"+statement);
		System.out.println("2. param : \n"+user.toString());
		System.out.println("============================================");
		
		flag = sqlSessionTemplate.selectOne(statement, user);	// id하나를 조회하는 것이므로 selectOne
		System.out.println("3. flag : "+flag);
		
		return flag;
	}

	@Override
	public int add(UserVO user) throws Exception {
		System.out.println("============================================");
		System.out.println("MembershipDaoImpl add()");
		System.out.println("============================================");
		
		int flag = 0;// 등록 건수	
		
		String statement = this.NAMESPACE+".add";
		System.out.println("============================================");
		System.out.println("1. statement : \n"+statement);
		System.out.println("============================================");
		System.out.println("2. param : \n"+user.toString());
		
		flag = this.sqlSessionTemplate.insert(statement, user);
		System.out.println("3. flag : "+flag);						
		
		return flag;
	}
	
	

}
