package com.fiveguys.pilldex.membership.controller;

import java.sql.SQLException;

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

@Controller
public class MembershipController {
	
	@Autowired
	MembershipService membershipService;
	
	@RequestMapping(value = "/membership.do", method = RequestMethod.GET)
	public String membershipView(UserVO user) throws Exception{ 
		
		return "membership";    
	}
	
	@RequestMapping(value = "/idDulpCheck.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String membershipIdCheck(UserVO user, HttpSession httpSession) throws SQLException {
		System.out.println("┌────────────────────────────────────────────────────────┐");
        System.out.println("│ membershipIdCheck()                                    │");
        System.out.println("└────────────────────────────────────────────────────────┘");
        
        String jsonString = "";
        MessageVO message = new MessageVO();
        
        System.out.println("===================================================");
        
        int result = 0;
        result = this.membershipService.doIdDuplCheck(user);
        
        if(10 == result) {
        	message.setMsgId("10");
        	message.setMsgContents("해당 ID는 사용할 수 없습니다");
        } else if(20 == result) {
        	message.setMsgId("20");
        	message.setMsgContents("사용할 수 있는 ID입니다");
        } 
        
       jsonString = new Gson().toJson(message);
       System.out.println("│ jsonString : "+jsonString);
        
        System.out.println("===================================================");
        
        return jsonString;
	}
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	@ResponseBody
	public String membershipRegister(UserVO user) throws Exception {
		System.out.println("┌────────────────────────────────────────────────────────┐");
        System.out.println("│ membershipRegister()                                   │");
        System.out.println("└────────────────────────────────────────────────────────┘");
        
		int flag = this.membershipService.register(user);
		
		String jsonString = "";
		MessageVO message = new MessageVO();
		
		if(10 == flag) {
			message.setMsgId("10");
			message.setMsgContents("축하합니다, 회원가입에 성공했습니다");
		} else if(20 == flag){
			message.setMsgId("20");
			message.setMsgContents("회원가입에 실패했습니다");
		}	
		
		jsonString = new Gson().toJson(message);
		
		return jsonString;
	}
	
}