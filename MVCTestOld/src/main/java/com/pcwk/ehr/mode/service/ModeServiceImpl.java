package com.pcwk.ehr.mode.service;

import com.pcwk.ehr.mode.dao.ModeDao;
import com.pcwk.ehr.mode.domain.PillVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class ModeServiceImpl implements ModeService {

    private final ModeDao modeDao;

    @Autowired
    public ModeServiceImpl(ModeDao modeDao) {
        this.modeDao = modeDao;
    }

    @Override
    public List<PillVO> getDataFromDb(String shape, String color, String chart, String frontLine, String backLine, String printFB) throws SQLException {
        List<PillVO> data = modeDao.parseDataFromDb(shape, color, chart, frontLine, backLine, printFB);
        return data;
    }
}