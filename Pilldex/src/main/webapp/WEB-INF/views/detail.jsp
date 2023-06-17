<%@page import="com.fiveguys.pilldex.mode.controller.ModePageController"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta name="author" content="user" />
<title>PillDex</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous" />
<script src="https://kit.fontawesome.com/30356e696a.js"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="${path}/resources/css/detail-style.css" />
<script src="${path}/resources/js/jquery-3.7.0.js"></script>

</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	String itemName = request.getParameter("itemName");
	%>
	<!--네비게이션 바-->
	<nav class="py-2 bg-light border-bottom">
		<div class="container d-flex flex-wrap">
			<ul class="nav me-auto">
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2 active" aria-current="page"> <img
						src="${path}/resources/img/Pill_32px.png" alt="Pill" /> &nbsp; <b>PillDex</b>
				</a></li>
			</ul>
			<ul class="nav">
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>돋보기</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>MAP</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>로그인</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>마이페이지</b></a></li>
				<li class="nav-item"><a href="#"
					class="nav-link link-dark px-2"><b>로그아웃</b></a></li>
			</ul>
		</div>
	</nav>
	${pill}
	<div id="detail_img_text_box">
		<div id="detail_img_box">
			<img id="itemImage" alt="이미지가 없습니다" src="${modeVO.itemImage}">
		</div>
		<div id="detail_img_box">
			<h4>${modeVO.itemName}</h4>
			<h4>${modeVO.entpName}</h4>
		</div>
	</div>
	<div id="star_box">
		<!--즐겨찾기 추가/삭제-->
		<i id="star" class="hidden fa-regular fa-star fa-2xl"></i>
	</div>
	<!-- detail_result_box안에 있는 값은 나중에 api데이터로 바꿀것-->
	<div id="detail_result_box">
		<h2>외형정보</h2>
		<input type="hidden" name="itemName" value="${modeVO.itemName}"
			id="itemName">
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
	<footer
		class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
		<div class="col-md-4 d-flex align-items-center">
			<a href="/"
				class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1">
				<svg class="bi" width="30" height="24">
            <use xlink:href="#bootstrap" />
          </svg>
			</a> <span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023
				FiveGuys 4 Team </span> <a class="copyright"
				href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15075057"
				target="blank"><span>출처 : 식품의약품안전처_의약품개요정보(e약은요)</span></a> <a
				class="copyright"
				href="https://www.data.go.kr/tcs/dss/selectApiDataDetailView.do?publicDataPk=15057639"
				target="blank"><span>출처 : 식품의약품안전처_의약품 낱알식별 정보</span></a>
		</div>
	</footer>
	<script>
		
	</script>
</body>
</html>
