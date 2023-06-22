package com.fiveguys.pilldex.main.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.domain.PillVO2;
import com.fiveguys.pilldex.main.dao.MainBoardDao;

@Service
public class MainBoardServiceImpl implements MainBoardService {
	
	@Inject
	private MainBoardDao mainBoardDao; 
	
	@Override
	public List<PillVO2> list() throws Exception {
		return mainBoardDao.list();
	}
	
	@Override
	public int count() throws Exception {
		return mainBoardDao.count();
	}
	
	@Override
	public List<PillVO2> listPage(int displayPost, int postNum) throws Exception {
	 return mainBoardDao.listPage(displayPost, postNum);
	}

	@Override
	public List<PillVO2> listPageSearchBox(int displayPost, int postNum,String keyword, String keyword_print, String keyword_shape,
			String keyword_color, String keyword_chart, String keyword_line) throws Exception {
		
		return mainBoardDao.listPageSearchBox(displayPost, postNum,
												keyword,
												keyword_print,
												keyword_shape,
												keyword_color,
												keyword_chart,
												keyword_line 
								);
	}

	@Override
	public int searchCountBox(String keyword, String keyword_print,String keyword_shape, String keyword_color,
			String keyword_chart, String keyword_line) throws Exception {
		
		return mainBoardDao.searchCountBox(
				keyword,
				keyword_print,
				keyword_shape,
				keyword_color,
				keyword_chart,
				keyword_line);
	}

	@Override
	public List<PillVO2> detaillist(String keyword) throws Exception {
		return mainBoardDao.detaillist(keyword);
	}



	
	
}
