<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="CP" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="fiveguys" content="mypage" />
<link rel="stylesheet" href="${CP}/resources/css/main-css/mypage-style.css" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<script src="${CP}/resources/js/jquery-3.7.0.js"></script>

<title>PillDex 마이페이지</title>
</head>
<body>
	<div id="main_box">
		<h3>마이페이지</h3>
		<form id="box2" action="#" method="get">
			<label for="user_id"><b>아이디</b></label><br />
			<div>
				<input type="text" id="user_id" name="user_id" min="6" maxlength="20" placeholder="아이디 입력(영어, 숫자포함 6~20자)" readonly="readonly" value="${user.id}" />
			</div>
			
			<br /> <label for="pw"><b>비밀번호</b></label><br />
				<input type="password" id="pw" name="pw" min="8" maxlength="20" placeholder="(문자,숫자,특수문자[!,@,#,$,%,*])포함 8~20자" value="${user.pw}" />
			
			<br /> <label for="pw_check"><b>비밀번호 확인</b></label><br />
				<input type="password" id="pw_check" name="pw_check" min="8" maxlength="20" placeholder="비밀번호 재입력" value="${user.pw}" />

			<br /> <label for="user_name"><b>이름</b></label><br />
				<input class="input-text" type="text" id="user_name" name="user_name" min="2" maxlength="5" placeholder="이름" value="${user.name}" />

			<br /> <label for="phone_number"><b>휴대폰번호</b></label><br />
				<input type="tel" width="700px" class="tel" id="phone_number" name="phone_number" size="13" maxlength="13" value="${user.tel}" />
			
			<br /> <label for="email"><b>이메일 주소</b></label><br />
				<input type="text" width="300px" id="emailFront" name="emailFront" placeholder="이메일 주소" value="" />
			
			<label><b>@</b></label>
				<input id="emailBack" type="email" list="emailBack" name="emailBack" placeholder="ex)naver.com" value="" />
				<input type="hidden" class="email" id="emailTmp" value="${user.email}" />
				<input type="hidden" id="no" value="${user.no}">

			<br /> <label for="address"><b>기본 주소</b></label><br />
				<input style="width: 200px" class="input-text postNum" type="text" id="sample6_postcode" placeholder="우편번호" value="${user.postNum}" />
				<input style="width: 180px" type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" />
			<br />
				<input type="text" class="input-text oAddr" id="address" placeholder="주소" value="${user.oAddr}" />
			<br />
				<input type="text" class="input-text restAddr" id="rest_address" placeholder="상세주소" value="${user.restAddr}" />

<!-- 주소 ---------------------------------------------------------------------------------------------------------------->
			<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
			<script>
				function sample6_execDaumPostcode() {
					new daum.Postcode(
							{
								oncomplete : function(data) {
									// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

									// 각 주소의 노출 규칙에 따라 주소를 조합한다.
									// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
									var fullAddr = ""; // 주소 변수
									//var anotherAddr = "";
									var extraAddr = ""; // 참고항목 변수
									
									//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
									if (data.userSelectedType === "R") {
										// 사용자가 도로명 주소를 선택했을 경우
										fullAddr = data.roadAddress;
										//anotherAddr = data.jibunAddress;
									} else {
										// 사용자가 지번 주소를 선택했을 경우(J)
										fullAddr = data.jibunAddress;
										//anotherAddr = data.roadAddress;
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
											extraAddr += extraAddr !== "" ? ", "
													+ data.buildingName
													: data.buildingName;
										}
										fullAddr += extraAddr !== "" ? " ("
												+ extraAddr + ") " : "";
									}

									document.getElementById("sample6_postcode").value = data.zonecode;
									document.getElementById("address").value = fullAddr;
									document.getElementById("rest_address")
											.focus();
								},
							}).open();
				}
			</script>
