package com.fiveguys.pilldex.Address.service;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.AddressVO;

public interface AddressService {
	// CRUD 기능의 메소드 구현
	// 회원 등록
	public AddressVO getAddress(AddressService vo) throws SQLException;

	public List<AddressVO> getAddressList(String userNo) throws SQLException;
}
