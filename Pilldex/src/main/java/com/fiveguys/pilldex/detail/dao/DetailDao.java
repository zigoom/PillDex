package com.fiveguys.pilldex.detail.dao;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface DetailDao {
	List<PillVO> parseDataFromDbToNameDetail(PillVO inVO) throws SQLException;
}
