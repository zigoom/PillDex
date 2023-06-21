package com.fiveguys.pilldex.Drug.dao;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.DrugVO;

public interface DrugDao {
	/**
	 * 사용자가 가지고 있는 즐겨찾기 주소 리스트로 받기
	 * 
	 * @param userNo
	 * @throws SQLException
	 */
	public List<DrugVO> doSelectDrugList(String userNo) throws SQLException;

	/**
	 * 사용자가 가지고 있는 즐겨찾기 주소 갯수 구하기
	 * 
	 * @param User no
	 * @return 0 ~ 10
	 * @throws SQLException
	 */
	public int getDrugCnt(int userNo) throws SQLException;

	public int drugCheckNm(String nm) throws SQLException;
	
	/**
	 * 즐겨찾기 주소 추가
	 * 
	 * @param vo
	 * @return 1: 성공, 0: 실패
	 * @throws SQLException
	 */
	public int addDrug(DrugVO vo) throws SQLException;

	/**
	 * 즐겨찾기 주소 삭제
	 * 
	 * @param vo
	 * @return 1: 성공, 0: 실패
	 * @throws SQLException
	 */
	public int deleteDrug(DrugVO vo) throws SQLException;

	/**
	 * 즐겨찾기 주소 Del=1 설정을 위한 update
	 * 
	 * @param vo
	 * @return 1: 성공, 0: 실패
	 * @throws SQLException
	 */
	public int updateDelDrug(int userNo) throws SQLException;

}