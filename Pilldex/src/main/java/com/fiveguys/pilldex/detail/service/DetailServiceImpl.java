package com.fiveguys.pilldex.detail.service;

import com.fiveguys.pilldex.mode.dao.ModeDao;
import com.fiveguys.pilldex.domain.PillVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class DetailServiceImpl implements DetailService {
	@Autowired
	private ModeDao modeDao;
	
	public DetailServiceImpl(ModeDao modeDao) {
		this.modeDao = modeDao;
	}


	@Override
	public List<PillVO> parseDataFromDbToNameDetail(PillVO vo) throws SQLException {
		return modeDao.parseDataFromDbToName(vo);
	}

}
