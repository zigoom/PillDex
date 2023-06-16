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
	
	@Override
	public int count() throws Exception {
		return main1BoardDao.count();
	}
	
	@Override
	public List<PillVO> listPage(int displayPost, int postNum) throws Exception {
	 return main1BoardDao.listPage(displayPost, postNum);
	}

	@Override
	public List<PillVO> listPageSearchBox(int displayPost, int postNum,String keyword, String keyword_print, String keyword_shape,
			String keyword_color, String keyword_chart, String keyword_line) throws Exception {
		
		return main1BoardDao.listPageSearchBox(displayPost, postNum,
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
		
		return main1BoardDao.searchCountBox(
				keyword,
				keyword_print,
				keyword_shape,
				keyword_color,
				keyword_chart,
				keyword_line);
	}



	
	
}
