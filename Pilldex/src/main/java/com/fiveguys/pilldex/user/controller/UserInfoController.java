package com.fiveguys.pilldex.user.controller;

import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fiveguys.pilldex.Address.service.AddressService;
import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.PillVO;
import com.fiveguys.pilldex.domain.UserVO;
import com.fiveguys.pilldex.user.service.UserService;
import com.google.gson.Gson;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserInfoController {
	final Logger LOG = LogManager.getLogger(getClass());
	
	@Autowired
	AddressService addressService;

	@Autowired
	UserService userService;
	

	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("user");

		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
	}

    

	/**
	 * 주소 즐겨찾기 리스트 불러오는 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/getAddress.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public List<AddressVO> getAddressBookmark(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ getAddress()                                               │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
			
	    
	    List<AddressVO> outVO = addressService.getAddressList(String.valueOf(addressVO.getmNo()));
	    
	    if(null!=outVO) {
	        for(AddressVO vo : outVO) {            
	        }
	    }        
	    model.addAttribute("addressVO", outVO);
	    return outVO;
	}
	
	/**
	 * 주소 즐겨찾기 삭제 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/delAddress.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String delAddressBookmark(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ addAddressBookmark()                                               │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		LOG.debug("│ addressVO : "+ addressVO.toString());
		int result = addressService.updateDelAddress(addressVO.getNo());
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
	    return Integer.toString(result);
	}
	
	
	/**
	 * 의약품 즐겨찾기 리스트 불러오는 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/getPill.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public List<AddressVO> getPillBookmark(AddressVO addressVO, Model model) throws SQLException {
	    System.out.println("getBookmark");
	    
	    List<AddressVO> outVO = addressService.getAddressList(String.valueOf(addressVO.getmNo()));
	    
	    if(null!=outVO) {
	        for(AddressVO vo : outVO) {            
	        }
	    }        
	    model.addAttribute("addressVO", outVO);
	    return outVO;
	}
	/**
	 * 의약품  즐겨찾기 삭제 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/delPill.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String delPillBookmark(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ addAddressBookmark()                                               │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		LOG.debug("│ addressVO : "+ addressVO.toString());
		int result = addressService.updateDelAddress(addressVO.getNo());
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
	    return Integer.toString(result);
	}

	@RequestMapping(value = "/update.do", method = RequestMethod.POST)
	@ResponseBody
	public int updateUser(UserVO vo, Model model) throws SQLException {
		System.out.println("########"+vo.toString());
		int cnt = userService.doChangeInfo(vo);

		return cnt;

	}
	
	@RequestMapping(value = "/reset.do", method = RequestMethod.POST)
	@ResponseBody
	public int resetUser(UserVO vo, Model model) throws SQLException {
		int cnt =0; //userService.doChangeInfo(vo);

		return cnt;

	}
}
