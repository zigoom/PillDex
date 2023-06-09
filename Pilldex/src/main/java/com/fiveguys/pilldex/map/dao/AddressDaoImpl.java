package com.fiveguys.pilldex.map.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fiveguys.pilldex.domain.AddressVO;

@Repository("addressDao")
public class AddressDaoImpl implements AddressDao {
	final String NAMESPACE ="com.fiveguys.pilldex.address";
	String DOT = ".";
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public List<AddressVO> doSelectAddressList(String userNo) throws SQLException {
		List<AddressVO> outList = new ArrayList<>();	

		String statement = this.NAMESPACE+DOT+"selectAddressList";
		System.out.println("---------------------");
		System.out.println("- statement "+ statement);
		System.out.println("---------------------");
		outList = this.sqlSessionTemplate.selectList(statement,userNo);
				
		return outList;
	}
}