package com.fiveguys.pilldex.map.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.map.service.AddressService;
import com.fiveguys.pilldex.user.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	@Autowired
	AddressService addressService;
	
	@Autowired
	UserService userService;
	
	@ResponseBody
    @RequestMapping(value = "/test.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public List<AddressVO> init(@RequestBody AddressVO addressVO) throws SQLException {
		System.out.println("init 호출");
		
		List<AddressVO> outVO = addressService.getAddressList(String.valueOf(addressVO.getmNo()));
		
		if(null!=outVO) {
			for(AddressVO vo : outVO) {
				vo.toString();
			}
		}
		
        return outVO;
    }
	
	
	@RequestMapping(value = "/map.do", method = RequestMethod.GET)
	public String map(HttpSession session, Model model) {
		System.out.println("지도 화면으로 이동...");
		
	    String name = (String) session.getAttribute("UserNo");
	    
	    if(""==name || null==name) {
	    	System.out.println("로그인이 되어있지 않음");
	    }else {
	    	System.out.println(name+"으로 로그인 되어있음");
	    }
	    
		return "map";
	}
	
	/**
	 * 즐겨찾기 누를때 버튼 이벤트
	 */
	@RequestMapping(value = "/map.do", method = RequestMethod.POST)
	public String addBookmarkButtonEvent(String userNo, Model model, HttpSession session) throws SQLException {
		System.out.println("addBookmarkButtonEvent() 호출");
	    String name = (String) session.getAttribute("UserNo");
		System.out.println(name);
//		List<AddressVO> outVO = addressService.getAddressList(userNo);
		//Integer flag, 
		
		// CRUD(Select:1, UPDATE:2, DELETE:3, INSERT:4)
//		if(1==flag) {
//			model.addAttribute("AddressVO", outVO);
//			
//		}else if(3==flag) {
//			
//		}		
		
		return "map";
	}
}
