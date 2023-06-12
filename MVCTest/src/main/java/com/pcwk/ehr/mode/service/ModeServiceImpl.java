package com.pcwk.ehr.mode.service;

import com.pcwk.ehr.mode.dao.ModeDao;
import com.pcwk.ehr.mode.domain.PillVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class ModeServiceImpl implements ModeService {
	@Autowired
	private ModeDao modeDao;


	@Override
	public List<PillVO> parseDataFromDb(PillVO vo) throws SQLException {
		
		return modeDao.parseDataFromDb(vo);
	}

}
