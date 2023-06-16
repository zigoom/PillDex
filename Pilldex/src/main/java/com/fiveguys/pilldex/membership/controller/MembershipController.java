package com.fiveguys.pilldex.membership.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fiveguys.pilldex.cmn.MessageVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.membership.service.MembershipService;
import com.google.gson.Gson;

@Controller("membershipController")
public class MembershipController {
	
	@Autowired
	MembershipService membershipService;
	
	@RequestMapping(value = "/membershipView.do", method = RequestMethod.GET)
	public String membershipView(UserVO user) throws Exception{ 
		
		return "membership";
	}
	
	@RequestMapping(value = "memberhship.do", method = RequestMethod.POST
				   ,produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String membershipRegister(UserVO user, HttpSession httpSession) throws Exception {
		String jsonString = "";
		System.out.println("==================================================");
		System.out.println("user : "+user);
		int flag = this.membershipService.register(user);
		
		String message = "";
		if(10 == flag) {
			message = "사용가능한 ID입니다";
		} else if(20 == flag) {
			message = "중복된 ID가 존재합니다";
		}
				
		MessageVO messageVO = new MessageVO(String.valueOf(flag), message);
		jsonString = new Gson().toJson(messageVO);
		System.out.println("jsonString : "+jsonString);		
		System.out.println("==================================================");
		
		return jsonString;
	}
	
}