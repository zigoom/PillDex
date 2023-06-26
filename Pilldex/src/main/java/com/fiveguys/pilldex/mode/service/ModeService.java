package com.fiveguys.pilldex.mode.service;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface ModeService {

	List<PillVO> parseDataFromDb(PillVO vo) throws SQLException;

	List<PillVO> parseDataFromDbToName(PillVO vo) throws SQLException;

	List<PillVO> parseDataFromDbToShape(PillVO vo) throws SQLException;
	
	int searchPillsCount(PillVO vo) throws SQLException;

}
