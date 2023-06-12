package com.fiveguys.pilldex.main1controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.domain.PillVO;
import com.fiveguys.pilldex.main1.service.Main1BoardService;

@Controller
@RequestMapping("/main1board/")
public class BoardController  {
	
	@Inject
	Main1BoardService service;
	
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
		
		List<PillVO> list = null;
		list = service.list();
				
		model.addAttribute("list",list);
	}
}
