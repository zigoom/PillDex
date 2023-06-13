package com.pcwk.ehr.mode.dao;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.domain.PillVO;

public interface ModeDao {
    List<PillVO> parseDataFromDb(PillVO inVO) throws SQLException;
}
