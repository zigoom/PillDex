package com.fiveguys.pilldex.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.user.common.JDBCUtil;

@Repository("userDao")
public class UserDao {
	// JDBC 관련 변수
//	private Connection conn = null;
//	private PreparedStatement stmt = null;
//	private ResultSet rs = null;
//	// SQL 명령어들
//	private final String USER_GET = "select * from MEMBER where id=? ";
//
//	// CRUD 기능의 메소드 구현
//	// 회원 등록
//	public UserVO getUser(UserVO vo) {
//		UserVO user = null;
//		try {
//			System.out.println("===> JDBC로 getUser() 기능 처리");
//			conn = JDBCUtil.getConnection();
//			stmt = conn.prepareStatement(USER_GET);
//			stmt.setString(1, vo.getUserId());
//			rs = stmt.executeQuery();
//			if (rs.next()) {
//				user = new UserVO();
//				user.setUserId(rs.getString("user_id"));
//				user.setName(rs.getString("name"));
//				user.setPasswd(rs.getString("passwd"));
//				
//				System.out.println("!!!!!!!! - "+user.getUserGrade());
//				System.out.println("!!!!!!!! - "+user.getName());
//				System.out.println("!!!!!!!! - "+user.getPasswd());
//			}
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			JDBCUtil.close(rs, stmt, conn);
//		}
//		return user;
//	}
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;


	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		this.dataSource = dataSource;
	}

	public UserVO getUser(UserVO vo) {
		UserVO outVO =null;
		
		//userNo = 1;
		
		StringBuilder sb = new StringBuilder(200);
		sb.append(" SELECT *          \n");
//		sb.append("     user_id,     \n");
//		sb.append("     name,        \n");
//		sb.append("     passwd,       \n");
//		////////////////////////////////////////////////
//		sb.append(" 	hr_level,                                    \n");
//		sb.append(" 	login,                                       \n");
//		sb.append(" 	recommend,                                   \n");
//		sb.append(" 	email,                                       \n");
//		sb.append(" TO_CHAR(reg_dt,'yyyymmdd) reg_dt	\n");	
		////////////////////////////////////////////////
		sb.append(" FROM MAMBER   \n");
		sb.append(" WHERE user_id=?  \n");
		
		System.out.println("!!!!!!!!!!!!! - "+vo.getUserId());
		if(dataSource==null) {
			System.out.println("!!!!!!!!!!!!! - dataSource Is NULL");
		}else {
			System.out.println("!!!!!!!!!!!!! - dataSource Is Not NULL");
		}

		if(jdbcTemplate==null) {
			System.out.println("!!!!!!!!!!!!! - jdbcTemplate Is NULL");
		}else {
			System.out.println("!!!!!!!!!!!!! - jdbcTemplate Is Not NULL");
		}
		
		//param
		Object [] args = {vo.getUserId()};
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
		
//		System.out.print(outVO.getUserNo() +", ");
//		System.out.print(outVO.getUserGrade() +", ");
		System.out.print(outVO.getName() +", ");
		System.out.print(outVO.getUserId() +", ");
		System.out.print(outVO.getPasswd() +", ");
//		System.out.print(outVO.getTel() +", ");
//		System.out.print(outVO.getBirthday() +", ");
//		System.out.print(outVO.getSex() +", ");
//		System.out.print(outVO.getPostNum() +", ");
//		System.out.print(outVO.getNewAddr() +", ");
//		System.out.print(outVO.getOldAddr() +", ");
//		System.out.print(outVO.getRestAddr() +", ");
//		System.out.print(outVO.getEmail() +", ");
//		System.out.print(outVO.getRegDate() +", ");
//		System.out.println(outVO.getDel_yn());
		
		return outVO;
	}

}