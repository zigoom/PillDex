package com.fiveguys.pilldex.main1.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.PillVO;

@Repository
public class MainBoardDaoImpl implements Main1BoardDao {
	@Inject
	private SqlSessionTemplate sqlSessionTemplate ;
	private static String namespace = "mapper.main1-paging-mapper";
	
	@Override
	public List<PillVO> list() throws Exception {
		return sqlSessionTemplate.selectList(namespace + ".list");
	}
	
	@Override
	public int count() throws Exception {
		return sqlSessionTemplate.selectOne(namespace + ".count");
	}
	
	@Override
	public List<PillVO> listPage(int displayPost, int postNum) throws Exception {

		 HashMap<String, Integer> data = new HashMap<String, Integer>();
		  
		 data.put("displayPost", displayPost);
		 data.put("postNum", postNum);
				 
		return sqlSessionTemplate.selectList(namespace + ".listPage", data);
	}

}
