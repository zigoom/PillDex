package com.pcwk.ehr.mode.dao;

import com.pcwk.ehr.mode.domain.PillVO;
import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ModeDaoImpl implements ModeDao {
	private static final String NAMESPACE = "com.pcwk.ehr.mode";

	private final SqlSessionTemplate sqlSessionTemplate;

	@Autowired
	public ModeDaoImpl(SqlSessionTemplate sqlSessionTemplate) {
		this.sqlSessionTemplate = sqlSessionTemplate;
	}

	@Override
	public List<PillVO> parseDataFromDb(PillVO inVO) throws SQLException {
	    String statement = NAMESPACE + ".searchPills";
	    List<PillVO> outVO = sqlSessionTemplate.selectList(statement, inVO);
	    System.out.println("outVO: " + outVO.toString());
	    return outVO;
	}


}
