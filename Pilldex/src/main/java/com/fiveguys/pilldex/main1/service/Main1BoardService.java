package com.fiveguys.pilldex.main1.service;

import java.util.List;

import com.fiveguys.pilldex.domain.PillVO;

public interface Main1BoardService {

	//약품 리스팅
	public List<PillVO> list() throws Exception;
	
	//게시물 총 갯수
	public int count() throws Exception;
	
	public List<PillVO> listPage(int displayPost, int postNum) throws Exception;
}
