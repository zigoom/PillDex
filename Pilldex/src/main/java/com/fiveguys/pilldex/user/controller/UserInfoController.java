package com.fiveguys.pilldex.user.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fiveguys.pilldex.Address.service.AddressService;
import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class UserInfoController {	
	@Autowired
	UserService userService;
	

	@Autowired
	AddressService addressService;
	
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart(HttpServletRequest request)throws Exception {
		
		HttpSession session = request.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("user");
		System.out.println("######## - "+UserVO.toString());
		
		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
	}
		

	/**
	 * 즐겨찾기 누를때 버튼 이벤트
	 */
	@ResponseBody
    @RequestMapping(value = "/mypage.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    public List<AddressVO> getBookmark(AddressVO addressVO, Model model) throws SQLException {
		System.out.println("getBookmark");
		
		System.out.println("@@@@@@@@@@@@ - "+addressVO.toString() );
		
		List<AddressVO> outVO = addressService.getAddressList(String.valueOf(addressVO.getmNo()));
		
		if(null!=outVO) {
			for(AddressVO vo : outVO) {
				System.out.println("%%%%%%%% - "+vo.toString() );				
			}
		}		
		model.addAttribute("addressVO", outVO);
        return outVO;
    }

}
