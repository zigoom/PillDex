<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="path" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="fiveguys" content="mypage" />
    <link rel="stylesheet"  href="${path}/resources/css/main-css/mypage-style.css" />
    <link  href="${path}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <script src="${path}/resources/js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script src="${path}/resources/js/jquery-3.7.0.js"></script>
    
  <title>PillDex 마이페이지</title>
  </head>
  <body>
  <header>
    <nav class="py-2 bg-light border-bottom">
      <div class="container d-flex flex-wrap">
        <ul class="nav me-auto">
          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px">
            <a id="logo" href="${path}/main.do" class="nav-link link-dark px-2 active" aria-current="page"> <img src="resources/img/Pill_32px.png" alt="Pill"> &nbsp; <b>PillDex</b> </a>
          </li>
        </ul>
        <ul class="nav" style="">       
          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="${path}/mode.do" class="nav-link link-dark px-2"><b>돋보기</b></a></li>
          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="${path}/map.do" class="nav-link link-dark px-2"><b>MAP</b></a></li>    
          <c:if test="${user ne null }"> <!-- 유저 정보가 있을 경우 마이페이지/로그아웃 버튼 활성화. --> 
            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="${path}/mypage.do" class="nav-link link-dark px-2"><b>마이페이지</b></a></li>
            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="${path}/logout.do" class="nav-link link-dark px-2"><b>로그아웃</b></a></li>
          </c:if>
          <c:if test="${user eq null}"> <!-- 유저 정보가 없을 경우 로그인 버튼 활성화. --> 
            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="${path}/main.do" class="nav-link link-dark px-2"><b>로그인</b></a></li>
          </c:if> 
        </ul>
      </div>  
    </nav>
  </header>
  <main>
    <div id="main_box">
      <h3>마이페이지</h3>
      <form id="box2" action="#" method="get">
        <label for="user_id"><b>아이디</b></label><br />
        <div>
          <input  type="text" id="user_id" name="user_id" min="6" maxlength="20" placeholder="아이디 입력(영어, 숫자포함 6~20자)" readonly="readonly" value="${user.id}"/>
        </div><br/>
        <label for="pw"><b>비밀번호</b></label><br/>
        <input type="password" id="pw" name="pw" min="8" maxlength="20" placeholder="(문자,숫자,특수문자[!,@,#,$,%,*])포함 8~20자" value="${user.pw}"/><br/>
        <label for="pw_check"><b>비밀번호 확인</b></label><br/>
        <input type="password" id="pw_check" name="pw_check" min="8" maxlength="20" placeholder="비밀번호 재입력" value="${user.pw}"/><br/>
        <label for="user_name"><b>이름</b></label><br/>
        <input class="input-text" type="text" id="user_name" name="user_name" min="2" maxlength="5" placeholder="이름" value="${user.name}"/><br/>
        <label for="phone_number"><b>휴대폰번호</b></label><br/>
        <input type="tel" width="700px" id="phone_number" name="phone_number" size="13" maxlength="13" value="${user.tel}" /> <br/>
        
        <label "for="email"><b>이메일 주소</b></label><br/>
        &nbsp<input style="width: 180px; height: 38px;" type="text" width="300px" id="emailFront" name="emailFront" placeholder="이메일 주소" value=""/>
        &nbsp<label><b>@</b></label>
        <input style="width: 180px; height: 38px;"  id="emailBack"type="email" list="emailBack" name="emailBack" placeholder="ex)naver.com" value=""/>          
        <input type="hidden" id="emailTmp" value="${user.email}" /><br/>
        
        <label for="address"><b>기본 주소</b></label><br/>
        <input style="width: 198px;" class="input-text" type="text" id="sample6_postcode" placeholder="우편번호" />
        <input style="width: 177px; padding-top:5px; padding-bottom:5px;" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>

        <br/>
        <input type="text" class="input-text" id="address" placeholder="주소"/><br />
        <input type="hidden" id="anotherAddr">
        <input type="hidden" id="newAddress"> <!-- 신주소(도로명) -->
        <input type="hidden" id="oldAddress"> <!-- 구주소(지번) -->
        <input type="hidden" id="addressType"> <!-- 주소 구분 -->
        <input type="text" class="input-text" id="rest_address" placeholder="상세주소"/>        