<!-- //주소 ---------------------------------------------------------------------------------------------------------------->

			<br /> <label for="bookmark_address_list"><b>즐겨 찾기 주소지 목록</b></label><br />
			<script>
				function radioButton(event) {
					document.getElementById('dropdown_button').textContent = event.value;
				}
			</script>
			<div class="dropdown">
				<button id="dropdown_button" style="width: 400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">주소지 목록</button>
				<ul class="dropdown-menu " style="width: 400px;">
					<li class="dropdown-item"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="firstRadio" id="firstRadio" onclick='radioButton(this)'> <label class="form-check-label" for="firstRadio">First radio</label></li>
					<li class="dropdown-item" style="width: 400px;"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="secondRadio" id="secondRadio" onclick='radioButton(this)'> <label class="form-check-label" for="secondRadio">Second radio</label></li>
					<li class="dropdown-item" style="width: 400px;"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="thirdRadio" id="thirdRadio" onclick='radioButton(this)'> <label class="form-check-label" for="thirdRadio">Third radio</label></li>
				</ul>
			</div>
			<br /> <label for="bookmark_med_list"><b>약품 즐겨 찾기 주소지 목록</b></label><br />
			<script>
				function radioButton(event) {
					document.getElementById('dropdown_button').textContent = event.value;
				}
			</script>
			<div class="dropdown">
				<button id="dropdown_button" style="width: 400px;" class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">약품 목록</button>
				<ul class="dropdown-menu " style="width: 400px;">
					<li class="dropdown-item"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="firstRadio" id="firstRadio" onclick='radioButton(this)'> <label class="form-check-label" for="firstRadio">First radio</label></li>
					<li class="dropdown-item" style="width: 400px;"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="secondRadio" id="secondRadio" onclick='radioButton(this)'> <label class="form-check-label" for="secondRadio">Second radio</label></li>
					<li class="dropdown-item" style="width: 400px;"><input class="form-check-input me-1" type="radio" name="listGroupRadio" value="thirdRadio" id="thirdRadio" onclick='radioButton(this)'> <label class="form-check-label" for="thirdRadio">Third radio</label></li>
				</ul>
			</div>
			
			<br />
			<input id="update" type="button" class="btn btn-navy navbar-btn find-btn1" value="수정" />

			<input type="button" class="btn btn-grey navbar-btn find-btn1" onclick="location.href='/pilldex/main.do'" value="취소" />
		</form>
	</div>
</body>


<script>
	var str = "${user.email}";
	console.log(str);
	var word1 = str.substring(0, str.indexOf('@'));
	$("#emailFront").val(word1);

	var word2 = str.substring(str.lastIndexOf('@') + 1);
	document.getElementById('emailBack').value = word2;

	function AddressList() {
		var obj = {
			"mNo" : "${user.no}"
		}; //session에 있는 회원 정보를 가져간다.
		console.log(obj);
		$.ajax({
			url : '/pilldex/mypage.do',
			type : "post",
			data : JSON.stringify(obj),
			dataType : "json",
			contentType : "application/json; charset=utf-8;",
			success : function(data) {
				//let addressVO = JSON.parse(data);
				alert(data);
				/* for(i=0;i < addressVO.length;i++){

				}; */
			},
			error : function(errorThrown) {
				alert("request error!");
			}
		});
	}

	$(document).ready(function() { //모든 화면이 다 로딩이 되면 실행하는 영역
		AddressList();
	});
	
	function DrugList() {
		var obj = {
			"mNo" : "${user.no}"
		}; //session에 있는 회원 정보를 가져간다.
		console.log(obj);
		$.ajax({
			url : '/pilldex/mypage.do',
			type : "post",
			data : JSON.stringify(obj),
			dataType : "json",
			contentType : "application/json; charset=utf-8;",
			success : function(data) {
				//let addressVO = JSON.parse(data);
				alert(data);
				/* for(i=0;i < addressVO.length;i++){

				}; */
			},
			error : function(errorThrown) {
				alert("request error!");
			}
		});
	}

	/* $(document).ready(function() { //모든 화면이 다 로딩이 되면 실행하는 영역
		DrugList();
	}); */

	$(document).ready(function() { // 모든 화면이 로딩 되면
		console.log('document ready');

		$("#update").on("click", function() {
			console.log('update click');
			
		
			//console.log(${user.no});
			$.ajax({
				type : "POST",
				url : "${CP}/update.do",
				async : "true",
				dataType : "html",
				data : JSON.stringify({
					//no : '${user.no}',
					//id : "${user.id}",
					pw : "${user.pw}",
					//name : "${user.name}"
					tel : "${user.tel}",
					email : "${user.email}"
				}),
				contentType : "application/json",
				success : function(data) {
					console.log("success data:", data);
				},
				error : function(data) {
					console.log("error:", data);
				}
			});

		});

	});
	
	

	
	
</script>
</html>
