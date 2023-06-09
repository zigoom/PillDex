package com.fiveguys.pilldex.main1.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.main1.dao.Main1BoardDao;
import com.fiveguys.pilldex.domain.PillVO;

@Service
public class Main1BoardServiceImpl implements Main1BoardService {
	
	@Inject
	private Main1BoardDao main1BoardDao; 
	
	@Override
	public List<PillVO> list() throws Exception {
		
		return main1BoardDao.list();
	}

}
