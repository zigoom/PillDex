package com.fiveguys.pilldex.detail.dao;

import java.sql.SQLException;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.fiveguys.pilldex.domain.PillVO;

public class DetailDaoImpl implements DetailDao {
	private static final String NAMESPACE = "com.fiveguys.pilldex.detail";

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	public DetailDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<PillVO> parseDataFromDbToNameDetail(PillVO inVO) throws SQLException {
		String statement = NAMESPACE + ".searchPillsToNameDetail";
	    System.out.println(inVO.toString());
	    List<PillVO> outVO = sqlSessionTemplate.selectList(statement, inVO);
	    System.out.println("outVO: " + outVO.toString());
	    return outVO;
	}

}
