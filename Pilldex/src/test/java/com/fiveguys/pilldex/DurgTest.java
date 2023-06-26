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

import com.fiveguys.pilldex.Drug.service.DrugService;

import com.fiveguys.pilldex.domain.DrugVO;

@RunWith(SpringJUnit4ClassRunner.class) // 스프링 테스트 컨텍스 프레임워크의 JUnit 확장 기능 지정
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml" }) // 테스트 컨텍스트가 자동으로 만들어줄
																				// applicationContext.xml 위치
@FixMethodOrder(MethodSorters.NAME_ASCENDING) // Test 메소드를 오름차순으로 정렬한 순서대로 실행

public class DurgTest {
	final Logger LOG = LogManager.getLogger(getClass());

	@Autowired
	ApplicationContext context; // 테스트 오브젝트가 만들어지고 나면 스프링 테스트 컨택스트에 의해 자동으로 값이 주입됩니다.(아래 내용을 xml파일에서 가져온다.)
	// context = new GenericXmlApplicationContext("applicationContext.xml");
	@Autowired
	DrugService drugDao;
	
	@Test
	@Ignore
	public void getDrugCnt() throws SQLException{
		int cnt = drugDao.getDrugCnt(1);
		LOG.debug("===============cnt=============="+cnt);
	}

	/* 아이디를 기준으로 약품 즐겨찾기 리스트를 받는 테스트 입니다. */
	@Test
	@Ignore
	public void seleteListDrug() throws SQLException {
		List<DrugVO> list = drugDao.getDrugList(1);

		for (DrugVO vo : list) {
			LOG.debug(vo.toString());
		}
	}

	/* 약품 즐겨찾기 추가 테스트 입니다. */
	@Test
	@Ignore
	public void addDrug() throws SQLException {
		DrugVO drugVO = new DrugVO();
		drugVO.setmNo(1); // 유저 정보
		drugVO.setNm("타이레놀 8시간 이알서방정"); // 약품 이름
		drugVO.setDel('0');

		int result = drugDao.addDrug(drugVO); // **** 주소 즐겨찾기 추가 서비스 호출 ****//
		int result2 = drugDao.addDrug(drugVO); // **** 주소 즐겨찾기 추가 서비스 호출 ****//
		int result3 = drugDao.addDrug(drugVO); // **** 주소 즐겨찾기 추가 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 약품 추가 : " + result); // 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("│ 약품 추가2 : " + result2); // 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("│ 약품 추가3 : " + result3); // 1: 추가, 0: 추가 안됨, -1: 10개 이상이라 추가안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
	}

	/* 약품 즐겨찾기 삭제 테스트 입니다. */
	@Test
	public void deleteDrug() throws SQLException {
		DrugVO drugVO = new DrugVO();
		drugVO.setNo(298);

		List<DrugVO> list = drugDao.getDrugList(1);
		// 즐겨찾기 번호
		int result = drugDao.updateDelDrug(list.get(0).getNo());// **** 약품 즐겨찾기 추가 서비스 호출 ****//
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 약품 추가 : " + result); // 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");

		List<DrugVO> list2 = drugDao.getDrugList(1);

		for (DrugVO vo : list2) {
			LOG.debug(vo.toString());
		}
	}
}
