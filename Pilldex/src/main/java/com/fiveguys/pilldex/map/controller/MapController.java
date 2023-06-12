package com.fiveguys.pilldex.map.controller;

import java.sql.SQLException;
import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.map.service.AddressService;
import com.fiveguys.pilldex.user.dao.UserDaoImpl;
import com.fiveguys.pilldex.user.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class MapController {
	
	@Autowired
	AddressService addressService;
	
	@RequestMapping(value = "/map.do", method = RequestMethod.GET)
	public String map(HttpSession session, Model model) {
	    String name = (String) session.getAttribute("UserNo");
	    
//	    if(""==name || null==name) {
//	    	System.out.println("!!!!!!!!!! - 비어있음");
//	    }else {
//	    	System.out.println("!!!!!!!!!! - "+name);
//	    }
	    
		return "map";
	}
	/**
	 * 즐겨찾기 누를때 버튼 이벤트
	 */
	@RequestMapping(value = "/map.do", method = RequestMethod.POST)
	public String addBookmarkButtonEvent(String userNo,Model model, HttpSession session) throws SQLException {
		List<AddressVO> outVO = addressService.getAddressList(userNo);
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
