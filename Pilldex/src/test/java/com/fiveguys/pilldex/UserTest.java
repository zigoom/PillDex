package com.fiveguys.pilldex;

import java.sql.SQLException;
import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;



@RunWith(SpringJUnit4ClassRunner.class) //스프링 테스트 컨텍스 프레임워크의 JUnit 확장 기능 지정
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"}) //테스트 컨텍스트가 자동으로 만들어줄 applicationContext.xml 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) //Test 메소드를 오름차순으로 정렬한 순서대로 실행

public class UserTest {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	ApplicationContext context; //테스트 오브젝트가 만들어지고 나면 스프링 테스트 컨택스트에 의해 자동으로 값이 주입됩니다.(아래 내용을 xml파일에서 가져온다.)
	// context = new GenericXmlApplicationContext("applicationContext.xml");
	@Autowired
	UserService userService;
		
	
	@Test
	public void selectOneUser() throws SQLException {
		UserVO inVO = new UserVO("Master","1234");
		UserVO outVO = userService.selectUser(inVO);
		
	}
}
