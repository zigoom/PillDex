package com.fiveguys.pilldex.user.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.user.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class UserInfoController {	
	@Autowired
	UserService userService;
	
	/**
	 * 로그인 화면에 처음 접근할때 호출 하는 함수
	 * @param vo
	 * @return
	 */
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart() {
		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
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
//	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
//	public String loginButtonEvent(UserVO vo, UserDaoImpl dao, Model model, HttpSession session ) throws SQLException {
//		UserVO outVO = userService.selectUser(vo);
//				
//		if (outVO != null) {
//			//session.setAttribute("userNo", outVO.getNo());
//			System.out.println("회원정보 : "+outVO.toString());
//			session.setAttribute("UserNo", String.valueOf(outVO.getNo()));
//			model.addAttribute("userVO", outVO);
//			return "redirect:/map.do";
////			return "map_page";
//		} else {
//			System.out.println("회원 정보가 없습니다.");
//			outVO = new UserVO();
//			outVO.setNo(-1);	// 회원 정보가 없을경우 
//			model.addAttribute("userVO", outVO);
//			return "login";
//		}		
//	}
//	
//	/* 로그아웃시에 셰션 제거 호출  */
//	@RequestMapping(value = "/loginOut.do", method = RequestMethod.POST)
//	public String loginOutButtonEvent(HttpSession session) {
//		session.invalidate();
//		return "login";	
//	}
	
}
