package com.pcwk.ehr.mode.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.cmn.WorkDiv;
import com.pcwk.ehr.mode.domain.PillVO;

public interface ModeDao extends WorkDiv<PillVO> {

	List<PillVO> parseDataFromDb(PillVO inVO) throws SQLException;
}
