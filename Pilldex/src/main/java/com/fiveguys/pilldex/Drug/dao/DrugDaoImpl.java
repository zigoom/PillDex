package com.fiveguys.pilldex.Drug.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.DrugVO;

@Repository("drugDao")
public class DrugDaoImpl implements DrugDao {
	final String NAMESPACE = "com.fiveguys.pilldex.detail";
	String DOT = ".";
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public List<DrugVO> doSelectDrugList(int mNo) throws SQLException {
		List<DrugVO> outList = new ArrayList<>();

		String statement = this.NAMESPACE + DOT + "selectDrugList";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		outList = this.sqlSessionTemplate.selectList(statement, mNo);

		if (outList != null) {
			for (DrugVO vo : outList) {
				System.out.println(vo.toString());
			}
		} else {
			System.out.println("쿼리 결과가 없습니다.");
		}

		return outList;
	}

	@Override
	public int drugCheckNm(String nm) throws SQLException {
		int cnd = 0;
		String statement = this.NAMESPACE + DOT + "drugCheckNm";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		cnd = this.sqlSessionTemplate.selectOne(statement, nm);

		return cnd;
	}

	@Override
	public int addDrug(DrugVO vo) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + DOT + "insertOne";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.insert(statement, vo);

		return flag;
	}

	@Override
	public int deleteDrug(String nm) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + DOT + "deleteDrugList";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.delete(statement, Integer.valueOf(nm));
		return flag;
	}

	@Override
	public int updateDelDrug(int no) throws SQLException {
		int flag = 0;
		String statement = this.NAMESPACE + DOT + "updateDel";
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ 1. statement " + statement);
		System.out.println("└────────────────────────────────────────────────────────┘");
		flag = this.sqlSessionTemplate.insert(statement, no);
		return flag;
	}

	@Override
	public int getDrugCnt(int mNo) throws SQLException {
		int cnd = 0;
		String statement = this.NAMESPACE + DOT + "drugCheckCnt";
		cnd = this.sqlSessionTemplate.selectOne(statement, mNo);
		return cnd;
	}

}