<!-- 주소 ---------------------------------------------------------------------------------------------------------------->
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
                var anotherAddr = "";

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === "R") {
                  // 사용자가 도로명 주소를 선택했을 경우
                  fullAddr = data.roadAddress;
                  anotherAddr = data.jibunAddress;                  
                } else {
                  // 사용자가 지번 주소를 선택했을 경우(J)
                  fullAddr = data.jibunAddress;
                  anotherAddr = data.roadAddress;
                }

                if (data.userSelectedType === "R") {
                  fullAddr = data.roadAddress;
                } else {
                  fullAddr = data.jibunAddress;
                }

                if (data.userSelectedType === "R") {
                  if (data.bname !== "") {
                    extraAddr += data.bname;
                  }
                  if (data.buildingName !== "") {
                    extraAddr +=
                      extraAddr !== ""
                        ? ", " + data.buildingName
                        : data.buildingName;
                  }
                  fullAddr += extraAddr !== "" ? " (" + extraAddr + ") " : "";
                }
                
                if(data.userSelectedType === 'J') {
                    if(data.bname !== '') {
                      extraAddr += data.bname;
                    }
                    if(data. buildingName !== '') {
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    anotherAddr += (extraAddr !== '' ? ' (' + extraAddr + ') ' : '');
                  }

                document.getElementById("newAddress").value = data.roadAddress;
                document.getElementById("oldAddress").value = data.jibunAddress;     
                document.getElementById("addressType").value = data.userSelectedType;     
                
                document.getElementById("sample6_postcode").value = data.zonecode;
                document.getElementById("address").value = fullAddr;
                document.getElementById("anotherAddr").value = anotherAddr;
                document.getElementById("rest_address").focus();
                
              },
            }).open();
          }
        </script>
        <br/>
        <input id="addAddressBtn" type="button" class="btn btn-navy navbar-btn find-btn1" style="width:400px; padding-top:5px; padding-bottom:5px; margin-bottom:10px;" value="주소지 즐겨찾기 추가"/>
        <br/>
        <label for="bookmark_address_list" style="margin-bottom:5px;"><b>즐겨 찾기 주소지 목록</b></label><br/> 
        <div class="dropdown">
          <button id="dropdown_button1" style="width:400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"> 주소지 목록 </button>
          <ul class="dropdown-menu " style="width:400px;" id="il_01"></ul>
        </div>
        <br/>
        <label for="bookmark_med_list" style="margin-bottom:5px;"><b>약품 즐겨 찾기 목록</b></label ><br /> 
        <div class="dropdown">
          <button id="dropdown_button2" style="width:400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"> 약품 목록 </button>
          <ul class="dropdown-menu " style="width:400px;" id="il_02"></ul>
        </div>
        <br/>
        <input type="button" class="btn btn-navy navbar-btn find-btn1" onclick="doSave();" value="수정"/>
        <input type="button"class="btn btn-grey navbar-btn find-btn1" onclick="window.location.href='${path}/main.do';" value="취소"/>
      </form>
    </div>    
  </main>
  
  <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023 FiveGuys 4 Team </span>
    </div>
  </footer>        
  </body>
  
  <script>
    const emailTmp = document.querySelector("#emailTmp");    
    const parts = emailTmp.value.split("@");    
    const emailFrontPart = parts[0];
    const emailBackPart  = parts[1];
    
    const emailFront = document.querySelector("#emailFront");
    const emailBack  = document.querySelector("#emailBack");
    
    emailFront.value = emailFrontPart;
    emailBack.value  = emailBackPart; 
    
	// 종훈 제작 함수 ---------------------------------------------------------------
	
    var addressType = "${user.restAddr}".substr(0, 1);
    var addressRestAddr = "${user.restAddr}".substr(2, "${user.restAddr}".length);                                    

    document.getElementById("newAddress").value = "${user.nAddr}";
    document.getElementById("oldAddress").value = "${user.oAddr}";     
    document.getElementById("addressType").value = addressType;     
    
    document.getElementById("sample6_postcode").value = "${user.postNum}";                
    if(addressType=="R"){
      document.getElementById("address").value = "${user.nAddr}";
      document.getElementById("anotherAddr").value = "${user.oAddr}";
    }else if(addressType=="J"){
      document.getElementById("address").value = "${user.oAddr}";
      document.getElementById("anotherAddr").value = "${user.nAddr}";
    }             
    document.getElementById("rest_address").value = addressRestAddr;
	$(document).ready(function(){     
      getAddress();
      getPill();
      
      //주소 추가 버튼 기능
      $("#addAddressBtn").on("click",function(){
    	  
        if(""==$("#address").val() || 0==$("#address").val().length){
            alert("주소를 검색해 주세요");  // javascript 메시지 다이얼 로그
            sample6_execDaumPostcode();
            return;
        }
        if(""==$("#rest_address").val() || 0==$("#rest_address").val().length){
          alert("상세 주소를 검색해 주세요");  // javascript 메시지 다이얼 로그
          $("#rest_address").focus();
          return;
        }
        $.ajax({
              type: "POST",
              url:"${path}/mypage/addAddress.do",
              /* asyn:"true", */
              dataType:"html",
              data:{
                mNo      : '${user.no}',
            	  postNum  : $("#sample6_postcode").val(),
            	  nAddr    : $("#newAddress").val(),
            	  oAddr    : $("#oldAddress").val(),
            	  restAddr : $("#addressType").val()+"_"+$("#rest_address").val()
              },
              success:function(data){//통신 성공
                  //console.log("success data:"+data);
                  // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
                  let paredJSON = JSON.parse(data);
                  console.log("paredJSON.msgId:"+paredJSON.msgId);
                  
                  if("-1"==paredJSON.msgId ){
                    alert(paredJSON.msgContents);  // javascript 메시지 다이얼 로그
                    return;
                  }
                  if("0"==paredJSON.msgId ){
                    alert(paredJSON.msgContents);
                    return;
                  }
                  if("1"==paredJSON.msgId){
                    alert(paredJSON.msgContents);
                  }
                  getAddress();
                },
                error:function(data){//실패시 처리
                  console.log("error:"+data);
                }
            });
      });
    });
	
	  // 리스트 클릭 이벤트
    function radioButton01(event) {
      var addressNo =  $(event).attr('name')
      //document.getElementById('dropdown_button1').textContent=event.outerText;
      $.ajax({
          url: '/pilldex/mypage/getAddressOne.do',
          type: "post",
          dataType : "html",
          data : {
            no : addressNo,
          },
          success: function(data) {
            let paredJSON = JSON.parse(data);
              for(i=0;i < paredJSON.length;i++){
                var addressType = paredJSON[i].restAddr.substr(0, 1);
                var addressRestAddr = paredJSON[i].restAddr.substr(2, paredJSON[i].restAddr.length);                                    

                document.getElementById("newAddress").value = paredJSON[i].nAddr;
                document.getElementById("oldAddress").value = paredJSON[i].oAddr;     
                document.getElementById("addressType").value = addressType;     
                
                document.getElementById("sample6_postcode").value = paredJSON[i].postNum;                
                if(addressType=="R"){
                  document.getElementById("address").value = paredJSON[i].nAddr;
                  document.getElementById("anotherAddr").value = paredJSON[i].oAddr;
                  document.getElementById('dropdown_button1').textContent=paredJSON[i].nAddr+" "+addressRestAddr;
                }else if(addressType=="J"){
                  document.getElementById("address").value = paredJSON[i].oAddr;
                  document.getElementById("anotherAddr").value = paredJSON[i].nAddr;
                  document.getElementById('dropdown_button1').textContent=paredJSON[i].oAddr+" "+addressRestAddr;
                }             
                document.getElementById("rest_address").value = addressRestAddr;

              };
          },
          error: function(errorThrown) {
              alert("request error!");
          }
      }); 
    }
    // 삭제 이벤트 
    function radioButtonX01(event) {
        var no= event.value;
        delAddress(no);
    }
    function getAddress() {
      console.log("getAddress");
        $.ajax({
              url: '/pilldex/mypage/getAddress.do',
              type: "post",
              dataType : "html",
              data : {
                mNo : '${user.no}',
              },
              success: function(data) {
                let paredJSON = JSON.parse(data);
                  console.log(paredJSON);
                  
                  var listE2 = document.getElementById('il_01'); //리스트를 추가하는 위치
                  var fragment = document.createDocumentFragment();
                  removeAllChildNods(listE2); // 검색 결과 목록에 추가된 항목들을 제거합니다
        
                  for(i=0;i < paredJSON.length;i++){
                	  var addressType = paredJSON[i].restAddr.substr(0, 1);
                	  var addressRestAddr = paredJSON[i].restAddr.substr(2, paredJSON[i].restAddr.length);
                	                  	  
                    var el = document.createElement('li');
                    var itemStr ="";
                    
                    if(addressType=="R"){
                    	itemStr+='<input class="form-check-input me-1" type="radio" name="listGroupRadio" value="'+paredJSON[i].nAddr+' '+addressRestAddr+'" id="'+paredJSON[i].no+'" >';
                      itemStr+='<label class="form-check-label" name="'+paredJSON[i].no+'" onclick="radioButton01(this);" value="'+paredJSON[i].nAddr+' '+addressRestAddr+'" for="'+paredJSON[i].no+'">'+paredJSON[i].nAddr+' '+addressRestAddr+'</label>';
                      itemStr+='&nbsp <button type="button" class="btn btn-dark" onclick="radioButtonX01(this);" name="'+paredJSON[i].no+'" value="'+paredJSON[i].no+'">X</button>';
                    }else if(addressType=="J"){
                        itemStr+='<input class="form-check-input me-1" type="radio" name="listGroupRadio" value="'+paredJSON[i].oAddr+' '+addressRestAddr+'" id="'+paredJSON[i].no+'" >';
                        itemStr+='<label class="form-check-label" name="'+paredJSON[i].no+'" onclick="radioButton01(this);" value="'+paredJSON[i].oAddr+' '+addressRestAddr+'" for="'+paredJSON[i].no+'">'+paredJSON[i].oAddr+' '+addressRestAddr+'</label>';
                        itemStr+='&nbsp <button type="button" class="btn btn-dark" onclick="radioButtonX01(this);" name="'+paredJSON[i].no+'" value="'+paredJSON[i].no+'">X</button>';
                    }
                    el.innerHTML = itemStr;
                    el.className = 'dropdown-item';
                    el.setAttribute("style","margin: 0px 0px;");
                    //el.setAttribute("onclick",'radioButton(this);');
                    
                       fragment.appendChild(el);
                  };
                  listE2.appendChild(fragment);
              },
              error: function(errorThrown) {
                  alert("request error!");
              }
          }); 
      }
      function delAddress(no) {
        $.ajax({
              url: '/pilldex/mypage/delAddress.do',
              type: "post",
              dataType : "html",
              data : {
                no : no,
              },
              success: function(data) {
            	  let paredJSON = JSON.parse(data);
                                    
                if("0"==paredJSON.msgId ){
                  alert(paredJSON.msgContents);
                  return;
                }
                if("1"==paredJSON.msgId){
                  alert(paredJSON.msgContents);
                }
                getAddress();
              },
              error: function(errorThrown) {
                  alert("request error!");
              }
          }); 
      }
      function addAddress(no) {
          $.ajax({
                url: '/pilldex/mypage/addAddress.do',
                type: "post",
                dataType : "html",
                data : {
                  no : no,
                },
                success: function(data) {
                  getAddress();
                },
                error: function(errorThrown) {
                    alert("request error!");
                }
            }); 
        }

      // 리스트 클릭 이벤트
      function radioButton02(event) {
        document.getElementById('dropdown_button2').textContent=event.outerText;
      }
      // 삭제 이벤트 
      function radioButtonX02(event) {
          var no= event.value;
          console.log(no);
          delPill(no);
      }
      function getPill() {
          $.ajax({
                url: '/pilldex/mypage/getPill.do',
                type: "post",
                dataType : "html",
                data : {
                  mNo : '${user.no}',
                },
                success: function(data) {
                  let paredJSON = JSON.parse(data);
                    
                    var listE1 = document.getElementById('il_02'); //리스트를 추가하는 위치
                    var fragment = document.createDocumentFragment();
                    removeAllChildNods(listE1); // 검색 결과 목록에 추가된 항목들을 제거합니다
          
                    for(i=0;i < paredJSON.length;i++){                         
                         var el = document.createElement('li');
                         var itemStr ="";
                         itemStr+='<input class="form-check-input me-1" type="radio" name="listGroupRadio" value="'+paredJSON[i].nm+'" id="'+paredJSON[i].no+'" >';
                         itemStr+='<label class="form-check-label" name="BBBB" onclick="radioButton02(this);" value="'+paredJSON[i].nm+'" for="'+paredJSON[i].no+'">'+paredJSON[i].nm+'</label>';
                         itemStr+='&nbsp <button type="button" class="btn btn-dark float-right" onclick="radioButtonX02(this);" name="888" value="'+paredJSON[i].no+'">X</button>';
          
                         el.innerHTML = itemStr;
                         el.className = 'dropdown-item';
                         el.setAttribute("style","margin: 0px 0px;");
                         //el.setAttribute("onclick",'radioButton(this);');
                         
                         fragment.appendChild(el);
                    };
                    listE1.appendChild(fragment);
                },
                error: function(errorThrown) {
                    alert("request error!");
                }
            }); 
        }
      function delPill(no) {
          $.ajax({
                url: '/pilldex/mypage/delPill.do',
                type: "post",
                dataType : "html",
                data : {
                  no : no,
                },
                success: function(data) {
                	let paredJSON = JSON.parse(data);
                  
                  if("0"==paredJSON.msgId ){
                    alert(paredJSON.msgContents);
                    return;
                  }
                  if("1"==paredJSON.msgId){
                    alert(paredJSON.msgContents);
                  }
                  getPill();
                },
                error: function(errorThrown) {
                    alert("request error!");
                }
            }); 
        }
	  function removeAllChildNods(el) {
		  el.innerHTML = "";
	  }
	  function doSave(){

		    //비밀번호
	      if(""==$("#pw").val() || 0==$("#pw").val().length){
	        alert("비밀번호를 입력해 주세요");  
            $("#pw").focus();
	        return;
	      }
	      //비밀번호 확인
	      if(""==$("#pw_check").val() || 0==$("#pw_check").val().length){
	        alert("비밀번호를 확인을 입력해 주세요");  
            $("#pw_check").focus();
	        return;
	      }
	      console.log($("#pw").val());
	      console.log($("#pw_check").val());
	      // 비밀번호 동일 확인
	      if($("#pw").val()!=$("#pw_check").val()){
	        alert("비밀번호를 일치시켜 주세요");  
            $("#pw_check").focus();
	        return;
	      }
	      // 이름 확인
	        if(""==$("#user_name").val() || 0==$("#user_name").val().length){
	          alert("이름을 확인해 주세요");  
	            $("#user_name").focus();
	          return;
	        }
	      // 전화번호
	      if(""==$("#phone_number").val() || 0==$("#phone_number").val().length){
	          alert("전화번호를 확인해 주세요"); 
	          $("#phone_number").focus();
	          return;
	        }
	      // 이메일 앞자리 확인
          if(""==$("#emailFront").val() || 0==$("#emailFront").val().length){
              alert("이메일을 확인해 주세요");  
                $("#emailFront").focus();
              return;
            }
       // 이메일 뒷자리 확인
          if(""==$("#emailBack").val() || 0==$("#emailBack").val().length){
              alert("이메일 확인해 주세요");  
                $("#emailBack").focus();
              return;
            }
		  
	      //우편번호
	      if(""==$("#sample6_postcode").val() || 0==$("#sample6_postcode").val().length){
	          alert("우편번호를 확인해 주세요");  
	            $("#sample6_postcode").focus();
	          return;
	        }
		  if(""==$("#address").val() || 0==$("#address").val().length){
	      alert("주소를 검색해 주세요");  // javascript 메시지 다이얼 로그
	      sample6_execDaumPostcode();
	      return;
	    }
	    if(""==$("#rest_address").val() || 0==$("#rest_address").val().length){
	      alert("상세 주소를 검색해 주세요");  // javascript 메시지 다이얼 로그
	      $("#rest_address").focus();
	      return;
	    }

	    $.ajax({
	        type: "POST",
	        url:"${path}/mypage/changeInfo.do",
	        /* asyn:"true", */
	        dataType:"html",
	        data:{
	          id      : '${user.id}',
	        	no      : '${user.no}',
	        	name    : $("#user_name").val(),
	        	pw      : $("#pw").val(),
	        	tel     : $("#phone_number").val(),
	        	postNum : $("#sample6_postcode").val(),
	        	nAddr   : $("#newAddress").val(),
	        	oAddr   : $("#oldAddress").val(),
	        	restAddr: $("#addressType").val()+"_"+$("#rest_address").val(),
	        	email   : $("#emailFront").val()+"@"+$("#emailBack").val()
	        },
	        success:function(data){//통신 성공
	          //console.log("success data:"+data);
	          // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
	          let paredJSON = JSON.parse(data);
	          console.log("paredJSON.msgId:"+paredJSON.msgId);
	          
	          if("-1"==paredJSON.msgId ){
	            alert(paredJSON.msgContents);  // javascript 메시지 다이얼 로그
	            return;
	          }
	          if("0"==paredJSON.msgId ){
	            alert(paredJSON.msgContents);
	            return;
	          }
	          if("1"==paredJSON.msgId){
	            alert(paredJSON.msgContents);
	        	  window.location.href="${path}/main.do";
	          }
	        },
	        error:function(data){//실패시 처리
	          console.log("error:"+data);
	        }
	    });
	  }
	  
	/* 
	$("#ddd").on("click",function aa(){
	  getAddress();
	  }); 
	$('input[name="999"]').on("click",function aa(){
	  alert("dddd");
	});
	$('input[name="AAAA"]').on("click",function AABB(){
	  alert("AAAA");
	});
	
	$('input[name="1234"]').on("click",function sdf(){
	  alert("12 34");
	}); 
	
	<input type="button" value="1231" id="ddd" >
  <input type="button" value="1231" name="1234" >
  
  <!-- 
  <li class="dropdown-item">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="firstRadio" id="firstRadio" onclick='radioButton(this)'>
    <label class="form-check-label" for="firstRadio">First radio</label>
  </li>
  <li class="dropdown-item" style="width:400px;">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="secondRadio" id="secondRadio" onclick='radioButton(this)'>
    <label class="form-check-label" for="secondRadio">Second radio</label>
  </li>
  <li class="dropdown-item" style="width:400px;">
    <input class="form-check-input me-1" type="radio" name="listGroupRadio" value="thirdRadio" id="thirdRadio" onclick='radioButton(this)'>
    <label class="form-check-label" for="thirdRadio">Third radio</label>
  </li>
   -->
   function radioButton(event) {
       document.getElementById('dropdown_button').textContent=event.value;
   }
   
   //javascript 내장객체 : url
   window.location.href="${CP}/map.do";
  */
	// 종훈 제작 함수 ---------------------------------------------------------------
  </script>
</html>
