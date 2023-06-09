package com.fiveguys.pilldex.main1.service;
import java.util.List;
import com.fiveguys.pilldex.domain.PillVO;
public interface Main1BoardService {

	//약품 리스팅
	public List<PillVO> list() throws Exception;
}
