package com.fiveguys.pilldex.mode.cmn;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface WorkDiv<T> {

    List<PillVO> parseDataFromDb(T inVO) throws SQLException;
    
    List<PillVO> parseDataFromDbToName(T inVO) throws SQLException;
    
    List<PillVO> parseDataFromDbToShape(T inVO) throws SQLException;
}
