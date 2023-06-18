<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">    
  <link  href="${CP}/resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="${CP}/resources/js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script src="${CP}/resources/js/jquery-3.7.0.js"></script>
  
<script>
  $(document).ready(function(){ //모든 화면이 다 로딩이 되면 실행하는 영역
    console.log("$document.ready");
  
    //jquery 이벤트 감지 (#은 id를 감지한는것이다.)
    $("#doLogin").on("click",function(){
      console.log("doLogin");
      
      if(confirm('로그인 하시겠습니까?')==false) return;
      console.log("userId : "+$("#id").val());
      console.log("passwd : "+$("#pw").val());
        
      if(""==$("#id").val() || 0==$("#id").val().length){
          alert("아이디를 입력하세요");  // javascript 메시지 다이얼 로그
          $("#id").focus();          // jquery로 포커스를 이동시킨다.
          return;
      }
      if(""==$("#pd").val() || 0==$("#pw").val().length){
        alert("비밀번호를 입력하세요");  // javascript 메시지 다이얼 로그
        $("#pw").focus();
        return;
      }
      
      $.ajax({
            type: "POST",
            url:"${CP}/login.do",
            /* asyn:"true", */
            dataType:"html",
            data:{
              id: $("#id").val(),
              pw: $("#pw").val()
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
                  window.location.href="${CP}/map.do";
                }
              },
              error:function(data){//실패시 처리
                console.log("error:"+data);
              }
          });
    });    
  });
</script>
<title>로그인</title>
</head>
<body>
<h1>로그인</h1>
    <hr>    
    <form>
      <table border="1" cellpadding="0" cellspacing="0">
        <tr>
          <td bgcolor="orange">아이디</td>
          <td><input type="text" name="id" id="id" /></td>
        </tr>
        <tr>
          <td bgcolor="orange">비밀번호</td>
          <td><input type="password" name="pw" id="pw" /></td>
        </tr>
        <tr>
          <td colspan="2" align="center">
          <input type="button" id="doLogin" value="로그인" /></td>
        </tr>
      </table>
    </form>
    <hr>
</body>
</html>