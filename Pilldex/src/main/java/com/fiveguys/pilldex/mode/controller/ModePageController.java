package com.fiveguys.pilldex.mode.controller;

import com.fiveguys.pilldex.Drug.service.DrugService;
import com.fiveguys.pilldex.domain.DrugVO;
import com.fiveguys.pilldex.domain.PillVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.mode.service.ModeService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.sql.SQLException;
import java.util.List;

@Controller
public class ModePageController {

	@Autowired
	private DrugService drugService;

	private ModeService modeService;

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
		model.addAttribute("modeVO", outVO);
		return "mode";
	}

	@RequestMapping(value = "/apiloadToName.do", method = RequestMethod.POST)
	public String apiLoadToName(PillVO vo, Model model) throws SQLException {
		List<PillVO> outVO = modeService.parseDataFromDbToName(vo);
		model.addAttribute("modeVO", outVO);
		return "mode";
	}

	@RequestMapping(value = "/apiloadToNameDetail.do", method = RequestMethod.POST)
	public String apiLoadToNameDetaiil(PillVO vo, Model model) throws SQLException {
		List<PillVO> outVO = modeService.parseDataFromDbToName(vo);
		if (!outVO.isEmpty()) {
			PillVO pillVO = outVO.get(0);

			List<PillVO> outVO2 = modeService.parseDataFromDbToShape(vo);
			if (!outVO2.isEmpty()) {
				PillVO pillVO2 = outVO2.get(0);
				pillVO.setChart(pillVO2.getChart());
			}
			model.addAttribute("modeVO", pillVO);
		}

		return "detail";
	}

	@RequestMapping(value = "/drugBookmarkAdd.do", method = RequestMethod.POST)
	@ResponseBody
	public int drugBookmarkAdd(DrugVO vo, Model model) throws SQLException {
		int outVO = drugService.addDrug(vo);
		if (outVO > 10) {
			System.out.println("10건초과");
		} else {
			model.addAttribute("drugVO", outVO);
		}

		return outVO;
	}

	@RequestMapping(value = "/drugCheckNm.do", method = RequestMethod.POST)
	@ResponseBody
	public int drugCheckNm(String nm, Model model) throws SQLException {
		int cnt = drugService.drugCheckNm(nm);
		return cnt;

	}
	

}
