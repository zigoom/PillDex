package com.fiveguys.pilldex.detail.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fiveguys.pilldex.detail.service.DetailService;
import com.fiveguys.pilldex.domain.PillVO;

@Controller
public class DetailPageController {
	
	private DetailService detailService;
	
	@Autowired
    public DetailPageController(DetailService detailService) {
        this.detailService = detailService;
    }

	@RequestMapping(value = "/detail.do", method = RequestMethod.GET)
	public String modePage(Model model) {
		return "detail";
	}
//	@RequestMapping(value = "/apiloadToNameDetail.do" ,method = RequestMethod.GET)
//    public String apiLoadToNameDetail(PillVO vo, Model model) throws SQLException{
//    	List<PillVO> outVO = detailService.parseDataFromDbToNameDetail(vo);
//    	model.addAttribute("detailVO", outVO);
//    	return "detail";
//    }

}
