package com.pcwk.ehr.mode.service;

import java.sql.SQLException;
import java.util.List;

import com.pcwk.ehr.mode.domain.PillVO;

public interface ModeService {
	
	public List<PillVO> getDataFromDb(String shape, String color, String chart, String line, String printFB) throws SQLException;
	
	default PillVO createPillVOWithEmptyFields(String shape, String color, String chart, String line, String printFB) {
	    PillVO pillVO = new PillVO();
	    pillVO.setShape(shape == null || shape.isEmpty() ? "" : shape);
	    pillVO.setColor(color == null || color.isEmpty() ? "" : color);
	    pillVO.setChart(chart == null || chart.isEmpty() ? "" : chart);
	    pillVO.setLine(line == null || line.isEmpty() ? "" : line);
	    pillVO.setPrintFB(printFB == null || printFB.isEmpty() ? "" : printFB);
	    return pillVO;
	}
}
