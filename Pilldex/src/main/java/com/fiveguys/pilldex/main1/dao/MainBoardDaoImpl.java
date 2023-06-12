package com.fiveguys.pilldex.main1.dao;

import java.util.List;

import javax.inject.Inject;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.PillVO;

@Repository
public class MainBoardDaoImpl implements Main1BoardDao {
	@Inject
	private SqlSessionTemplate sqlSessionTemplate;
	private static String namespace = "mapper.main1-paging-mapper";
	@Override
	public List<PillVO> list() throws Exception {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectList(namespace + ".list");
	}

}
