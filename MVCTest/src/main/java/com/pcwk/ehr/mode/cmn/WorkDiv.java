package com.pcwk.ehr.mode.cmn;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.domain.PillVO;

public interface WorkDiv<T> {

    List<PillVO> parseDataFromDb(T inVO) throws SQLException;
}
