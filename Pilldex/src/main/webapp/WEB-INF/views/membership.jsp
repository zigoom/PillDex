<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
  <head>                 
        <meta charset="UTF-8">    
        <meta name="fiveguys"  content="membership">
        <link rel="stylesheet"  href="resources/css/membership-style.css">
        <title>회원가입</title>
  </head>
    <body>
      <div id="container">
        <h1>회원가입</h1>
        회원이 되어 다양한 혜택을 경험해 보세요
          <form action="" method="post" name="membership">
            <fieldset style="border:0 solid black;">
              <ul>
                <li>
                  <label>아이디</label><br/>
                  <input type="text" name="id" id="id" placeholder="아이디 입력(영어, 숫자포함 6~20자)">
                  <input type="button" id="idDulpCheck" value="중복확인">
                </li>
                <li>
                  <label>비밀번호</label><br/>
                  <input type="password" name="pw" id="pw" placeholder="(문자, 숫자, 특수문자[!,@,#,$,%,*]) 포함 8~20자)" onchange="check_pw()">
                </li>
                <li>
                  <label>비밀번호 확인</label><br/>
                  <input type="password" name="pw2" id="pw2" placeholder="비밀번호 재입력" onchange="check_pw()"> <br/>
                  <label id="pw_check"></label>
                </li>
                <li>
                  <label>이름</label><br/>
                  <input type="text" name="name" id="name" placeholder="이름을 입력해주세요 (한글 3~20글자)" onchange="check_name()">
                </li>
                <li>
                  <label>성별</label>
                  <input type="radio" name="sex" id="sex" value="m" style="margin-left: 100px;"><label>남자</label>
                  <input type="radio" name="sex" id="sex" value="f" style="margin-left: 40px;"><label>여자</label>
                </li>
                <li>
                  <label>전화번호</label><br/>
                  <input type="tel" name="phone_num" id="phone_num" onchange="check_phone()" placeholder="휴대폰 번호 입력('-'포함 13자리 입력)">
                </li>
                <li>
                  <label>이메일 주소</label><br/>
                  <input type="email" name="email_front" id="email_front" onkeyup="check_email(event)" placeholder="이메일 주소">
                  <label>@</label>
                  <input type="email" name="email_back" list="email_back" placeholder="ex)naver.com">
                  <datalist id="email_back">
                    <option value="naver.com"></option>
                    <option value="daum.net"></option>
                    <option value="gmail.com"></option>
                  </datalist>
                </li>
                <li>
                  <label>생년월일</label><br/>
                  <input id="birth_year" name="year" type="text" list="year" placeholder="년도">
                  <datalist id="year">
                    <option value="2023"></option>
                    <option value="2022"></option>
                    <option value="2021"></option>
                    <option value="2020"></option>
                    <option value="2019"></option>
                    <option value="2018"></option>
                  </datalist>
                  <input id="birth_month" name="month" type="text" list="month" placeholder="월">
                  <datalist id="month">
                    <option value="12"></option>
                    <option value="11"></option>
                    <option value="10"></option>
                    <option value="09"></option>
                    <option value="08"></option>
                    <option value="07"></option>
                    <option value="06"></option>
                    <option value="05"></option>
                    <option value="04"></option>
                    <option value="03"></option>
                    <option value="02"></option>
                    <option value="01"></option> 
                  </datalist>
                  <input id="birth_day" name="day" type="text" list="day" placeholder="일">
                  <datalist id="day">
                    <option value="31"></option>
                    <option value="30"></option>
                    <option value="29"></option>
                    <option value="28"></option>
                    <option value="27"></option>
                    <option value="26"></option>
                    <option value="25"></option>
                    <option value="24"></option>
                    <option value="23"></option>
                    <option value="22"></option>
                    <option value="21"></option>
                    <option value="20"></option>
                    <option value="19"></option>
                    <option value="18"></option>
                    <option value="17"></option>
                    <option value="16"></option>
                    <option value="15"></option>
                    <option value="14"></option>
                    <option value="13"></option>
                    <option value="12"></option>
                    <option value="11"></option>
                    <option value="10"></option>
                    <option value="09"></option>
                    <option value="08"></option>
                    <option value="07"></option>
                    <option value="06"></option>
                    <option value="05"></option>
                    <option value="04"></option>
                    <option value="03"></option>
                    <option value="02"></option>
                    <option value="01"></option>
                  </datalist>
                </li>
                <li>
                  <label>주소</label><br/>
                  <input type="text" id="post_code" name="post_code" placeholder="우편번호를 검색하세요" readonly>
                  <input type="button" id="btn" value="우편번호">
                  <input type="text" id="address" name="address" placeholder="기본주소" readonly>
                  <input type="text" id="rest_address" name="rest_address" placeholder="나머지주소">
                </li>
              </ul>
            </fieldset>
          <div>
           <input type="submit" id="none01" value="가입하기">
           <input type="button" id="none02" value="취소" onclick="firstForm()">
          </div>
        </form>
      </div>    
    </body>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="${CP}/resources/js/jquery-3.7.0.js"></script>
    <script>
        const btn = document.querySelector("#btn");
        btn.addEventListener("click",()=>{
          new daum.Postcode({
                oncomplete: function(data) {
                  let fullAddr = '';
                  let extraAddr = '';
                  
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
                  document.membership.address.value = fullAddr;
                  document.membership.post_code.value = data.zonecode;
                  document.membership.rest_address.focus();
                }
            }).open();
        });
    
        function check_pw() {
            var pw = document.getElementById('pw').value;
            var num = pw.search(/[0-9]/g);
            var eng = pw.search(/[a-z]/ig);
            var spe = pw.search(/[`~!@@#$%^&*|₩₩₩'₩";:₩/?]/gi);
 
            if(pw.length<8 || pw.length>20) {
               window.alert('비밀번호는 8글자 이상, 20글자 이하만 이용 가능합니다.');
               document.getElementById('pw').value='';
            } else if(pw.search(/\s/) != -1) {
               window.alert('비밀번호는 공백 없이 이용 가능합니다');
               document.getElementById('pw').value='';
            } else if(num < 0 || eng < 0 || spe < 0) {
               window.alert('영문, 숫자, 특수문자를 최소 1글자 이상씩 사용하여 입력해주세요');
               document.getElementById('pw').value='';
            }           
            
            if(document.getElementById('pw').value !='' && document.getElementById('pw2').value!='') {
              
                if(document.getElementById('pw').value == document.getElementById('pw2').value) {
                    document.getElementById('pw_check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('pw_check').style.color='blue';
                } else {
                    document.getElementById('pw_check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('pw_check').style.color='red';
                    document.getElementById('pw').value='';
                    document.getElementById('pw2').value='';
                }
                
            }
        }
    
        function check_name() {
          
          var name_str = document.getElementById('name').value;
          var hangul = /^[가-힣]+$/;
  
          if(name_str.length() < 3 || name_str.length() > 20) {
             window.alert('이름은 한글 3글자 이상, 20글자 이하만 가능합니다');
             document.getElementById('name').value='';
          } else if(name_str.search(/\s/) != -1) {
             window.alert('이름은 공백 없이 입력 가능합니다');
             document.getElementById('name').value='';
          } else if(hangul.test(name_str) == false) {
             window.alert('이름은 한글만 입력 가능합니다');
             document.getElementById('name').value='';
          
        }
      
      }
    
      function check_email(event) {
         const hangul = /[^0-9a-zA-Z]/g;
         const ele = event.target;
         
         if(hangul.test(ele.value)) {
           ele.value = ele.value.replace(hangul,'');
         }
       }
    
      function check_phone() {
        var phone_num_str = document.getElementById('phone_num').value;
        var regPhone = /^01([0])-([0-9]{4})-([0-9]{4})$/;
        
        if(regPhone.test(phone_num_str) == false) {
              window.alert('전화번호 양식에 맞춰서 입력해주세요 ex)010-0000-0000');
              document.getElementById('phone_num').value=''; 
           }
        
      }      
    
      function dataCheck() {
        
        var form = document.membership;
        
        if(!form.id.value) {
          window.alret("아이디를 입력하세요");
          return false;
        }
        
        if(form.idDuplication.value != "idCheck") {
          window.alert("아이디 중복체크를 해주세요");
             return false;
         }
         
         if(!form.pw.value) {
           window.alert("비밀번호를 입력하세요");
             return false;
         }
         
         if(form.pw.value != form.pw2.value ) {
           window.alert("비밀번호 체크를 해주세요");
             return false;
         }    
         
         if(!form.name.value) {
           window.alert("이름을 입력하세요");
             return false;
         }
         
         if(!form.sex.value) {
            window.alert("성별을 선택해주세요");
              return false;
          }
         
         if(!form.birth_year.value) {
           window.alert("년도를 입력하세요");
             return false;
         }
         
         if(!form.birth_month.value) {
           window.alert("월을 선택하세요");
             return false;
         }
         
         if(!form.birth_day.value) {
           window.alert("날짜를 입력하세요");
             return false;
         }        
         
         if(!form.email_front.value) {
             alert("메일 주소를 입력하세요");
             return false;
         }
         
         if(!form.email_back.value) {
             alert("메일 주소를 입력하세요");
             return false;
         }
         
         if(!form.phone_num.value) {
           window.alert("전화번호를 입력하세요");
             return false;
         }
         
         if(!form.address.value) {
           window.alert("주소를 입력하세요");
             return false;
         }
         
         if(!form.rest_address.value) {
           window.alert("나머지 주소를 입력하세요");
             return false;
         }
        
      }
      
      /* 취소 버튼 클릭 시 첫 화면으로 이동 / href="메인페이지 주소 입력하기" */
      /* function goFirstForm() {
          location.href="MainForm.do";
      } */
      
      $(document).ready(function(){  //모든 화면이 다 로딩이 되면 실행하는 영역
    	    console.log("document ready");
      
  	    //jquery 이벤트 감지 (#은 id를 감지한는것이다.)
  	    $("#idDulpCheck").on("click",function(){
  	    	console.log("idDulpCheck ready");
  	    	
  	    	 var id_str = document.getElementById('id').value;
  	    	
  	    	if(""==$('#id').val() || 0==$('#id').val().length){
  	          alert("아이디를 입력하세요");  // javascript 메시지 다이얼 로그
  	          $('#id').focus();          // jquery로 포커스를 이동시킨다.
  	          return;
  	      } else if(id_str.search(/\s/) != -1) {
              alert('이름은 공백 없이 입력 가능합니다');
              document.getElementById('name').value='';
              return;
  	      }
  	    	
  	    	$.ajax({
                type: "POST",
              url:"${CP}/idDulpCheck.do",
                /* asyn:"true", */
                dataType:"html",
                data:{
                    id: $("#id").val()
                },
                success:function(data){//통신 성공
                    //console.log("success data:"+data);
                    // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
                    let paredJSON = JSON.parse(data);
                    console.log("paredJSON.msgId:"+paredJSON.msgId);
                                     
                    
                    if("10" == paredJSON.msgId){
                      alert(paredJSON.msgContents);  // javascript 메시지 다이얼 로그
                      $("#id").focus();
                    } 
                    
                    if("20" == paredJSON.msgId){//로그인 성공
                      alert(paredJSON.msgContents);
                      return;
                    }
                    
                   
                  },
                  error:function(data){//실패시 처리
                    console.log("error:"+data);
                  }
            }); //  $.ajax End --------------------------
  	    	
  	    	
  	    });  // #idDulpCheck end
    	  
    	  
      });   //모든 화면이 다 로딩이 되면 실행하는 영역
      
      
     </script>
</html>