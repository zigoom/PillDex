package com.fiveguys.pilldex.map.dao;

import java.sql.SQLException;
import java.util.List;

import com.fiveguys.pilldex.domain.AddressVO;

public interface AddressDao {
	public List<AddressVO> doSelectAddressList(String userNo) throws SQLException;
}