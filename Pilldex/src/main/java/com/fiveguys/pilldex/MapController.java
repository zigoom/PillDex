package com.fiveguys.pilldex;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.user.UserDao;
import com.fiveguys.pilldex.user.UserVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	@RequestMapping(value = "/Map.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		
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
	public String login2(UserVO vo, UserDao dao, Model model ) {
		
		System.out.println("!!!!!!! - "+vo.getUserId());
		if (vo.getUserId() == null || vo.getUserId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}
		UserVO user = dao.getUser(vo);
		if (user != null) {
			//session.setAttribute("userName", user.getName());
			return "map_page";
		} else {
			System.out.println("값이 없습니다");
			return "map_page";
		}
		
//		UserVO outVO = dao.selectUser(vo.getUserId());
//
//		System.out.print(outVO.getUserNo() +", ");
//		System.out.print(outVO.getUserGrade() +", ");
//		System.out.print(outVO.getName() +", ");
//		System.out.print(outVO.getUserId() +", ");
//		System.out.print(outVO.getPasswd() +", ");
//		System.out.print(outVO.getTel() +", ");
//		System.out.print(outVO.getBirthday() +", ");
//		System.out.print(outVO.getSex() +", ");
//		System.out.print(outVO.getPostNum() +", ");
//		System.out.print(outVO.getNewAddr() +", ");
//		System.out.print(outVO.getOldAddr() +", ");
//		System.out.print(outVO.getRestAddr() +", ");
//		System.out.print(outVO.getEmail() +", ");
//		System.out.print(outVO.getRegDate() +", ");
//		System.out.println(outVO.getDel_yn());
//		
//		return "login";
	}
	
}
