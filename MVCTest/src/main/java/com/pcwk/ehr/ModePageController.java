package com.pcwk.ehr;

import java.io.UnsupportedEncodingException;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ModePageController {

	@RequestMapping(value = "/mode.do", method = RequestMethod.GET)
	public String modePage(Model model) {
		return "mode";
	}

	
	@RequestMapping(value = "/apiload.do", method = RequestMethod.POST)
	public String apiLoad(Model model, HttpServletRequest req) throws UnsupportedEncodingException {
		String shape = req.getParameter("shape");
		String color = req.getParameter("color");
		String chart = req.getParameter("chart");
		String line = req.getParameter("line");
		
		String utf8shape = new String(shape.getBytes("ISO-8859-1"),"UTF-8");
		String utf8color = new String(color.getBytes("ISO-8859-1"),"UTF-8");
		String utf8chart = new String(chart.getBytes("ISO-8859-1"),"UTF-8");
		String utf8line = new String(line.getBytes("ISO-8859-1"),"UTF-8");

		model.addAttribute("shape", utf8shape);
		model.addAttribute("color", utf8color);
		model.addAttribute("chart", utf8chart);
		model.addAttribute("line", utf8line);

		return "mode";
	}



}
