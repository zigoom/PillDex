package com.fiveguys.pilldex.main1.dao;

import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface Main1BoardDao {
	
	 public List<PillVO> list() throws Exception;
	 
	 public int count() throws Exception;
	 
	 public List<PillVO> listPage(int displayPost, int postNum) throws Exception;

	
	 
	 public List<PillVO> listPageSearchBox(
			   int displayPost, int postNum,
			   String   keyword,
			   String 	keyword_print,
			   String 	keyword_shape,
			   String 	keyword_color,
			   String 	keyword_chart,
			   String 	keyword_line

			   
			   ) throws Exception;
	 
	 public int searchCountBox(
			 String   keyword,
			 String 	keyword_print,
			   String 	keyword_shape,
			   String 	keyword_color,
			   String 	keyword_chart,
			   String 	keyword_line) throws Exception;

}
