package com.fiveguys.pilldex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.user.UserVO;
import com.fiveguys.pilldex.user.impl.UserDAO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	private static final Logger logger = LoggerFactory.getLogger(MapController.class);
	
	@RequestMapping(value = "/Map.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "map_page";
	}
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(@ModelAttribute("user") UserVO vo) {
		System.out.println("로그인 화면으로 이동...");
		return "login";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login2(UserVO vo, UserDAO dao, Model model) {
		
		UserVO outVO = dao.selectUser(vo.getUserId());

		System.out.print(outVO.getUserNo() +", ");
		System.out.print(outVO.getUserGrade() +", ");
		System.out.print(outVO.getName() +", ");
		System.out.print(outVO.getUserId() +", ");
		System.out.print(outVO.getPasswd() +", ");
		System.out.print(outVO.getTel() +", ");
		System.out.print(outVO.getBirthday() +", ");
		System.out.print(outVO.getSex() +", ");
		System.out.print(outVO.getPostNum() +", ");
		System.out.print(outVO.getNewAddr() +", ");
		System.out.print(outVO.getOldAddr() +", ");
		System.out.print(outVO.getRestAddr() +", ");
		System.out.print(outVO.getEmail() +", ");
		System.out.print(outVO.getRegDate() +", ");
		System.out.println(outVO.getDel_yn());
		
		return "login";
	}
	
}
