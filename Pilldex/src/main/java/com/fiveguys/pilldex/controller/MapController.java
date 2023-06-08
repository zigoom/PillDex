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
public class MapController {
	
	@Autowired
	UserService userService;
	
	@RequestMapping(value = "/Map.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );		
		return "map_page";
	}
}
