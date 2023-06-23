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
import com.fiveguys.pilldex.Drug.service.DrugService;
import com.fiveguys.pilldex.cmn.MessageVO;
import com.fiveguys.pilldex.domain.AddressVO;
import com.fiveguys.pilldex.domain.DrugVO;
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

	@Autowired
	private DrugService drugService;
	

	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public String myPageStart(HttpServletRequest request) throws Exception {

		HttpSession session = request.getSession();
		UserVO UserVO = (UserVO) session.getAttribute("user");

		System.out.println("마이페이지 화면으로 이동...");
		return "mypage";
	}

    
	/**
	 * 주소 즐겨찾기 리스트 단건 불러오는 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/getAddressOne.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public List<AddressVO> getAddressBookmarkOne(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ getAddressBookmarkOne()                                │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
	    List<AddressVO> outVO = addressService.getAddressListOne(String.valueOf(addressVO.getNo()));
	    
	    if(null!=outVO) {
	        for(AddressVO vo : outVO) {            
	        }
	    }        
	    model.addAttribute("addressVO", outVO);
	    return outVO;
	}
	/**
	 * 주소 즐겨찾기 리스트 불러오는 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/getAddress.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public List<AddressVO> getAddressBookmark(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ getAddressBookmark()                                   │");
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
		LOG.debug("│ delAddressBookmark()                                   │");
		LOG.debug("└────────────────────────────────────────────────────────┘");		
		LOG.debug("│ addressVO : "+ addressVO.toString());

		String jsonString = "";  
        MessageVO message = new MessageVO();		
        
		int result = addressService.updateDelAddress(addressVO.getNo());
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		
		if(1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("주소 즐겨찾기를 삭제했습니다.");
	        return new Gson().toJson(message);    
		}
		else if(0==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("주소 즐겨찾기를 삭제 할 수 없습니다");
	        return new Gson().toJson(message);    
		}
        
        jsonString = new Gson().toJson(message);
        
        LOG.debug("│ jsonString : "+jsonString);
        LOG.debug("└────────────────────────────────────────────────────────┘");
        return jsonString;    	
	}
	/**
	 * 주소 즐겨찾기 추가 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/addAddress.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String addAddressBookmark(AddressVO addressVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ addAddressBookmark()                                   │");
		LOG.debug("└────────────────────────────────────────────────────────┘");		
		LOG.debug("│ addressVO : "+ addressVO.toString());
		int result = addressService.addAddress(addressVO);		
		String jsonString = "";  
        MessageVO message = new MessageVO();
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨, -1:10개 이상임 
		LOG.debug("└────────────────────────────────────────────────────────┘");

		if(1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("주소 즐겨찾기를 추가했습니다.");
	        return new Gson().toJson(message);    
		}
		else if(0==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("주소 즐겨찾기를 추가 할 수 없습니다");
	        return new Gson().toJson(message);    
		}
		else if(-1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("주소 즐겨찾기가 이미 10개를 넘었습니다.");
	        return new Gson().toJson(message);    			
		}    
        
        jsonString = new Gson().toJson(message);
        
        LOG.debug("│ jsonString : "+jsonString);
        LOG.debug("└────────────────────────────────────────────────────────┘");
        return jsonString;     
	}
	
	
	/**
	 * 의약품 즐겨찾기 리스트 불러오는 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/getPill.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public List<DrugVO> getPillBookmark(DrugVO drugVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ getPillBookmark()                                      │");
		LOG.debug("└────────────────────────────────────────────────────────┘");	

		List<DrugVO> outVO = drugService.getDrugList(drugVO.getmNo());
		
	    if(null!=outVO) {
	        for(DrugVO vo : outVO) {   
	    		LOG.debug("│ 의약품 : "+ vo.toString());		// 1: del=true, 0:del변경안됨
	        }
	    }        
	    //model.addAttribute("drugVO", outVO);
	    return outVO;
	}
	/**
	 * 의약품  즐겨찾기 삭제 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/delPill.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String delPillBookmark(DrugVO drugVO, Model model) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ addAddressBookmark()                                   │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		LOG.debug("│ addressVO : "+ drugVO.toString());	
		
		String jsonString = "";  
        MessageVO message = new MessageVO();		
		int result = drugService.updateDelDrug(drugVO.getNo());
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 회원 추가 : "+ result);		// 1: del=true, 0:del변경안됨
		LOG.debug("└────────────────────────────────────────────────────────┘");
		

		if(1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("의약품 즐겨찾기를 삭제했습니다.");
	        return new Gson().toJson(message);    
		}
		else if(0==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("의약품 즐겨찾기를 삭제 할 수 없습니다");
	        return new Gson().toJson(message);    
		}
        
        jsonString = new Gson().toJson(message);
        
        LOG.debug("│ jsonString : "+jsonString);
        LOG.debug("└────────────────────────────────────────────────────────┘");
        return jsonString;    		
	}
	/**
	 * 유저 정보 수정 이벤트
	 */
	@ResponseBody
	@RequestMapping(value = "/mypage/changeInfo.do", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public String doChangeUserInfo(UserVO vo, Model model, HttpSession httpSession) throws SQLException {
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ doChangeUserInfo()                                     │");
		LOG.debug("└────────────────────────────────────────────────────────┘");
		LOG.debug("│ addressVO : "+ vo.toString());	
		
		String jsonString = "";  
        MessageVO message = new MessageVO();		
		int result = userService.doChangeInfo(vo);
		
		LOG.debug("┌────────────────────────────────────────────────────────┐");
		LOG.debug("│ 유저 정보 수정 여부  : "+ result); //1: 수정 성공, -1: 수정 실패
		LOG.debug("└────────────────────────────────────────────────────────┘");

		if(1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("사용자의 정보를 수정 했습니다.");
	        

	        UserVO userInfo = userService.selectUser(vo);
	        LOG.debug("│ userInfo : "+userInfo.toString());
	        if(null != httpSession.getAttribute("user")) {
	        	httpSession.removeAttribute("user");
                httpSession.setAttribute("user", userInfo);
				LOG.debug("session.invalidate()");
			}
		}
		else if(-1==result) {
	        message.setMsgId(Integer.toString(result));
	        message.setMsgContents("사용자의 정보를 수정 할 수 없습니다");
		}
        
        jsonString = new Gson().toJson(message);
        
        LOG.debug("│ jsonString : "+jsonString);
        LOG.debug("└────────────────────────────────────────────────────────┘");
        return jsonString;    		
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
