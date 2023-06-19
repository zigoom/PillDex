package com.fiveguys.pilldex.Address.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fiveguys.pilldex.Address.dao.AddressDao;
import com.fiveguys.pilldex.domain.AddressVO;


@Service("addressService")
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressDao addressDao;
	
	@Override
	public AddressVO getAddress(AddressService vo) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<AddressVO> getAddressList(String userNo) throws SQLException {
		return addressDao.doSelectAddressList(userNo);
	}
}
