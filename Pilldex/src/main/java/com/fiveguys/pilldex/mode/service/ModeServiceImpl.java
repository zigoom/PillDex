package com.fiveguys.pilldex.mode.service;

import com.fiveguys.pilldex.mode.dao.ModeDao;
import com.fiveguys.pilldex.domain.PillVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.SQLException;
import java.util.List;

@Service
public class ModeServiceImpl implements ModeService {
	@Autowired
	private ModeDao modeDao;
	
	public ModeServiceImpl(ModeDao modeDao) {
		this.modeDao = modeDao;
	}


	@Override
	public List<PillVO> parseDataFromDb(PillVO vo) throws SQLException {
		
		return modeDao.parseDataFromDb(vo);
	}


	@Override
	public List<PillVO> parseDataFromDbToName(PillVO vo) throws SQLException {
		return modeDao.parseDataFromDbToName(vo);
	}


	@Override
	public List<PillVO> parseDataFromDbToShape(PillVO vo) throws SQLException {
		return modeDao.parseDataFromDbToShape(vo);
	}


	@Override
	public int searchPillsCount(PillVO vo) throws SQLException {
		return modeDao.searchPillsCount(vo);
	}

}
