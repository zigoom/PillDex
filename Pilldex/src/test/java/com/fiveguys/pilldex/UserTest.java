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

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;



@RunWith(SpringJUnit4ClassRunner.class) 
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
									"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@FixMethodOrder(MethodSorters.NAME_ASCENDING) 
public class UserTest {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	ApplicationContext context;
	@Autowired
	UserService userService;
		
	
	/* 아이디를 기준으로 회원정보 받기 테스트 입니다. */
	@Test
	@Ignore
	public void selectOneUser() throws SQLException {
		UserVO inVO = new UserVO();
		inVO.setId("Master");
		UserVO outVO = userService.selectUser(inVO);
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ "+inVO.getId()+"회원의 정보  : \n"+ outVO.toString()); 	// 회원 정보
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}
	
	/* 아이디 중복 확인 테스트 입니다. */
	@Test
	@Ignore
	public void idCheck() throws SQLException {
		UserVO inVO = new UserVO();
		inVO.setId("Master");
		int result = userService.doIdDuplCheck(inVO); 	//**** 회원 로그인 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 아이디 중복 여부  : "+ result); //0: id 없음, 2: 이미 있는 id
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}
	
	/* 아이디 찾기 */
	@Test
	@Ignore
	public void searchId() throws SQLException {
		UserVO user = new UserVO();
		user.setName("관리자3");
		user.setEmail("test@gmail.com");
        
        String result = "-1";
        result = userService.doSearchId(user);     //**** 회원 로그인 서비스 호출 ****//
        if("-1".equals(result)) {         // (10 : id 오류)
            LOG.debug("┌────────────────────────────────────────────────────────┐");
            LOG.debug("│ 아이디 찾기  : 이름, 이메일을 다시 확인 바람"); 
            LOG.debug("└────────────────────────────────────────────────────────┘");
        }else {        
            LOG.debug("┌────────────────────────────────────────────────────────┐");
            LOG.debug("│ 아이디 찾기  (아이디  : "+ result); // 찾고자 하는 ID
            LOG.debug("└────────────────────────────────────────────────────────┘");
        }
	}
	

	/* 비밀번호  찾기(1234로 비밀번호 수정) */
	@Test
	@Ignore
	public void searchPw() throws SQLException {
		UserVO user = new UserVO();
		user.setName("관리자3");
		user.setId("Master3");
		user.setEmail("test@gmail.com");
		int result = userService.doSearchPw(user); 	//**** 회원 로그인 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 비밀번호 수정 여부   : "+ result); 	//1: 비밀번호 123123으로 수정, 0: 수정 실패
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}
	

	/* 회원 로그인 테스트 입니다. */
	@Test
	@Ignore
	public void login() throws SQLException{
		UserVO inVO = new UserVO();
		inVO.setId("Master3");
		inVO.setPw("123123");
		int result = userService.doLogin(inVO); 	//**** 회원 로그인 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 로그인 여부  : "+ result); //10: id 없음, 20: 비밀번호 오류, 30: 로그인 성공 
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}
	
	
	/* 회원 삭제/추가 테스트 입니다. */
	@Test
	@Ignore
	public void addUser() throws SQLException {
		String yy = "2023";
		String mm = "06";
		String dd = "15";
		
		
		UserVO user = new UserVO();
		user.setGrade(10);
		user.setName("관리자3");
		user.setId("Master3");
		user.setPw("123123");
		user.setTel("010-1234-5678");
		//user.setBirth("19931009");
		user.setBirth(yy+mm+dd);
		user.setSex('1');
		user.setPostNum(12345);
		user.setnAddr("옛주소 영역 입니다");
		user.setoAddr("도로 주소 영역 입니다");
		user.setRestAddr("상세 주소 영역 입니다");
		user.setEmail("test@gmail.com");
		user.setDel('0');

		int result = userService.deleteOne(user); 	//**** 회원 삭제 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 단건 삭제  : "+ result); 	// 1: 삭제, 2: 삭제 안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		int result2 = userService.doSignUp(user);		//**** 회원 추가 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result2);		// 1: 추가, 0: 추가 안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}
}
