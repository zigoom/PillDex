package com.fiveguys.pilldex.user.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fiveguys.pilldex.Address.service.AddressService;
import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;
import com.google.gson.Gson;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserInfoController {
	@Autowired
	AddressService addressService;

	@Autowired
	UserService userService;

	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("user");
		System.out.println("######## - " + UserVO.toString());

		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
	}

	@ResponseBody
	@RequestMapping(value = "/mypage.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String myPageGetAddress(@RequestBody AddressVO addressVO) throws SQLException {
		System.out.println("init 호출");

		List<AddressVO> outVO = addressService.getAddressList(String.valueOf(addressVO.getmNo()));
		String jsonString = "";
		jsonString = new Gson().toJson(outVO);

		if (null != outVO) {
			for (AddressVO vo : outVO) {
				vo.toString();
			}
		}
		return jsonString;
	}

	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	@ResponseBody
	public int updateUser(UserVO vo, Model model) throws SQLException {
		System.out.println("########"+vo.toString());
		int cnt = userService.doChangeInfo(vo);

		return cnt;

	}
	
	@RequestMapping(value = "/reset.do", method = RequestMethod.POST)
	@ResponseBody
	public int resetUser(UserVO vo, Model model) throws SQLException {
		int cnt =0; //userService.doChangeInfo(vo);

		return cnt;

	}
}
