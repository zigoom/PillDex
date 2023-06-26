package com.fiveguys.pilldex.mode.dao;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface ModeDao {
    List<PillVO> parseDataFromDb(PillVO inVO) throws SQLException;

	List<PillVO> parseDataFromDbToName(PillVO inVO) throws SQLException;
	
	List<PillVO> parseDataFromDbToShape(PillVO inVO) throws SQLException;
	
	int searchPillsCount(PillVO inVO) throws SQLException;
}
