package com.pcwk.ehr;

import com.pcwk.ehr.mode.domain.PillVO;
import com.pcwk.ehr.mode.service.ModeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.sql.SQLException;
import java.util.List;

@Controller
public class ModePageController {

    private final ModeService modeService;

    @Autowired
    public ModePageController(ModeService modeService) {
        this.modeService = modeService;
    }

    @RequestMapping(value = "/mode.do", method = RequestMethod.GET)
    public String modePage(Model model) {
        return "mode";
    }

    @RequestMapping(value = "/apiload.do", method = RequestMethod.POST)
    public String apiLoad(Model model, HttpServletRequest req) throws SQLException {
        String shape = req.getParameter("shape");
        String color = req.getParameter("color");
        String chart = req.getParameter("chart");
        String line = req.getParameter("line");
        String printFB = req.getParameter("printFB");

        List<PillVO> searchData = modeService.getDataFromDb(shape, color, chart, line, line, printFB);

        model.addAttribute("searchData", searchData);
        return "mode";
    }
}
