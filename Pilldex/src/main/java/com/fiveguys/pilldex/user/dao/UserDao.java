package com.fiveguys.pilldex.user.dao;

import java.sql.SQLException;

import com.fiveguys.pilldex.domain.UserVO;

public interface UserDao {
	
	/**
	 * id를 사용하여 회원정보 출력
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	public UserVO selectOne(UserVO inVO) throws SQLException;
	
	public UserVO  selectOneMypage(UserVO inVO) throws SQLException;
	
	/**
	 * 아이디 여부  체크
	 * @param user
	 * @return 해당 id
	 * @throws SQLException
	 */
	public UserVO searchId(UserVO user) throws SQLException;
	
	/**
	 * 아이디 존재 여부  체크
	 * @param user
	 * @return 해당 id
	 * @throws SQLException
	 */
	public int searchIdCheck(UserVO user) throws SQLException;
	
	/**
	 * 패스워드 존재 여부  체크
	 * @param user
	 * @return 해당 id
	 * @throws SQLException
	 */
	public int searchPwCheck(UserVO user) throws SQLException;
	
	/**
	 * 비밀번호 변경
	 * @param user
	 * @return 1: id 존재 , 0: id 없음 
	 * @throws SQLException
	 */
	public int updatePw(UserVO user) throws SQLException;
	
	/**
	 * 비밀번호 체크
	 * @param user
	 * @return 1: id 존재 , 0: id 없음 
	 * @throws SQLException
	 */
	public int passCheck(UserVO user) throws SQLException;
	
	/**
	 * 아이디 체크
	 * @param user
	 * @return 1: id 존재 , 0: id 없음 
	 * @throws SQLException
	 */
	public int idCheck(UserVO user) throws SQLException;
	
	/**
	 * 회원가입
	 * @param user
	 * @return 1: 성공 , 0: 실패
	 * @throws SQLException
	 */
	public int addUser(UserVO user) throws SQLException;

	/**
	 * 계정 단건 삭제
	 * @param user
	 * @return 1: 성공 , 0: 실패
	 * @throws SQLException
	 */
	public int deleteOne(UserVO user) throws SQLException;
	
	/**
	 * 회원정보 변경
	 * @param user
	 * @return 1: 성공 , 0: 실패 
	 * @throws SQLException
	 */
	public int updateUser(UserVO user) throws SQLException;
}