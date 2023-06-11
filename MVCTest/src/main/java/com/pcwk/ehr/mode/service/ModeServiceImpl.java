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
    public List<PillVO> getDataFromDb(String shape, String color, String chart, String line, String printFB) throws SQLException {
        PillVO pillVO = new PillVO();
        pillVO.setShape(shape);
        pillVO.setColor(color);
        pillVO.setChart(chart);
        pillVO.setLine(line);
        pillVO.setPrintFB(printFB);

        if (pillVO.getShape() == null || pillVO.getShape().isEmpty() || pillVO.getShape().equals("전체")) {
            pillVO.setShape("");
        }
        if (pillVO.getColor() == null || pillVO.getColor().isEmpty() || pillVO.getColor().equals("전체")) {
            pillVO.setColor("");
        }
        if (pillVO.getChart() == null || pillVO.getChart().isEmpty() || pillVO.getChart().equals("전체")) {
            pillVO.setChart("");
        }
        if (pillVO.getLine() == null || pillVO.getLine().isEmpty() || pillVO.getLine().equals("전체")) {
            pillVO.setLine("");
        }
        if (pillVO.getPrintFB() == null || pillVO.getPrintFB().isEmpty() || pillVO.getPrintFB().equals("전체")) {
            pillVO.setPrintFB("");
        }

        return modeDao.parseDataFromDb(pillVO);
    }
}
