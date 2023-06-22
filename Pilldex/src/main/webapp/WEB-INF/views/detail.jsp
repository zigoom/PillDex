<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="author" content="user" />
<title>PillDex</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/30356e696a.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/detail-style.css" />
<script src="${path}/resources/js/jquery-3.7.0.js"></script>

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String itemName = request.getParameter("itemName");
	%>
	<!--네비게이션 바-->
	<header>
		<nav class="py-2 bg-light border-bottom">
			<div class="container d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a id="logo" href="${path}/main.do" class="nav-link link-dark px-2 active" aria-current="page">
							<img src="resources/img/Pill_32px.png" alt="Pill"> &nbsp; <b>PillDex</b>
						</a></li>
				</ul>
				<ul class="nav" style="">
					<li id="doMode" class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="${path}/mode.do" class="nav-link link-dark px-2">
							<b>돋보기</b>
						</a></li>
					<li id="doMap" class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="${path}/map.do" class="nav-link link-dark px-2">
							<b>MAP</b>
						</a></li>
					<%-- <c:set var="user" value="${User}"/> --%>
					<c:if test="${user ne null }">
						<!-- 유저 정보가 있을 경우 마이페이지/로그아웃 버튼 활성화. -->
						<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="#" class="nav-link link-dark px-2">
								<b>마이페이지</b>
							</a></li>
						<li id="doLogout" class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="${path}/logout.do" class="nav-link link-dark px-2">
								<b>로그아웃</b>
							</a></li>
					</c:if>
					<c:if test="${user eq null}">
						<!-- 유저 정보가 없을 경우 로그인 버튼 활성화. -->
						<li id="doLogin" class="nav-item" style="margin-top: 0px; margin-bottom: 0px; padding-top: 4px"><a href="${path}/main.do" class="nav-link link-dark px-2">
								<b>로그인</b>
							</a></li>
					</c:if>
				</ul>
			</div>
		</nav>
	</header>

	<div id="detail_img_text_box">
		<div id="detail_img_box">
			<img id="itemImage" alt="이미지가 없습니다" src="${modeVO.itemImage}">
		</div>
		<div id="detail_img_box">
			<h4>${modeVO.itemName}</h4>
			<h4>${modeVO.entpName}</h4>
		</div>
	</div>
	<c:if test="${user ne null }">
		<div id="bookmark-drug-box">
			<!--즐겨찾기 추가/삭제-->
			<button id="bookmark-drug" class="btn btn-primary">즐겨찾기 추가</button>
		</div>
	</c:if>

	<!-- detail_result_box안에 있는 값은 나중에 api데이터로 바꿀것-->
	<div id="detail_result_box">
		<h2>외형정보</h2>
		<input type="hidden" name="itemName" value="${modeVO.itemName}" id="itemName">
		<p>${modeVO.chart}</p>
		<br />
		<h2>저장방법</h2>
		<p>${modeVO.depositMethodQesitm}</p>
		<br />
		<h2>효능효과</h2>
		<p>${modeVO.efcyQesitm}</p>
		<br />
		<h2>용법용량</h2>
		<p>${modeVO.useMethodQesitm}</p>
		<br />
		<h2>사용시 주의사항</h2>
		<p>${modeVO.atpnQesitm}</p>
	</div>
	<input type="text" id="drug-delete-text">
	<button id="drug-delete">지우기</button>
	<footer class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/" class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
            <use xlink:href="#bootstrap" />
          </svg>
			</a>
			<span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023 FiveGuys 4 Team </span>
		</div>
	</footer>
</body>
<script>
	document.querySelector("#bookmark-drug").addEventListener(
			"click",
			function() {
				$.ajax({
					type : "POST",
					url : "${path}/drugCheckNm.do",
					asyn : "true",
					dataType : "html",
					data : {
						nm : "${modeVO.itemName}"
					},
					success : function(data) {//통신 성공
						console.log("success data:" + data);
						if (data == 0) {
							$.ajax({
								type : "POST",
								url : "${path}/getDrugCnt.do",
								asyn : "true",
								dataType : "html",
								data : {
									mNo : "${user.no}",
								},
								success : function(data) {//통신 성공
									console.log("success data:" + data);
									if (data == 10) {
										alert("더이상 등록할 수 없습니다.")
									} else {
										$.ajax({
											type : "POST",
											url : "${path}/drugBookmarkAdd.do",
											asyn : "true",
											dataType : "html",
											data : {
												mNo : "${user.no}",
												nm : "${modeVO.itemName}"
											},
											success : function(data) {//통신 성공
												console.log("success data:"
														+ data);
												alert("즐겨찾기 등록 성공");

											},
											error : function(data) {//실패시 처리
												console.log("error:" + data);
											}
										});
									}

								},
								error : function(data) {//실패시 처리
									console.log("error:" + data);
								}
							});
						}

						if (data == 1) {
							alert("이미 등록되어 있습니다.")
						}

					},
					error : function(data) {//실패시 처리
						console.log("error:" + data);
					}
				});

			})
	/* $("#get-drug-list").on("click",function(){
		$.ajax({
			type : "POST",
			url : "${path}/getDrugList.do",
			asyn : "true",
			dataType : "html",
			data : {
				mNo : "${user.no}"
			},
			success : function(data) {//통신 성공
				console.log("success data:"
						+ data);
				alert(data);

			},
			error : function(data) {//실패시 처리
				console.log("error:" + data);
			}
		});
	}) */
	$("#drug-delete").on("click", function() {
		$.ajax({
			type : "POST",
			url : "${path}/deleteDrugList.do",
			asyn : "true",
			dataType : "html",
			data : {
				nm : $("#drug-delete-text").val()
			},
			
			success : function(data) {//통신 성공
				console.log("success data:" + data);
				alert(data);

			},
			error : function(data) {//실패시 처리
				console.log("error:" + data);
			}
		});
	})
</script>
</html>
