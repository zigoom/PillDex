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
    <c:forEach var="list" items="${list}">
		<div id="detail_img_text_box" style="justify-content: flex-start;">
			<div id="detail_img_box" style="width:760px height:420px ;">
				<img id="item_image" alt="이미지가 없습니다" src="${list.item_image}"
				style="size: 100% 100%;">
			</div>
			<div>
				<h4>${list.item_name}</h4>
				<h4>${list.entp_name}</h4>
			</div>
		</div>
   
    
	<c:if test="${user ne null }">
		<div id="bookmark-drug-box">
			<!--즐겨찾기 추가/삭제-->
			<button id="bookmark-drug" class="btn btn-primary">즐겨찾기 추가</button>
		</div>
	</c:if>
  
	<!-- detail_result_box안에 있는 값은 나중에 api데이터로 바꿀것-->
	
	<div id="detail_result_box" style="margin-top: 80px;">
		<h2>외형정보</h2>
		<input type="hidden" name="item_name" value="${list.item_name}" id="item_name">
		<br />
		<h2>저장방법</h2>
		<p>${list.deposit_method_qesitm}</p>
		<br />
		<h2>효능효과</h2>
		<p>${list.efcy_qesitm}</p>
		<br />
		<h2>용법용량</h2>
		<p>${list.use_method_qesitm}</p>
		<br />
		<h2>사용시 주의사항</h2>
		<p>${list.atpn_qesitm}</p>
	</div>
    </c:forEach>

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


</html>
