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
	final String NAMESPACE ="com.pcwk.ehr.mode";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 



	@Override
	public List<PillVO> parseDataFromDb(PillVO inVO)throws SQLException {
		String statement = this.NAMESPACE+".searchPills";
		List<PillVO> outVO = this.sqlSessionTemplate.selectList(statement,inVO);
		System.out.println("outVO"+outVO.toString());
		return outVO;
	}

    
}
