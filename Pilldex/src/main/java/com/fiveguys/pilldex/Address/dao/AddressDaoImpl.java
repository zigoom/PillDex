package com.fiveguys.pilldex.Address.dao;

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
	private SqlSessionTemplate sqlSessionTemplate; 
	
	@Override
	public List<AddressVO> doSelectAddressList(String userNo) throws SQLException {
		List<AddressVO> outList = new ArrayList<>();	

		String statement = this.NAMESPACE+DOT+"selectAddressList";
		System.out.println("---------------------");
		System.out.println("- statement "+ statement);
		System.out.println("---------------------");
		outList = this.sqlSessionTemplate.selectList(statement,userNo);
				
		if(outList!=null) {
			for(AddressVO vo : outList) {
				System.out.println(vo.toString());
			}
		}else {
			System.out.println("쿼리 결과가 없습니다.");
		}
		
		
		return outList;
	}
}