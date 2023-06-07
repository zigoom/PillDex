package com.fiveguys.pilldex.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.cmn.DTO;
import com.fiveguys.pilldex.domain.UserVO;

@Repository("userDao")
public class UserDaoImpl implements UserDao {
	final String NAMESPACE ="com.fiveguys.pilldex";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public int doSave(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doUpdate(UserVO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public UserVO doSelectOne(UserVO inVO) throws SQLException {

		String statement = this.NAMESPACE+".doSelectOne";
		System.out.println("---------------------");
		System.out.println("- statement "+ statement);
		System.out.println("---------------------");
		UserVO outVO = this.sqlSessionTemplate.selectOne(statement,inVO);		
				
		
		
		
//		UserVO outVO =null;
//		
//		//userNo = 1;
//		
//		StringBuilder sb = new StringBuilder(200);
//		sb.append(" SELECT          \n");
//		sb.append("     id,     	\n");
//		sb.append("     name,       \n");
//		sb.append("     pw       	\n");
////		////////////////////////////////////////////////
////		sb.append(" 	hr_level,                                    \n");
////		sb.append(" 	login,                                       \n");
////		sb.append(" 	recommend,                                   \n");
////		sb.append(" 	email,                                       \n");
////		sb.append(" TO_CHAR(reg_dt,'yyyymmdd) reg_dt	\n");	
//		////////////////////////////////////////////////
//		sb.append(" FROM MEMBER   \n");
//		sb.append(" WHERE id=?  \n");
//		
//		System.out.println("!!!!!!!!!!!!! - "+inVO.getId());
//		if(dataSource==null) {
//			System.out.println("!!!!!!!!!!!!! - dataSource Is NULL");
//		}else {
//			System.out.println("!!!!!!!!!!!!! - dataSource Is Not NULL");
//		}
//
//		if(jdbcTemplate==null) {
//			System.out.println("!!!!!!!!!!!!! - jdbcTemplate Is NULL");
//		}else {
//			System.out.println("!!!!!!!!!!!!! - jdbcTemplate Is Not NULL");
//		}
//		
//		//param
//		Object [] args = {inVO.getId()};
//		outVO = jdbcTemplate.queryForObject(sb.toString(), new RowMapper<UserVO>() {
//			@Override
//			public UserVO mapRow(ResultSet rs, int rowNum) throws SQLException {
//				UserVO out = new UserVO();
//				out.setId(rs.getString("id"));
//				out.setName(rs.getString("name"));
//				out.setPw(rs.getString("pw"));
//				return out;
//			}
//		}, args);
//		
////		System.out.print(outVO.getUserNo() +", ");
////		System.out.print(outVO.getUserGrade() +", ");
//		System.out.print(outVO.getName() +", ");
//		System.out.print(outVO.getId() +", ");
//		System.out.print(outVO.getPw() +", ");
////		System.out.print(outVO.getTel() +", ");
////		System.out.print(outVO.getBirthday() +", ");
////		System.out.print(outVO.getSex() +", ");
////		System.out.print(outVO.getPostNum() +", ");
////		System.out.print(outVO.getNewAddr() +", ");
////		System.out.print(outVO.getOldAddr() +", ");
////		System.out.print(outVO.getRestAddr() +", ");
////		System.out.print(outVO.getEmail() +", ");
////		System.out.print(outVO.getRegDate() +", ");
////		System.out.println(outVO.getDel_yn());
//		
		return outVO;
	}

	@Override
	public List<UserVO> doRetrueve(DTO inVO) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

}