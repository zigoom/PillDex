<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
  <head>                 
	<meta charset="UTF-8">    
	<meta name="author"  content="hbi"> 
	<link  href="${CP}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="${CP}/resources/js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script src="${CP}/resources/js/jquery-3.7.0.js"></script>
	<script>
	$(document).ready(function(){ //모든 화면이 다 로딩이 되면 실행하는 영역
	    $("#findId").on("click",function(){	
	      console.log("email : "+$("#email").val());
	      console.log("pw : "+$("#pw").val());
	        
	      if(""==$("#email").val() || 0==$("#email").val().length){
	          alert("이름을 입력하세요");  // javascript 메시지 다이얼 로그
	          $("#email").focus();          // jquery로 포커스를 이동시킨다.
	          return;
	      }
	      if(""==$("#pw").val() || 0==$("#pw").val().length){
	            alert("이메일을 입력하세요");  // javascript 메시지 다이얼 로그
	            $("#pw").focus();
	            return;
	      }
	      
	      $.ajax({
	            type: "POST",
	            url:"${CP}/login/doLogin.do",
	            /* asyn:"true", */
	            dataType:"html",
	            data:{
	              userId: $("#userId").val(),
	              passwd: $("#passwd").val()
	            },
	            success:function(data){//통신 성공
	                //console.log("success data:"+data);
	                // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
	                let paredJSON = JSON.parse(data);
	                console.log("paredJSON.msgId:"+paredJSON.msgId);
	                
	                if("1"==paredJSON.msgId || "10"==paredJSON.msgId){
	                  alert(paredJSON.msgContents);  // javascript 메시지 다이얼 로그
	                  $("#userId").focus();          // jquery로 포커스를 이동시킨다.
	                  return;
	                }
	                if("2"==paredJSON.msgId || "20"==paredJSON.msgId){
	                  alert(paredJSON.msgContents);
	                  $("#passwd").focus();
	                  return;
	                }
	                if("30"==paredJSON.msgId){//로그인 성공
	                  alert(paredJSON.msgContents);
	                  
	                  //javascript 내장객체 : url
	                  window.location.href="${CP}/user/doRetrueve.do";
	                }
	              },
	              error:function(data){//실패시 처리
	                console.log("error:"+data);
	              }
	        }); //  $.ajax End --------------------------     
	      
	      
	    }); // $("#findId").on("click") End --------------------------	     
	  }); // $(document).ready End --------------------------
	
	</script>
	<title>Find_ID_PW</title>
  </head>
  
  <body>
	  <header>
	    <nav class="py-2 bg-light border-bottom">
	      <div class="container d-flex flex-wrap">
	        <ul class="nav me-auto">
	          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px">
	            <a href="#" class="nav-link link-dark px-2 active" aria-current="page"> <img src="resources/img/Pill_32px.png" alt="Pill"> &nbsp; <b>PillDex</b>
	          </a>
	          </li>
	        </ul>
	        <ul class="nav" style="">       
	          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="#" class="nav-link link-dark px-2"><b>돋보기</b></a></li>
	          <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="#" class="nav-link link-dark px-2"><b>MAP</b></a></li>
	                    
	          <c:set var="userNo" value="${UserNo}"/>
	          <c:if test="${userNo ne null }"> <!-- 유저 정보가 있을 경우 마이페이지/로그아웃 버튼 활성화. --> 
	            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="#" class="nav-link link-dark px-2"><b>마이페이지</b></a></li>
	            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="#" class="nav-link link-dark px-2"><b>로그아웃</b></a></li>
	          </c:if>
	          <c:if test="${userNo eq null }"> <!-- 유저 정보가 없을 경우 로그인 버튼 활성화. --> 
	            <li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top:4px"><a href="login.do" class="nav-link link-dark px-2"><b>로그인</b></a></li>
	          </c:if> 
	        </ul>
	      </div>
	    </nav>
	  </header>
    
    <main>
      <div class="container text-center"> <!--  안의 내용을 가운데 정렬하는 container 영역 -->
        <div style="margin-top: 100px; margin-bottom: 100px;"></div>
        <div class="row m-5">
	        <form action="${CP}/login/findId.do" method="post">
				    <h1 class="h2 my-3 fw-normal">아이디 찾기</h1>
				    <div style="margin-top: 20px; margin-bottom: 20px;"></div>
				    <div class="form-floating m-3">
				      <input type="email" class="form-control" id="email" placeholder="이름">
				      <label for="email">이름</label>
				    </div>
				    <div class="form-floating m-3">
				      <input type="password" class="form-control" id="pw" placeholder="이메일">
				      <label for="pw">이메일</label>
				    </div>
				    <button class="w-50 btn btn-lg btn-primary"  id="findId" type="button">아이디 찾기 </button>
				    <p class="mt-5 mb-3 text-muted"/>
				  </form>        
        </div>
      </div>
      
      
      
      
    </main>
   
  
      <!-- <div>
      <header>
        <nav class="py-2 bg-light border-bottom">
          <div class="container d-flex flex-wrap">
            <ul class="nav me-auto">
              <li class="nav-item">
               <a href="#" class="nav-link link-dark px-2 active" aria-current="page">
               <img src="../img/main-png/740pill_100923.png" style="width: 32px; height: 32px" alt="Pill"> &nbsp; <b>PillDex</b>
              </a></li>
              
            </ul>
            <ul class="nav" >
              <li class="nav-item"><a href="#" class="nav-link link-dark px-2"><b>돋보기</b></a></li>
              <li class="nav-item"><a href="#" class="nav-link link-dark px-2"><b>MAP</b></a></li>
              <li class="nav-item"><a href="#" class="nav-link link-dark px-2"><b>로그인</b></a></li>
            </ul>
          </div>
        </nav>
      </header>
   </div> -->
      
      <!-- <div id = "container">
        <form class = "find_id">
          <div class = "find_id_log" style="text-align: center;">아이디 찾기</div>
          
          <div style="margin-top: 10px;">
          <span style="font-size:27px; font-weight:600;">찾으려는 아이디의 이름과 이메일을 입력해주세요.</span>
          </div> 
          
            <div class = "find_id_input">
              <div style="margin-top:20px;  margin: auto; width: 65%; text-align: left;">
                <table style="width: 100%">
                  <tr>
                    <td>이름</td>
                    <td><input type="text" style="width: 300px;"></td>
                  </tr> 
                  <tr>
                     <td>이메일</td>
                    <td><input type="text" style="width: 300px;" placeholder="smaple@sample.com"></td>
                  </tr>               
                </table>
              </div>
            </div>
           <div>
          <input class = "find_id_submit" type = "submit" onclick="alert('사용자님의 ID는 @@입니다')">
         </div>
        </form> -->
        
        <form class = "find_passwd">
          <div class = "find_id_log" style="text-align: center;">비밀번호 찾기</div>
          
          <div style="margin-top: 10px;">
          <span style="font-size:27px; font-weight:600; margin-top: 10px">찾으려는 비밀번호의 이름과 아이디 그리고 이메일을 입력해주세요.</span>
          </div>
            <div class = "find_id_input">
              <div style="margin-top:20px; margin: auto; width: 65%; text-align: left;">
                <table style="width: 100%">
                  <tr>
                    <td>이름</td>
                    <td><input type="text" id="ps_name" style="width: 300px;"></td>
                  </tr> 
                  <tr>
                     <td>아이디</td>
                    <td><input type="text" id="ps_id" style="width: 300px;"></td>
                  </tr>
                  <tr>
                    <td>이메일 주소</td>
                    <td><input type="text" id="ps_email" style="width: 300px;" placeholder="smaple@sample.com"></td>
                  </tr>               
                </table>
              </div>
            </div>
           <div>
          <input class = "find_id_submit" type = "submit" onclick="TEst()">
         <script type="text/javascript">
          function TEst() {
            name = document.getElementById('ps_name').value;
            //email = document.getElementById('fid_email').value;
            
            alert('비밀번호를 1234로 변경하였습니다. 마이페이지에서 비밀번호를 변경해주세요.');
    }
         </script>
         </div>
        </form>
      </div>
    </body>
   <footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
    <div class="col-md-4 d-flex align-items-center">
      <a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
        <svg class="bi" width="30" height="24"><use xlink:href="#bootstrap"/></svg>
      </a>
      <span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023 FiveGuys 4 Team </span>
    </div>
  </footer> 
</html>