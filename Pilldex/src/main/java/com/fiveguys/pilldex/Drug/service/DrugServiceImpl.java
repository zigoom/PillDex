package com.fiveguys.pilldex.Drug.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.Drug.dao.DrugDao;
import com.fiveguys.pilldex.domain.DrugVO;
import com.fiveguys.pilldex.domain.UserVO;

@Service("drugService")
public class DrugServiceImpl implements DrugService {

	@Autowired
	private DrugDao drugDao;

	@Override
	public List<DrugVO> getDrugList(String userNo) throws SQLException {
		return drugDao.doSelectDrugList(userNo);
	}

	@Override
	public int addDrug(DrugVO vo) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ addDrug()                                              │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		int flag = 11;
		flag = drugDao.getDrugCnt(vo.getmNo());

		if (flag >= 10) {
			flag = -1;
		} else {
			flag = drugDao.addDrug(vo);
		}

		return flag;
	}

	@Override
	public int deleteDrug(DrugVO vo) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ deleteDrug()                                           │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		int flag = 0;
		flag = drugDao.deleteDrug(vo);
		return flag;
	}

	@Override
	public int updateDelDrug(int no) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ deleteDelDrug()                                        │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		int flag = 0;
		flag = drugDao.updateDelDrug(no);
		return flag;
	}

	@Override
	public int drugCheckNm(String nm) throws SQLException {
		return drugDao.drugCheckNm(nm);
	}

	@Override
	public int getDrugCnt(int mNo) throws SQLException {
		// TODO Auto-generated method stub
		return drugDao.getDrugCnt(mNo);
	}

}
