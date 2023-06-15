package com.fiveguys.pilldex.detail.service;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface DetailService {

	List<PillVO> parseDataFromDbToNameDetail(PillVO vo) throws SQLException;

}
