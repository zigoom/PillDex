package com.fiveguys.pilldex.mode.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.PillVO;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ModeDaoImpl implements ModeDao {
	private static final String NAMESPACE = "com.fiveguys.pilldex.mode";

	private final SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	public ModeDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<PillVO> parseDataFromDb(PillVO inVO) throws SQLException {
		String statement = NAMESPACE + ".searchPills";
		System.out.println(inVO.toString());
		List<PillVO> outVO = sqlSessionTemplate.selectList(statement, inVO);
		System.out.println("outVO: " + outVO.toString());
		return outVO;
	}

	@Override
	public List<PillVO> parseDataFromDbToName(PillVO inVO) throws SQLException {
		String statement = NAMESPACE + ".searchPillsToName";
		System.out.println(inVO.toString());
		List<PillVO> outVO = sqlSessionTemplate.selectList(statement, inVO);
		System.out.println("outVO: " + outVO.toString());
		return outVO;
	}

	@Override
	public List<PillVO> parseDataFromDbToShape(PillVO inVO) throws SQLException {
		String statement = NAMESPACE + ".searchPillsToShape";
		System.out.println(inVO.toString());
		List<PillVO> outVO = sqlSessionTemplate.selectList(statement, inVO);
		System.out.println("outVO: " + outVO.toString());
		return outVO;
	}

	@Override
	public int searchPillsCount(PillVO inVO) throws SQLException {
		int cnd = 0;
		String statement = NAMESPACE + ".searchPillsCount";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		System.out.println("!!cnd!!"+cnd);
		cnd = this.sqlSessionTemplate.selectOne(statement, inVO);

		return cnd;
	}

}
