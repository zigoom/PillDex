<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="fiveguys" content="mypage" />
    <link rel="stylesheet" href="${CP}/resources/css/main-css/mypage-style.css" />
      
    <title>PillDex 마이페이지</title>
  </head>
  <body>
    <div id="main_box">
      <h3>마이페이지</h3>
      <form id="box2" action="#" method="get">
        <label for="user_id"><b>아이디</b></label
        ><br />
		        <input
		          type="text"
		          id="user_id"
		          name="user_id"
		          min="6"
		          maxlength="20"
		          onketdown="inputIdChk()"
		          placeholder="아이디 입력(영어, 숫자포함 6~20자)"
		        />
			        <input
				          type="button"
				          value="중복확인"
				          onclick="openIdChk()"
				         />
				         <input
				          type="hidden"
				          name="idDuplication"
				          value="idUncheck"
				         />
				             <script type="text/javascript">
           var httpRequest = null;
           
           // httpRequest 객체 생성
           function getXMLHttpRequest(){
              var httpRequest = null;
        
               if(window.ActiveXObject){
                 try{
                    httpRequest = new ActiveXObject("Msxml2.XMLHTTP");    
                  } catch(e) {
                      try{
                         httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
                    } catch (e2) { httpRequest = null; }
                }
            }
                    else if(window.XMLHttpRequest){
                    httpRequest = new window.XMLHttpRequest();
            }
                    return httpRequest;    
        }
        
        
           // 회원가입창의 아이디 입력란의 값을 가져온다.
           function pValue(){
            document.getElementById("user_id").value = opener.document.userInfo.id.value;
        }
        
           // 아이디 중복체크
           function idCheck(){
 
            var id = document.getElementById("user_id").value;
 
             if (!id) {
                alert("아이디를 입력하지 않았습니다.");
                return false;
            } 
             else if((" id < "0" || id > "9" ") && (" id < "A" || id > "Z" ") && (" id < "a" || id > "z" ")){ 
                alert("한글 및 특수문자는 아이디로 사용하실 수 없습니다.");
                return false;
            }
            else
            {
                var param="id="+id
                httpRequest = getXMLHttpRequest();
                httpRequest.onreadystatechange = callback;
                httpRequest.open("POST", "MemberIdCheckAction.do", true);    
                httpRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded'); 
                httpRequest.send(param);
            }
        }
        
           function callback(){
                if(httpRequest.readyState == 4){
                // 결과값을 가져온다.
                var resultText = httpRequest.responseText;
                if(resultText == 0){
                    alert("사용할수없는 아이디입니다.");
                    document.getElementById("cancelBtn").style.visibility='visible';
                    document.getElementById("useBtn").style.visibility='hidden';
                    document.getElementById("msg").innerHTML ="";
                } 
                else if(resultText == 1){ 
                    document.getElementById("cancelBtn").style.visibility='hidden';
                    document.getElementById("useBtn").style.visibility='visible';
                    document.getElementById("msg").innerHTML = "사용 가능한 아이디입니다.";
                }
            }
        }
        
        // 사용하기 클릭 시 부모창으로 값 전달 
        function sendCheckValue(){
            // 중복체크 결과인 idCheck 값을 전달한다.
            opener.document.userInfo.idDuplication.value ="idCheck";
            // 회원가입 화면의 ID입력란에 값을 전달
            opener.document.userInfo.id.value = document.getElementById("user_id").value;
            
            if (opener != null) {
                opener.chkForm = null;
                self.close();
            }    
        }    
   </script>
				         
				         
		        
        <br />
        
        
		        <label for="user_name"><b>이름</b></label
		        ><br />
		        <input
		          type="text"
		          id="user_name"
		          name="user_name"
		          min="2"
		          maxlength="5"
		          placeholder="이름"
		        />
          
        <br />
        <label for="pw"><b>비밀번호</b></label
        ><br />
        <input type="password" 
               id="pw" 
               name="pw" 
               min="8" 
               maxlength="20"
               placeholder="(문자,숫자,특수문자[!,@,#,$,%,*])포함 8~20자" />
        <br />
        <label for="pw_check"><b>비밀번호 확인</b></label
        ><br />
	        <input
	          type="password"
	          id="pw_check"
	          name="pw_check"
	          min="8"
	          maxlength="20"
	          placeholder="비밀번호 재입력"/>
	        
	        <br />
        <label for="phone_number"><b>휴대폰번호</b></label
          ><br />
	        <input
	          type="tel"
	          width="700px"
	          id="phone_number"
	          name="phone_number"
	          size="13"
	          maxlength="13"
	        />
        <br />
        <label for="email"><b>이메일 주소</b></label
        ><br />
	        <input
	          type="email"
	          width="300px"
	          id="email_front"
	          name="email_front"
	          placeholder="이메일 주소"
	        />
        <label><b>@</b></label>
        <input
          type="email"
          list="email_back"
          name="email_back"
          placeholder="ex)naver.com"
        />
	        <datalist id="email_back">
	          <option value="naver.com"></option>
	          <option value="google.com"></option>
	          <option value="daum.net"></option>
	          <option value="hanmail.net"></option>
	          <option value="직접 입력"></option>
	        </datalist>
        <br />
        <label for="address"><b>기본 주소</b></label
        ><br />

        <input
          style="width: 200px"
          type="text"
          id="sample6_postcode"
          placeholder="우편번호"
        />
        <input
          style="width: 180px"
          type="button"
          onclick="sample6_execDaumPostcode()"
          value="우편번호 찾기"
        />

        <br />
        <input type="text" id="address" placeholder="주소" /><br />
        <input type="text" id="rest_address" placeholder="상세주소" />
        

        <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
        <script>
          function sample6_execDaumPostcode() {
            new daum.Postcode({
              oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ""; // 주소 변수
                var extraAddr = ""; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === "R") {
                  // 사용자가 도로명 주소를 선택했을 경우
                  fullAddr = data.roadAddress;
                } else {
                  // 사용자가 지번 주소를 선택했을 경우(J)
                  fullAddr = data.jibunAddress;
                }
                
                if(data.userSelectedType === 'R') {
                    fullAddr = data.roadAddress;
                  } else {
                    fullAddr = data.jibunAddress;
                  }
                  
                  if(data.userSelectedType === 'R') {
                    if(data.bname !== '') {
                      extraAddr += data.bname;
                    }
                    if(data. buildingName !== '') {
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    fullAddr += (extraAddr !== '' ? ' (' + extraAddr + ') ' : '');
                  }   

                
                document.getElementById("sample6_postcode").value =
                  data.zonecode;
                document.getElementById("address").value= fullAddr;
                document.getElementById("rest_address").focus();
              }
            }).open();
          }
        </script>
        
        <br />
        <label for="bookmark_address_list"><b>즐겨 찾기 주소지 목록</b></label
        ><br />
        <input
          type="text"
          list="bookmark_address_list"
          name="bookmark_address_list"
        />
        <datalist id="bookmark_address_list">
          <option value="지역1">지역1</option>
          <option value="지역2">지역2</option>
          <option value="지역3">지역3</option>
          <option value="지역4">지역4</option>
          <option value="지역5">지역5</option>
          <option value="지역6">지역6</option>
          <option value="지역7">지역7</option>
          <option value="지역8">지역8</option>
          <option value="지역9">지역9</option>
          <option value="지역10">지역10</option>
        </datalist>
        <br />
        <label for="bookmark_med_list"><b>약품 즐겨 찾기 주소지 목록</b></label
        ><br />
        <input type="text" list="bookmark_med_list" name="bookmark_med_list" />
		        <datalist id="bookmark_med_list">
		          <option value="약품1">약품1</option>
		          <option value="약품2">약품2</option>
		          <option value="약품3">약품3</option>
		          <option value="약품4">약품4</option>
		          <option value="약품5">약품5</option>
		          <option value="약품6">약품6</option>
		          <option value="약품7">약품7</option>
		          <option value="약품8">약품8</option>
		          <option value="약품9">약품9</option>
		          <option value="약품10">약품10</option>
		        </datalist>
        <br />
        <button
          type="button"
          class="btn btn-navy navbar-btn find-btn1"
          onclick="location.href='/submit'"
        >
          수정
        </button>
        <button
          type="button"
          class="btn btn-grey navbar-btn find-btn1"
          onclick="location.href='/reset'"
        >
          취소
        </button>
      </form>
    </div>
  
  </body>
</html>