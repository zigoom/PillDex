package com.pcwk.ehr.mode.dao;

import com.pcwk.ehr.mode.domain.PillVO;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ModeDaoImpl implements ModeDao {

    private final SqlSession sqlSession;

    @Autowired
    public ModeDaoImpl(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    @Override
    public List<PillVO> parseDataFromDb(String shape, String color, String chart, String line, String printFB) {
        Map<String, Object> parameters = new HashMap<>();
        parameters.put("shape", shape);
        parameters.put("color", color);
        parameters.put("chart", chart);
        parameters.put("line", line);
        parameters.put("printFB", printFB);
        return sqlSession.selectList("com.pcwk.ehr.mode.dao.ModeMapper.parseDataFromDb", parameters);
    }


    @Override
    public List<PillVO> parseDataFromDb(PillVO inVO) {
        // TODO Auto-generated method stub
        return null;
    }
}
