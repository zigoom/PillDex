<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="com.pcwk.ehr.ParserDataToDb" %>

<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="author" content="user" />
    <link rel="stylesheet" href="${path}/resources/css/mode-style.css" />
    <title>PillDex 돋보기모드</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
    ></script>
    <script
      src="https://kit.fontawesome.com/30356e696a.js"
      crossorigin="anonymous"
    ></script>
    
  </head>
  <body>
    <!--네비게이션 바-->
    <nav class="py-2 bg-light border-bottom">
      <div class="container d-flex flex-wrap">
        <ul class="nav me-auto">
          <li class="nav-item">
            <a
              href="#"
              class="nav-link link-dark px-2 active"
              aria-current="page"
            >
              <img src="${path}/resources/img/Pill_32px.png" alt="Pill" />
              &nbsp;
              <b>PillDex</b>
            </a>
          </li>
        </ul>
        <ul class="nav">
          <li class="nav-item">
            <a href="#" class="nav-link link-dark px-2"><b>일반모드</b></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link link-dark px-2"><b>MAP</b></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link link-dark px-2"><b>로그인</b></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link link-dark px-2"><b>마이페이지</b></a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link link-dark px-2"><b>로그아웃</b></a>
          </li>
        </ul>
      </div>
    </nav>
    <img
      src="${path}/resources/img/main_img.png"
      alt="메인이미지"
      width="100%"
    />
    <div id="search_list_box">
      <!--밑에 내용은 나중에 api연결하고나서 localStorage로 기능추가-->
      <ul>
        <li>
          <div id="search_list">
            <img id="search_list_img" src="#" alt="이미지" />
          </div>
          타이레놀
        </li>
        <li>
          <div id="search_list">
            <img id="search_list_img" src="#" alt="이미지" />
          </div>
          타이레놀
        </li>
      </ul>
    </div>
    <div id="med_search_box"><h1 id="med_search">의약품 검색</h1></div>
    <form id="serach_form" action="#" method="get">
      <div id="search_box_containor">
        <!--검색창-->
        <input
          name="search"
          id="search_area"
          type="text"
          placeholder="약 이름으로 검색"
        />
        <button
          id="search_button"
          class="btn btn-primary col-md-2 col-sm-3 col-4"
          type="submit"
        >
          검색 하기
        </button>
      </div>
    <form method="GET" id="main-form">
      <div id="shape_search_box">
        <h2>약 모양으로 검색</h2>
        <img src="${path}/resources/img/med_char.png" />
        <div style="display: flex; align-items: end">
          <div id="med_char_input">
            <div class="select-box shape">
              <i class="fa-solid fa-solid fa-shapes fa-2xl"></i>
              <p>모양</p>
            </div>
            <div class="select-box color">
              <i class="fa-solid fa-droplet fa-2xl"></i>
              <p>색상</p>
            </div>
            <div class="select-box chart">
              <i class="fa-solid fa-capsules fa-2xl"></i>
              <p>제형</p>
            </div>
            <div class="select-box line">
              <i class="fa-solid fa-light fa-tablets fa-2xl"></i>
              <p>분할선</p>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-shape">
              <img src="${path}/resources/img/circle.png" data-value="원형" />
              <h3>원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/eclipse.png"  data-value="타원형"/>
              <h3>타원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/rectangle.png"  data-value="장방형"/>
              <h3>장방형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/semiCircle.png"  data-value="반원형"/>
              <h3>반원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/triangle.png"  data-value="삼각형"/>
              <h3>삼각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/square.png"  data-value="사각형"/>
              <h3>사각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/rhombus.png"  data-value="마름모"/>
              <h3>마름모</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/pentagon.png"  data-value="오각형"/>
              <h3>오각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/hexagon.png" data-value="육각형" />
              <h3>육각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="${path}/resources/img/octagon.png"  data-value="팔각형"/>
              <h3>팔각형</h3>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/1.png" data-value="전체"
              />
              <h1>전체</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/2.png " data-value="하양"
              />
              <h1>하양</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/3.png " data-value="노랑"
              />
              <h1>노랑</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/4.png " data-value="주황"
              />
              <h1>주황</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/5.png " data-value="분홍"
              />
              <h1>분홍</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/6.png " data-value="빨강"
              />
              <h1>빨강</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/7.png " data-value="갈색"
              />
              <h1>갈색</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/8.png " data-value="연두"
              />
              <h1>연두</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/9.png " data-value="초록"
              />
              <h1>초록</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/10.png " data-value="청록"
              />
              <h1>청록</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/11.png " data-value="파랑"
              />
              <h1>파랑</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/12.png " data-value="남색"
              />
              <h1>남색</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/13.png " data-value="자주"
              />
              <h1>자주</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/14.png " data-value="보라"
              />
              <h1>보라</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/15.png " data-value="회색"
              />
              <h1>회색</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/16.png " data-value="검정"
              />
              <h1>검정</h1>
            </div>
            <div class="select-box-color">
              <img
                src="${path}/resources/img/main-png/색깔/no-background/17.png " data-value="투명"
              />
              <h1>투명</h1>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-chart">
              <img
                src="${path}/resources/img/main-png/재질/no-background/1.png" data-value="전체"
              />
              <h3>전체</h3>
            </div>
            <div class="select-box-chart">
              <img
                src="${path}/resources/img/main-png/재질/no-background/2.png"  data-value="정제"
              />
              <h3>정제류</h3>
            </div>
            <div class="select-box-chart">
              <img
                src="${path}/resources/img/main-png/재질/no-background/3.png" data-value="경질"
              />
              <h3>경질캡슐</h3>
            </div>
            <div class="select-box-chart">
              <img
                src="${path}/resources/img/main-png/재질/no-background/4.png" data-value="연질"
              />
              <h3>연질캡슐</h3>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-line">
              <img
                src="${path}/resources/img/main-png/선/no-background/1.png" data-value="전체"
              />
              <h3>전체</h3>
            </div>
            <div class="select-box-line">
              <img
                src="${path}/resources/img/main-png/선/no-background/2.png" data-value="없음"
              />
              <h3>없음</h3>
            </div>
            <div class="select-box-line">
              <img
                src="${path}/resources/img/main-png/선/no-background/3.png" data-value="-"
              />
              <h3>-형</h3>
            </div>
            <div class="select-box-line">
              <img
                src="${path}/resources/img/main-png/선/no-background/4.png" data-value="+"
              />
              <h3>+형</h3>
            </div>
            <div class="select-box-line">
              <img
                src="${path}/resources/img/main-png/선/no-background/5.png" data-value="기타"
              />
              <h3>기타</h3>
            </div>
          </div>
        </div>
      </div>
      <input type="submit" id="submit-button">
    </form>
    <form method="get" action="detailpage.html">
      <div id="result_box">
        <div class="card" style="width: 32rem">
          <img src="..." class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card" style="width: 32rem">
          <img src="..." class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card" style="width: 32rem">
          <img src="..." class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        <div class="card" style="width: 32rem">
          <img src="..." class="card-img-top" alt="..." />
          <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <p class="card-text">
              Some quick example text to build on the card title and make up the
              bulk of the card's content.
            </p>
            <a href="#" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
      </div>
    </form>
    <footer
      class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top"
    >
      <div class="col-md-4 d-flex align-items-center">
        <a
          href="/"
          class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1"
        >
          <svg class="bi" width="30" height="24">
            <use xlink:href="#bootstrap" />
          </svg>
        </a>
        <span class="mb-3 mb-md-0 text-muted"
          >&copy; Make, 2023 FiveGuys 4 Team
        </span>
      </div>
    </footer>
    
  </body>
  <script src="${path}/resources/js/mode-page.js"></script>
</html>
