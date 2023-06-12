package com.fiveguys.pilldex.main1.dao;

import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface Main1BoardDao {
	 public List<PillVO> list() throws Exception;
	 
	 public int count() throws Exception;
	 
	 public List<PillVO> listPage(int displayPost, int postNum) throws Exception;
}
