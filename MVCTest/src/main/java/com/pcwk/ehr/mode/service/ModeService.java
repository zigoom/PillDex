package com.pcwk.ehr.mode.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.domain.PillVO;

public interface ModeService {

	List<PillVO> parseDataFromDb(PillVO vo) throws SQLException;

}
