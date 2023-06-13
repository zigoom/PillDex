package com.fiveguys.pilldex.main1controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fiveguys.pilldex.domain.PillVO;
import com.fiveguys.pilldex.domain.main1page;
import com.fiveguys.pilldex.main1.service.Main1BoardService;

@Controller
@RequestMapping(value = "/main1board/")	
public class BoardController  {

	@Inject
	Main1BoardService service;
	
	@RequestMapping(value = "/list.do", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {
				
		List<PillVO> list = null;
		list = service.list();
				
		model.addAttribute("list",list);
	}
	
	
	@RequestMapping(value = "/listPage.do", method = RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num") int num) throws Exception {
		
	main1page page = new main1page();
	page.setNum(num);
	page.setCount(service.count());  

	List<PillVO> list = null; 
	list = service.listPage(page.getDisplayPost(), page.getPostNum());

	model.addAttribute("list", list);   
	/*
	model.addAttribute("pageNum", page.getPageNum());

	model.addAttribute("startPageNum", page.getStartPageNum());
	model.addAttribute("endPageNum", page.getEndPageNum());
	 
	 model.addAttribute("prev", page.getPrev());
	model.addAttribute("next", page.getNext());  
	*/
	model.addAttribute("page", page);
	model.addAttribute("select", num);
	}
	
}


	
	