<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="author" content="user" />

<title>PillDex 돋보기모드</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/30356e696a.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/mode-style.css" />
<script src="${path}/resources/js/jquery-3.7.0.js"></script>
</head>
<body>
	<!--네비게이션 바-->
	<nav class="py-2 bg-light border-bottom">
		<div class="container d-flex flex-wrap">
			<ul class="nav me-auto">
				<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2 active" aria-current="page">
						<img src="resources/img/Pill_32px.png" alt="Pill"> &nbsp; <b>PillDex</b>
					</a></li>
			</ul>
			<ul class="nav" style="">
				<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="#" class="nav-link link-dark px-2">
						<b>돋보기</b>
					</a></li>
				<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="#" class="nav-link link-dark px-2">
						<b>MAP</b>
					</a></li>

				<%-- <c:set var="user" value="${User}"/> --%>
				<c:if test="${user ne null }">
					<!-- 유저 정보가 있을 경우 마이페이지/로그아웃 버튼 활성화. -->
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="#" class="nav-link link-dark px-2">
							<b>마이페이지</b>
						</a></li>
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="#" class="nav-link link-dark px-2">
							<b>로그아웃</b>
						</a></li>
				</c:if>
				<c:if test="${user eq null }">
					<!-- 유저 정보가 없을 경우 로그인 버튼 활성화. -->
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="login.do" class="nav-link link-dark px-2">
							<b>로그인</b>
						</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	<div id="login-containor">
		<div style="width: 260px; float: right; background-color: #FFFFFF; margin-right: 10px; margin-top: 10px; margin-bottom: 30px; height: 100px; background-size: cover">
			<div style="margin-left: 10px; margin-bottom: 25px;">
				<form>
					<input type="checkbox" name="idsave" value="saveOk">
					<label for="checkId">아이디 저장</label><br>
					<input type="text" name="id" id="id" placeholder="아이디">
					<input type="password" name="pw" id="pw" placeholder="패스워드" style="margin-bottom: 5px;">
					<input type="button" value="로그인" id="doLogin" class="btn btn-primary">
					<a href="#" style="text-decoration-line: none;">회원가입</a>
					<a href="#" style="text-decoration-line: none;">ID/PW찾기</a>
				</form>
			</div>

		</div>
	</div>
	<img src="${path}/resources/img/main_img.png" alt="메인이미지" width="100%" />
	<div id="search_list_box">
		<!--밑에 내용은 나중에 api연결하고나서 localStorage로 기능추가-->
		<ul>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>
			<li>
				<form method="post" action="/pilldex/apiloadToNameDetail.do">
					<div class="search_list hidden">
						<img class="search_list_img" src="#" alt="이미지" />
						<p class="search_list_name"></p>
						<input type="hidden" name="itemName" class="recent-search" value="">
						<input type="submit" class="btn btn-primary" value="보기">
						<button class="remove-btn btn btn-primary">제거</button>
					</div>
				</form>
			</li>

		</ul>

	</div>
	<div id="med_search_box">
		<h1 id="med_search">의약품 검색</h1>
	</div>
	<form id="serach_form" action="apiloadToName.do" method="post">
		<div id="search_box_containor">
			<!--검색창-->
			<input name="itemName" id="search_area" type="text" placeholder="약 이름으로 검색" value="" />
			<button id="search_button" class="btn btn-primary col-md-2 col-sm-3 col-4" type="submit">검색 하기</button>
		</div>
	</form>
	<form method="post" id="main-form" action="apiload.do">
		<div id="shape_search_box">
			<h2>약 모양으로 검색</h2>
			<div id="shape-search-box-img">
				<img src="${path}/resources/img/tylenol.jpg" id="printImg" />
				<h4>이 약의 경우 식별자에 TYLENOL 또는 500을 입력해주세요.</h4>
			</div>
			<div style="display: flex; align-items: end">
				<div id="med_char_input">
					<div class="select-box shape">
						<i class="fa-solid fa-solid fa-shapes fa-2xl"></i>
						<input type="text" class="selected-data-input hidden" name="drugShape" value="" />
						<p>모양</p>
					</div>
					<div class="select-box color">
						<i class="fa-solid fa-droplet fa-2xl"></i>
						<input type="text" class="selected-data-input hidden" name="colorClass" value="" />
						<p>색상</p>
					</div>
					<div class="select-box chart">
						<i class="fa-solid fa-capsules fa-2xl"></i>
						<input type="text" class="selected-data-input hidden" name="chart" value="" />
						<p>제형</p>
					</div>
					<div class="select-box line">
						<i class="fa-solid fa-light fa-tablets fa-2xl"></i>
						<input type="text" class="selected-data-input hidden" name="lineFront" value="" />
						<h3>분할선</h3>
						<input type="text" class="selected-data-input hidden" name="lineBack" value="" />
						<input type="text" class="selected-data-input hidden" name="printFront" value="" />
						<input type="text" class="selected-data-input hidden" name="printBack" value="" />
					</div>
					<input type="text" class="selected-data-input printFB" placeholder="식별자" name="printFB" value="" />
					<input type="submit" id="submit-btn" class="btn btn-primary" />
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-shape">
						<img src="${path}/resources/img/main-png/색깔/no-background/1.png" data-value="" />
						<input type="text" value="팔각형" class="hidden" />
						<h1>전체</h1>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/circle.png" data-value="원형" />
						<input type="text" value="원형" class="hidden" />
						<h3>원형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/eclipse.png" data-value="타원형" />
						<input type="text" value="타원형" class="hidden" />
						<h3>타원형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/rectangle.png" data-value="장방형" />
						<input type="text" value="장방형" class="hidden" />
						<h3>장방형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/triangle.png" data-value="삼각형" />
						<input type="text" value="삼각형" class="hidden" />
						<h3>삼각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/square.png" data-value="사각형" />
						<input type="text" value="사각형" class="hidden" />
						<h3>사각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/pentagon.png" data-value="오각형" />
						<input type="text" value="오각형" class="hidden" />
						<h3>오각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/hexagon.png" data-value="육각형" />
						<input type="text" value="육각형" class="hidden" />
						<h3>육각형</h3>
					</div>
					<div class="select-box-shape">
						<img src="${path}/resources/img/octagon.png" data-value="팔각형" />
						<input type="text" value="팔각형" class="hidden" />
						<h3>팔각형</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/1.png" data-value="" />
						<input type="text" value="팔각형" class="hidden" />
						<h1>전체</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/2.png " data-value="하양" />
						<input type="text" value="하양" class="hidden" />
						<h1>하양</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/3.png " data-value="노랑" />
						<input type="text" value="노랑" class="hidden" />
						<h1>노랑</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/4.png " data-value="주황" />
						<input type="text" value="주황" class="hidden" />
						<h1>주황</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/5.png " data-value="분홍" />
						<input type="text" value="분홍" class="hidden" />
						<h1>분홍</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/6.png " data-value="빨강" />
						<input type="text" value="빨강" class="hidden" />
						<h1>빨강</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/7.png " data-value="갈색" />
						<input type="text" value="갈색" class="hidden" />
						<h1>갈색</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/8.png " data-value="연두" />
						<input type="text" value="연두" class="hidden" />
						<h1>연두</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/9.png " data-value="초록" />
						<input type="text" value="초록" class="hidden" />
						<h1>초록</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/10.png " data-value="청록" />
						<input type="text" value="청록" class="hidden" />
						<h1>청록</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/11.png " data-value="파랑" />
						<input type="text" value="파랑" class="hidden" />
						<h1>파랑</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/13.png " data-value="자주" />
						<input type="text" value="자주" class="hidden" />
						<h1>자주</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/14.png " data-value="보라" />
						<input type="text" value="보라" class="hidden" />
						<h1>보라</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/15.png " data-value="회색" />
						<input type="text" value="회색" class="hidden" />
						<h1>회색</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/16.png " data-value="검정" />
						<input type="text" value="검정" class="hidden" />
						<h1>검정</h1>
					</div>
					<div class="select-box-color">
						<img src="${path}/resources/img/main-png/색깔/no-background/17.png " data-value="투명" />
						<input type="text" value="투명" class="hidden" />
						<h1>투명</h1>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/1.png" data-value="" />
						<input type="text" value="전체" class="hidden" />
						<h3>전체</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/2.png" data-value="정제" />
						<input type="text" value="정제" class="hidden" />
						<h3>정제류</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/3.png" data-value="경질" />
						<input type="text" value="경질" class="hidden" />
						<h3>경질캡슐</h3>
					</div>
					<div class="select-box-chart">
						<img src="${path}/resources/img/main-png/재질/no-background/4.png" data-value="연질" />
						<input type="text" value="연질" class="hidden" />
						<h3>연질캡슐</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/1.png" data-value="null" />
						<input type="text" value="전체" class="hidden" />
						<h3>전체</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/2.png" data-value="null" />
						<input type="text" value="없음" class="hidden" />
						<h3>없음</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/3.png" data-value="-" />
						<input type="text" value="-" class="hidden" />
						<h3>-형</h3>
					</div>
					<div class="select-box-line">
						<img src="${path}/resources/img/main-png/선/no-background/4.png" data-value="+" />
						<input type="text" value="+" class="hidden" />
						<h3>+형</h3>
					</div>
				</div>
				<div class="detail-view-box hidden">
					<input type="text" name="printFB" />
				</div>
			</div>
		</div>
		<p>${shape}</p>

	</form>


	<div class="card-box-main">
		<div class="card-box">
			<c:forEach var="pill" items="${modeVO}">
				<div class="card-form">
					<form method="post" action="/pilldex/apiloadToNameDetail.do">
						<div class="card-t">
							<img src="${pill.itemImage}" class="card-img-top" alt="이미지가 없습니다.">
							<div class="card-body">
								<input name="itemName" value="${pill.itemName}" class="hidden input-itemName" />
								<h5 id="card-title" class="card-title">${pill.itemName}</h5>
								<p class="card-text">${pill.efcyQesitm}</p>
							</div>
						</div>
						<input value="상세보기" style="width: 50%;" type="submit" id="${pill.itemName}" class="btn btn-primary card-submit" data-image="${pill.itemImage}">
					</form>
				</div>
			</c:forEach>
		</div>
	</div>


	<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
                        <use xlink:href="#bootstrap" />
                    </svg>
			</a>
			<span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023 FiveGuys 4 Team </span>
			<a class="copyright" href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15075057" target="blank">
				<span>출처 : 식품의약품안전처_의약품개요정보(e약은요)</span>
			</a>
			<a class="copyright" href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15057639" target="blank">
				<span>출처 : 식품의약품안전처_의약품 낱알식별 정보</span>
			</a>
		</div>
	</footer>
