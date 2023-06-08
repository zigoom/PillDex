package com.fiveguys.pilldex;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.service.UserService;


@RunWith(SpringJUnit4ClassRunner.class) // 스프링 테스트 컨텍스 프레임워크의 JUnit 확장 기능
										// 지정@FixMethodOrder(MethodSorters.NAME_ASCENDING) //Test 메소드를 오름차순으로 정렬한 순서대로
										// 실행
public class DataSourceTest {

	@Inject
	private DataSource dataSource;

	@Test
	public void testConnection() throws Exception {

		// 1. Spring 컨테이너를 구동한다.
		AbstractApplicationContext container = new GenericXmlApplicationContext("resources/applicationContext.xml");

		// 2. Spring 컨테이너로부터 UserServiceImpl 객체를 Lookup 한다.
		UserService userService = (UserService) container.getBean("userService");

		// 3. 로그인 기능 테스트
		UserVO vo = new UserVO();
		vo.setId("test");
		vo.setPw("test123");

		UserVO user = userService.getUser(vo);
		if (user != null) {
			System.out.println(user.getName() + "님 환영합니다.");
		} else {
			System.out.println("로그인 실패");
		}

		// 4. Spring 컨테이너를 종료한다.
		container.close();
	}

}
