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
                  <input type="text" name="id_form" id="id_form" placeholder="아이디 입력(영어, 숫자포함 6~20자)">
                  <input type="button" id="idDulpCheck" value="중복확인">
                </li>
                <li>
                  <label>비밀번호</label><br/>
                  <input type="password" name="pw_form" id="pw_form" placeholder="(문자, 숫자, 특수문자[!,@,#,$,%,*]) 포함 8~20자)" onchange="check_pw()">
                </li>
                <li>
                  <label>비밀번호 확인</label><br/>
                  <input type="password" name="pw2_form" id="pw2_form" placeholder="비밀번호 재입력" onchange="check_pw()"> <br/>
                  <label id="pw_check"></label>
                </li>
                <li>
                  <label>이름</label><br/>
                  <input type="text" name="name_form" id="name_form" placeholder="이름을 입력해주세요 (한글 3~20글자)" onchange="check_name()">
                </li>
                <li>
                  <label>성별</label>
                  <input type="radio" name="sex_form" id="sex_form" value="M" style="margin-left: 100px;"><label>남자</label>
                  <input type="radio" name="sex_form" id="sex_form" value="F" style="margin-left: 40px;"><label>여자</label>
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
                    <option value="naver.com">naver.com</option>
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
           <input type="button" id="register" value="가입하기">
           <input type="button" id="noneRegister" value="취소" onclick="firstForm()">
          </div>
        </form>
        <form method="POST" name="register_form">
            <input type="hidden" name="grade" id="grade" value="20">
            <input type="hidden" name="name" id="name">
            <input type="hidden" name="id" id="id">
            <input type="hidden" name="pw" id="pw">
            <input type="hidden" name="tel" id="tel">
            <input type="hidden" name="birth" id="birth">
            <input type="hidden" name="sex" id="sex">
            <input type="hidden" name="post_num" id="post_num">
            <input type="hidden" name="n_addr" id="n_addr">
            <input type="hidden" name="o_addr" id="o_addr">
            <input type="hidden" name="rest_addr" id="rest_addr">
            <input type="hidden" name="email" id="email">
            <input type="hidden" name="del" id="del" value="0">
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
                  let anotherAddr = '';
                  let extraAddr = '';
                  
                  if(data.userSelectedType === 'R') {
                    fullAddr = data.roadAddress;
                    anotherAddr = data.jibunAddress;
                  } else {
                    fullAddr = data.jibunAddress;
                    anotherAddr = data.roadAddress;
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
                  
                  if(data.userSelectedType === 'J') {
                    if(data.bname !== '') {
                      extraAddr += data.bname;
                    }
                    if(data. buildingName !== '') {
                      extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    anotherAddr += (extraAddr !== '' ? ' (' + extraAddr + ') ' : '');
                  }
                  
                  document.membership.address.value = fullAddr;
                  document.register_form.o_addr.value = anotherAddr;
                  document.membership.post_code.value = data.zonecode;
                  document.membership.rest_address.focus();
                }
            }).open();
        });
    
        function check_pw() {
            var pw = document.getElementById('pw_form').value;
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
            
            if(document.getElementById('pw_form').value !='' && document.getElementById('pw2_form').value!='') {
              
                if(document.getElementById('pw_form').value == document.getElementById('pw2_form').value) {
                    document.getElementById('pw_check').innerHTML='비밀번호가 일치합니다.'
                    document.getElementById('pw_check').style.color='blue';
                } else {
                    document.getElementById('pw_check').innerHTML='비밀번호가 일치하지 않습니다.';
                    document.getElementById('pw_check').style.color='red';
                    document.getElementById('pw_form').value='';
                    document.getElementById('pw2_form').value='';
                }
                
            }
        }
    
        function check_name() {
          
          var name_str = document.getElementById('name_form').value;
          var hangul = /^[가-힣]+$/;
  
          if(name_str.length < 3 || name_str.length > 20) {
             window.alert('이름은 한글 3글자 이상, 20글자 이하만 가능합니다');
             document.getElementById('name_form').value='';
          } else if(name_str.search(/\s/) != -1) {
             window.alert('이름은 공백 없이 입력 가능합니다');
             document.getElementById('name_form').value='';
          } else if(hangul.test(name_str) == false) {
             window.alert('이름은 한글만 입력 가능합니다');
             document.getElementById('name_form').value='';
          
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
      
    	$("#register").on("click", function(){
    		console.log("register ready");
    		
    		let registerName = document.getElementById('name_form').value;
    		let registerId = document.getElementById('id_form').value;
    		let registerPw = document.getElementById('pw2_form').value;
    		let registerTel = document.getElementById('phone_num').value;
    		let registerBirth = document.getElementById('birth_year').value+document.getElementById('birth_month').value+document.getElementById('birth_day').value;
    		let registerSex = $('input:radio[name=sex_form]:checked').val();
    		let registerPostNum = document.getElementById('post_code').value;
    		let registerNewAddr = document.getElementById('address').value;  		
    		let registerRestAddr = document.getElementById('rest_address').value;
    		let registerEmail = document.getElementById('email_front').value+"@"+$('[name="email_back"]').val();
    		
    		
    		document.register_form.name.value = registerName;
    		document.register_form.id.value = registerId;
    		document.register_form.pw.value = registerPw;
    		document.register_form.tel.value = registerTel;
    		document.register_form.birth.value = registerBirth;
    		document.register_form.sex.value = registerSex;
    		document.register_form.post_num.value = registerPostNum;
    		document.register_form.n_addr.value = registerNewAddr;    		
    		document.register_form.rest_addr.value = registerRestAddr;
    		document.register_form.email.value = registerEmail;
    		
    		$.ajax({
                type: "POST",
              url:"${CP}/register.do",
                /* asyn:"true", */
                dataType:"html",
                data:{
                	grade: $("#grade").val(),
                	name: $("#name").val(),
                    id: $("#id").val(),
                    pw: $("#pw").val(),
                    tel: $("#tel").val(),
                    birth: $("#birth").val(),
                    sex: $("#sex").val(),
                    postNum: $("#post_num").val(),
                    nAddr: $("#n_addr").val(),
                    oAddr: $("#o_addr").val(),
                    restAddr: $("#rest_addr").val(),
                    email: $("#email").val(),
                    del: $("#del").val()
                },
                success:function(data){//통신 성공
                    //console.log("success data:"+data);
                    // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
                    let parsedJSON = JSON.parse(data);
                    console.log("parsedJSON.msgId:"+parsedJSON.msgId);
                                     
                    
                    if("10" == parsedJSON.msgId){
                      alert(parsedJSON.msgContents);
                    } 
                    
                    if("20" == parsedJSON.msgId){//로그인 성공
                      alert(parsedJSON.msgContents);
                      return;
                    }
                    
                   
                  },
                  error:function(data){//실패시 처리
                    console.log("error:"+data);
                  }
            }); //  $.ajax End --------------------------
    		
    		
    	});    // #register END
    	    
  	    //jquery 이벤트 감지 (#은 id를 감지하는 것이다.)
  	    $("#idDulpCheck").on("click",function(){
  	    	console.log("idDulpCheck ready");
  	    	
  	    	var id_str = document.getElementById('id_form').value;
  	    	
  	    	if(""==$('#id_form').val() || 0==$('#id_form').val().length){
  	          alert("아이디를 입력하세요");  // javascript 메시지 다이얼 로그
  	          $('#id_form').focus();          // jquery로 포커스를 이동시킨다.
  	          return;
  	      } else if(id_str.search(/\s/) != -1) {
              alert('아이디는 공백 없이 입력 가능합니다');
              document.getElementById('id_form').value='';
              return;
  	      }
  	    	
  	    	$.ajax({
                type: "POST",
              url:"${CP}/idDulpCheck.do",
                /* asyn:"true", */
                dataType:"html",
                data:{
                    id: $("#id_form").val()
                },
                success:function(data){//통신 성공
                    //console.log("success data:"+data);
                    // JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를 생성합니다.
                    let parsedJSON = JSON.parse(data);
                    console.log("parsedJSON.msgId:"+parsedJSON.msgId);
                                     
                    
                    if("10" == parsedJSON.msgId){
                      alert(parsedJSON.msgContents);  // javascript 메시지 다이얼 로그
                      $("#id_form").focus();
                    } 
                    
                    if("20" == parsedJSON.msgId){//로그인 성공
                      alert(parsedJSON.msgContents);
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