</body>

<script src="${path}/resources/js/mode-page.js">
	
</script>
<script>
	//jquery 이벤트 감지 (#은 id를 감지한는것이다.)
	$("#doLogin").on("click", function() {
		console.log("doLogin");

		if (confirm('로그인 하시겠습니까?') == false)
			return;
		console.log("userId : " + $("#id").val());
		console.log("passwd : " + $("#pw").val());

		if ("" == $("#id").val() || 0 == $("#id").val().length) {
			alert("아이디를 입력하세요"); // javascript 메시지 다이얼 로그
			$("#id").focus(); // jquery로 포커스를 이동시킨다.
			return;
		}
		if ("" == $("#pd").val() || 0 == $("#pw").val().length) {
			alert("비밀번호를 입력하세요"); // javascript 메시지 다이얼 로그
			$("#pw").focus();
			return;
		}

		$.ajax({
			type : "POST",
			url : "${path}/modeLogin.do",
			/* asyn:"true", */
			dataType : "html",
			data : {
				id : $("#id").val(),
				pw : $("#pw").val()
			},
			success : function(data) {// 통신 성공
				// console.log("success data:"+data);
				// JSON.parse() 메서드는 JSON 문자열의 구문을 분석하고, 그 결과에서 JavaScript 값이나 객체를
				// 생성합니다.
				let paredJSON = JSON.parse(data);
				console.log("paredJSON.msgId:" + paredJSON.msgId);

				if ("1" == paredJSON.msgId || "10" == paredJSON.msgId) {
					alert(paredJSON.msgContents); // javascript 메시지 다이얼 로그
					$("#userId").focus(); // jquery로 포커스를 이동시킨다.
					return;
				}
				if ("2" == paredJSON.msgId || "20" == paredJSON.msgId) {
					alert(paredJSON.msgContents);
					$("#passwd").focus();
					return;
				}
				if ("30" == paredJSON.msgId) {// 로그인 성공
					alert(paredJSON.msgContents);

					// javascript 내장객체 : url
					window.location.href = "${path}/mode.do";
				}
			},
			error : function(data) {// 실패시 처리
				console.log("error:" + data);
			}
		});
	});
</script>
</html>
