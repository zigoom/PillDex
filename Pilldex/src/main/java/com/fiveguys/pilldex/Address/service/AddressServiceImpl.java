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
	public List<AddressVO> getAddressList(String userNo) throws SQLException {
		return addressDao.doSelectAddressList(userNo);
	}

	@Override
	public int addAddress(AddressVO vo) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ addAddress()                                           │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		int flag = 11;
		flag = addressDao.getAddressCnt(Integer.toString(vo.getNo()));

		if(flag>=10) { 
			flag = -1;
		}else {
			flag = addressDao.addAddress(vo);
		}
		
		return flag;
	}

	@Override
	public int deleteAddress(AddressVO vo) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ deleteAddress()                                        │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		int flag = 0;
		flag = addressDao.deleteAddress(vo);
		return flag;
	}

}
