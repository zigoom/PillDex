package com.fiveguys.pilldex;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.FixMethodOrder;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fiveguys.pilldex.Address.dao.AddressDao;
import com.fiveguys.pilldex.Address.service.AddressService;
import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.UserVO;


@RunWith(SpringJUnit4ClassRunner.class) //스프링 테스트 컨텍스 프레임워크의 JUnit 확장 기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) //테스트 컨텍스트가 자동으로 만들어줄 applicationContext.xml 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //Test 메소드를 오름차순으로 정렬한 순서대로 실행

public class AddressTest {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	ApplicationContext context; //테스트 오브젝트가 만들어지고 나면 스프링 테스트 컨택스트에 의해 자동으로 값이 주입됩니다.(아래 내용을 xml파일에서 가져온다.)
	// context = new GenericXmlApplicationContext("applicationContext.xml");
	@Autowired
	AddressService addressDao;

	/* 아이디를 기준으로 주소 즐겨찾기 리스트를 받는 테스트 입니다. */
	@Test
	@Ignore
	public void seleteListAddress() throws SQLException {
		List<AddressVO> list = addressDao.getAddressList("1");
		
		for(AddressVO vo : list) {
			LOG.debug(vo.toString());
		}
	}
	
	/* 주소 즐겨찾기 추가 테스트 입니다. */
	@Test
	@Ignore
	public void addAddress() throws SQLException {
		AddressVO addressVO = new AddressVO();
		addressVO.setmNo(1);					//유저 정보
		addressVO.setPostNum(06252); 			//06252
		addressVO.setnAddr("서울 강남구 강남대로 320");	//도로명 : 서울 강남구 강남대로 320
		addressVO.setoAddr("서울 강남구 역삼동 832-7"); 	//지번    : 서울 강남구 역삼동 832-7
		addressVO.setRestAddr("(역삼동)12층"); 		//상세    : (역삼동)
		addressVO.setDel('0');
				
		int result = addressDao.addAddress(addressVO); 	//**** 주소 즐겨찾기 추가 서비스 호출 ****//
		int result2 = addressDao.addAddress(addressVO); 	//**** 주소 즐겨찾기 추가 서비스 호출 ****//
		int result3 = addressDao.addAddress(addressVO); 	//**** 주소 즐겨찾기 추가 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("│ 회원 추가2 : "+ result2);		// 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("│ 회원 추가3 : "+ result3);		// 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}	

	/* 주소 즐겨찾기 삭제 테스트 입니다. */
	@Test
	public void deleteAddress() throws SQLException {
		AddressVO addressVO = new AddressVO();
		addressVO.setNo(21);	

		List<AddressVO> list = addressDao.getAddressList("1"); 
		//즐겨찾기 번호				
		int result = addressDao.updateDelAddress(list.get(0).getNo());//**** 주소 즐겨찾기 추가 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		List<AddressVO> list2= addressDao.getAddressList("1");
		
		for(AddressVO vo : list2) {
			LOG.debug(vo.toString());
		}		
	}	
}
