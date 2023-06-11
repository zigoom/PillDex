package com.pcwk.ehr.mode.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.dao.ModeDao;
import com.pcwk.ehr.mode.domain.PillVO;

public interface ModeService {
    List<PillVO> getDataFromDb(String shape, String color, String chart, String frontLine, String backLine, String printFB) throws SQLException;
}