package com.fiveguys.pilldex.user.impl;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.user.UserVO;

@Repository("userDAO")
public class UserDAO {
	final static Logger LOG = LogManager.getLogger(UserDAO.class);
		
	private DataSource dataSource;	
	private JdbcTemplate jdbcTemplate;

	public UserDAO() {	}

	public void setDataSource(DataSource dataSource) {	
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.dataSource = dataSource;
	}
	public DataSource getDataSource() {
		return dataSource;
	}

	public int insertUser(UserVO user) {
		return 0;
	}

	public UserVO selectUser(String userNo) {
		UserVO outVO =null;
		
		//userNo = 1;
		
		StringBuilder sb = new StringBuilder(200);
		sb.append(" SELECT           \n");
		sb.append("     user_id,     \n");
		sb.append("     name,        \n");
		sb.append("     passwd,       \n");
		////////////////////////////////////////////////
		sb.append(" 	hr_level,                                    \n");
		sb.append(" 	login,                                       \n");
		sb.append(" 	recommend,                                   \n");
		sb.append(" 	email,                                       \n");
		sb.append(" TO_CHAR(reg_dt,'yyyymmdd) reg_dt	\n");	
		////////////////////////////////////////////////
		sb.append(" FROM member   \n");
		sb.append(" WHERE user_id=?  \n");
		LOG.debug("1. sql=\n"+sb.toString());	
//		LOG.debug("2. pstmt=\n"+user.toString());
		
		System.out.println("!!!!!!!!!!!!! - "+userNo);
		//param
		Object [] args = {userNo};
		outVO = jdbcTemplate.queryForObject(sb.toString(), new RowMapper<UserVO>() {
			@Override
			public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
				UserVO out = new UserVO();
				out.setUserId(rs.getString("user_id"));
				out.setName(rs.getString("name"));
				out.setPasswd(rs.getString("passwd"));
				return out;
			}
		}, args);
		
		System.out.print(outVO.getUserNo() +", ");
		System.out.print(outVO.getUserGrade() +", ");
		System.out.print(outVO.getName() +", ");
		System.out.print(outVO.getUserId() +", ");
		System.out.print(outVO.getPasswd() +", ");
		System.out.print(outVO.getTel() +", ");
		System.out.print(outVO.getBirthday() +", ");
		System.out.print(outVO.getSex() +", ");
		System.out.print(outVO.getPostNum() +", ");
		System.out.print(outVO.getNewAddr() +", ");
		System.out.print(outVO.getOldAddr() +", ");
		System.out.print(outVO.getRestAddr() +", ");
		System.out.print(outVO.getEmail() +", ");
		System.out.print(outVO.getRegDate() +", ");
		System.out.println(outVO.getDel_yn());
		
		return outVO;
	}

}