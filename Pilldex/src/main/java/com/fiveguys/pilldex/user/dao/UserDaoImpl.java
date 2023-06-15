package com.fiveguys.pilldex.user.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.cmn.DTO;
import com.fiveguys.pilldex.domain.UserVO;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	final String NAMESPACE ="com.fiveguys.pilldex.user";
	final String DOT ="."; 
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	private final static Logger LOG = LogManager.getLogger(UserDaoImpl.class);
	
	// default 생성
	public UserDaoImpl() {	}
	
	
	@Override
	public UserVO selectOne(UserVO inVO) throws SQLException {
		String statement = this.NAMESPACE+".selectOne";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ statement "+ statement);
		LOG.debug("└────────────────────────────────────────────────────────┘");
		UserVO outVO = this.sqlSessionTemplate.selectOne(statement,inVO);		
		
		if(outVO!=null) {			
			System.out.println(outVO.toString());
		}else {
			System.out.println("쿼리 결과가 없습니다.");
		}
		return outVO;
	}


	@Override
	public int idCheck(UserVO user) throws SQLException {
		int flag =0;
		String statement = this.NAMESPACE+DOT+"idCheck";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 1. statement "+ statement);
		LOG.debug("│ 2. param=\n"+ user.toString());
		LOG.debug("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.selectOne(statement,user);		
		
		return flag;
	}

	@Override
	public int passCheck(UserVO user) throws SQLException {
		int flag =0;
		String statement = this.NAMESPACE+DOT+"passCheck";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 1. statement "+ statement);
		LOG.debug("│ 2. param=\n"+ user.toString());
		LOG.debug("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.selectOne(statement,user);	
		
		return flag;
	}


	@Override
	public int addUser(UserVO user) throws SQLException {
		int flag =0;
		String statement = this.NAMESPACE+DOT+"insertOne";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 1. statement "+ statement);
		LOG.debug("│ 2. param=\n"+ user.toString());
		LOG.debug("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.insert(statement,user);	
		
		return flag;
	}


	@Override
	public int deleteOne(UserVO user) throws SQLException {
		int flag =0;			
		String statement = this.NAMESPACE+DOT+"deleteOne";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ statement "+ statement);
		LOG.debug("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.delete(statement,user);		
		
		return flag;
	}


	@Override
	public UserVO searchId(UserVO user) throws SQLException {
		String statement = this.NAMESPACE+DOT+"searchId";
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ statement "+ statement);
		LOG.debug("└────────────────────────────────────────────────────────┘");
		UserVO outVO = this.sqlSessionTemplate.selectOne(statement,user);		
		
		return outVO;
	}


	@Override
	public int searchIdCnt(UserVO user) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}
}