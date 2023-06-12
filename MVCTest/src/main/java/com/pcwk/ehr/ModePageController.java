package com.pcwk.ehr;

import com.pcwk.ehr.mode.domain.PillVO;
import com.pcwk.ehr.mode.service.ModeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.sql.SQLException;
import java.util.List;

@Controller
public class ModePageController {

	@Autowired
	ModeService modeService;

	@Autowired
	public ModePageController(ModeService modeService) {
		this.modeService = modeService;
	}

	@RequestMapping(value = "/mode.do", method = RequestMethod.GET)
	public String modePage(Model model) {
		return "mode";
	}

	@RequestMapping(value = "/apiload.do", method = RequestMethod.GET)
	public String apiLoadGet(Model model) {
		return "mode";
	}

	@RequestMapping(value = "/apiload.do", method = RequestMethod.POST)
	public String apiLoad(PillVO vo, Model model) throws SQLException {
		
		List<PillVO> outVO = modeService.parseDataFromDb(vo);
		model.addAttribute("modeVO",outVO);
		
		
		return "mode";
	}

}
