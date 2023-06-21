package com.fiveguys.pilldex.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class UserInfoController {	
	@Autowired
	UserService userService;
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart(HttpServletRequest request)throws Exception {
		
		HttpSession session = request.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("user");
		System.out.println("######## - "+UserVO.toString());
		
		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
	}

}
