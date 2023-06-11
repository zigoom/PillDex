package com.pcwk.ehr.mode.cmn;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.domain.PillVO;

public interface WorkDiv<T> {

	/**
	 * 조건에 맞는 데이터 불러오기
	 * @param inVO
	 * @return
	 * @throws SQLException
	 */
	String parseDataFromDb(T inVO)throws SQLException;

	List<PillVO> parseDataFromDb(String shape, String color, String chart, String frontLine, String backLine,
			String printFB) throws SQLException;
}
