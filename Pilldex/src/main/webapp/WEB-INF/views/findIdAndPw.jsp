<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>                 
	<meta charset="UTF-8">    
	<meta name="author"  content="hbi"> 
	<link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
	<script src="resources/js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../css/main-css/med.css">
	<link rel="stylesheet" href="/WEB3/main/css/med.css">
	<style>
	  th,td {padding:10px;}
	  table {border-spacing: 10px;}
	.find_id {
	  margin-top: 100px;
	  width : 100%;
	  text-align: center
	 }
	 
	 .find_passwd {
	  margin-top: 100px;
	  width : 100%;         
	  text-align: center
	 }
	 
	 .find_id_log{
	 width:24%; 
	 text-align: left; 
	 padding: 10px; 
	 font-size: 27px;
	 font-weight: 800;
	 border-radius:20px 20px 20px 20px;
	 background-color: green;
	 }
	 .find_id_input {
	 border:1px solid black; 
	 margin-left: 50px; 
	 margin-right: 50px;
	 margin-top: 20px
	 }
	 
	 .find_id_submit {
	  margin-top : 20px;
	  margin-bottom : 20px;
	  width: 70px;
	  height: 50px
	 }
	</style>
	<title>Find_ID_PW</title>
  </head>
    <body>
      <div>
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
   </div>
      <div id = "container">
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
        </form>
        
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