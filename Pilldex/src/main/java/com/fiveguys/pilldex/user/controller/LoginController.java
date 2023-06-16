package com.fiveguys.pilldex.user.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.dao.UserDaoImpl;
import com.fiveguys.pilldex.user.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {	
	final Logger LOG = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	UserService userService;
	
	/**
	 * 로그인 화면에 처음 접근할때 호출 하는 함수
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginPageStart(@ModelAttribute("user") UserVO vo) {
		System.out.println("로그인 화면으로 이동...");
		return "login";
	}
	
	/**
	 * 로그인 화면에서 로그인 버튼을 눌렀을때 post로 호출할때 접근하는 함수
	 * @param vo
	 * @param dao
	 * @param model
	 * @param session
	 * @return
	 * @throws SQLException
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String loginButtonEvent(UserVO vo, UserDaoImpl dao, Model model, HttpSession session ) throws SQLException {
		UserVO outVO = userService.selectUser(vo);
				
		if (outVO != null) {
			//session.setAttribute("userNo", outVO.getNo());
			System.out.println("회원정보 : "+outVO.toString());
			session.setAttribute("UserNo", String.valueOf(outVO.getNo()));
			model.addAttribute("userVO", outVO);
			return "redirect:/map.do";
		} else {
			System.out.println("회원 정보가 없습니다.");
			outVO = new UserVO();
			outVO.setNo(-1);	// 회원 정보가 없을경우 
			model.addAttribute("userVO", outVO);
			return "login";
		}		
	}
	
	/* 로그아웃시에 셰션 제거 호출  */
	@RequestMapping(value = "/loginOut.do", method = RequestMethod.POST)
	public String loginOutButtonEvent(HttpSession session) {
		session.invalidate();
		return "login";	
	}

	@RequestMapping(value = "/findId.do", method = RequestMethod.GET)
	public String findIdPwPageStart() {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ findIdPwPageStart()                                    │");
		System.out.println("│ 아이디/비밀번호 찾기 화면으로 이동...                                 │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		
		return "findIdAndPw";
	}
	
	
	@RequestMapping(value = "/findId.do", method = RequestMethod.POST)
	public String findId(UserVO user, HttpSession httpSession) {
		System.out.println("┌────────────────────────────────────────────────────────┐");
		System.out.println("│ findId()                  			                 │");
		System.out.println("│ 아이디찾기 기능  				                                 │");
		System.out.println("└────────────────────────────────────────────────────────┘");
		
		
		
		
		return "findIdAndPw";
	}
	
}
