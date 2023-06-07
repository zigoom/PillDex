package com.fiveguys.pilldex.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.fiveguys.pilldex.dao.UserDaoImpl;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {	
	@Autowired
	UserService userService;
	
	/**
	 * 로그인 화면에 처음 접근할때 호출 하는 함수
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login(@ModelAttribute("user") UserVO vo) {
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
	public String login2(UserVO vo, UserDaoImpl dao, Model model, SessionStatus session ) throws SQLException {
		UserVO outVO = userService.getUser(vo);
				
		if (outVO != null) {
			//session.setAttribute("userNo", outVO.getNo());
			System.out.println("회원정보 : "+outVO.toString());
			model.addAttribute("userVO", outVO);
			return "map_page";
		} else {
			System.out.println("회원 정보가 없습니다.");
			outVO = new UserVO();
			outVO.setNo(-1);	// 회원 정보가 없을경우 
			model.addAttribute("userVO", outVO);
			return "login";
		}		
	}
	
}
