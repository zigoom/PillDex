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
        
        <label for="email"><b>이메일 주소</b></label><br/>
        <input type="text" width="300px" id="emailFront" name="emailFront" placeholder="이메일 주소" value=""  />
        <label><b>@</b></label>
        <input id="emailBack"type="email" list="emailBack" name="emailBack" placeholder="ex)naver.com" value=""/>  
        
        <input type="hidden" id="emailTmp" value="${user.email}" /><br/>
        <label for="address"><b>기본 주소</b></label><br />

        <input style="width: 200px" class="input-text" type="text" id="sample6_postcode" placeholder="우편번호"/>
        <input style="width: 180px" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/>

        <br />
        <input type="text" class="input-text" id="address" placeholder="주소"/><br />
        <input type="hidden" id="anotherAddr">
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
                
                
                
                document.getElementById("sample6_postcode").value = data.zonecode;
                document.getElementById("address").value = fullAddr;
                document.getElementById("anotherAddr").value = anotherAddr;
                document.getElementById("rest_address").focus();
              },
            }).open();
          }
        </script> <br/>
        <label for="bookmark_address_list"><b>즐겨 찾기 주소지 목록</b></label><br/> 
        <script>
					function radioButton(event) {
						  document.getElementById('dropdown_button').textContent=event.value;
					}
		    </script>
				<div class="dropdown">
				  <button id="dropdown_button" style="width:400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				       주소지 목록
				  </button>
				  <ul class="dropdown-menu " style="width:400px;" id="il_01">
				  
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
				  </ul>
				</div>
        <br/>
        <label for="bookmark_med_list"><b>약품 즐겨 찾기 주소지 목록</b></label ><br /> 
				<div class="dropdown">
				  <button id="dropdown_button2" style="width:400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
				      약품 목록
				  </button>
				  <ul class="dropdown-menu " style="width:400px;" id="il_02">
				  </ul>
				</div>
        <br/>
        <input type="button" class="btn btn-navy navbar-btn find-btn1" onclick="location.href='/submit'" value="수정"/>
        <input type="button"class="btn btn-grey navbar-btn find-btn1" onclick="location.href='/reset'" value="취소"/>
      </form>
    </div>
    <input type="button" value="1231" id="ddd" >
    <input type="button" value="1231" name="1234" >
  </body>
  <script>
    const emailTmp = document.querySelector("#emailTmp");    
    const parts = emailTmp.value.split("@");    
    const emailFrontPart = parts[0];
    const emailBackPart  = parts[1];
    
    const emailFront = document.querySelector("#emailFront");
    //const emailBack  = document.quertSelector("#emailBack");
    
    emailFront.value = emailFrontPart;
    //emailBack.value  = emailBackPart; 
    
    
    
	// 종훈 제작 함수 ---------------------------------------------------------------
	// 리스트 클릭 이벤트
    function radioButton02(event) {
      console.log(event);
      document.getElementById('dropdown_button2').textContent=event.outerText;
    }
    // 삭제 이벤트 
    function radioButtonX02(event) {
        var no= event.value;
        console.log(no);
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
                  
                  var listE2 = document.getElementById('il_02'); //리스트를 추가하는 위치
                  var fragment = document.createDocumentFragment();
                  removeAllChildNods(listE2); // 검색 결과 목록에 추가된 항목들을 제거합니다
        
                  for(i=0;i < paredJSON.length;i++){                         
                       var el = document.createElement('li');
                       var itemStr ="";
                       itemStr+='<input class="form-check-input me-1" type="radio" name="listGroupRadio" value="'+paredJSON[i].nAddr+'" id="'+paredJSON[i].no+'" >';
                       itemStr+='<label class="form-check-label" name="AAAA" onclick="radioButton02(this);" value="'+paredJSON[i].nAddr+'" for="'+paredJSON[i].no+'">'+paredJSON[i].nAddr+'</label>';
                       itemStr+='&nbsp <button type="button" class="btn btn-dark" onclick="radioButtonX02(this);" name="999" value="'+paredJSON[i].no+'">X</button>';
        
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
      function radioButton01(event) {
        console.log(event);
        document.getElementById('dropdown_button1').textContent=event.outerText;
      }
      // 삭제 이벤트 
      function radioButtonX01(event) {
          var no= event.value;
          console.log(no);
          delAddress(no);
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
                    console.log(paredJSON);
                    
                    var listE1 = document.getElementById('il_01'); //리스트를 추가하는 위치
                    var fragment = document.createDocumentFragment();
                    removeAllChildNods(listE1); // 검색 결과 목록에 추가된 항목들을 제거합니다
          
                    for(i=0;i < paredJSON.length;i++){                         
                         var el = document.createElement('li');
                         var itemStr ="";
                         itemStr+='<input class="form-check-input me-1" type="radio" name="listGroupRadio" value="'+paredJSON[i].nAddr+'" id="'+paredJSON[i].no+'" >';
                         itemStr+='<label class="form-check-label" name="BBBB" onclick="radioButton01(this);" value="'+paredJSON[i].nAddr+'" for="'+paredJSON[i].no+'">'+paredJSON[i].nAddr+'</label>';
                         itemStr+='&nbsp <button type="button" class="btn btn-dark" onclick="radioButtonX01(this);" name="999" value="'+paredJSON[i].no+'">X</button>';
          
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
                  getPill();
                },
                error: function(errorThrown) {
                    alert("request error!");
                }
            }); 
        }
  
    $(document).ready(function(){     
      getAddress();
      getPill();
      
    });
	 
	  function removeAllChildNods(el) {
		  el.innerHTML = "";
	
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
  */
	  }
	// 종훈 제작 함수 ---------------------------------------------------------------
  </script>
</html>
