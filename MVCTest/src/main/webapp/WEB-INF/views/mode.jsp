<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
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
              <img src="../img/Pill_32px.png" alt="Pill" />
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
    <img src="../img/main_img.png" alt="메인이미지" width="100%" />
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
      <div id="shape_search_box">
        <h2>약 모양으로 검색</h2>
        <img src="../img/med_char.png" />
        <div style="display: flex; align-items: end">
          <div id="med_char_input">
            <div class="select-box">
              <i class="fa-solid fa-solid fa-shapes fa-2xl"></i>
              <p>모양</p>
            </div>
            <div class="select-box">
              <i class="fa-solid fa-droplet fa-2xl"></i>
              <p>색상</p>
            </div>
            <div class="select-box">
              <i class="fa-solid fa-capsules fa-2xl"></i>
              <p>제형</p>
            </div>
            <div class="select-box">
              <i class="fa-solid fa-light fa-tablets fa-2xl"></i>
              <p>분할선</p>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-shape">
              <img src="../img/circle.png" />
              <h3>원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/eclipse.png" />
              <h3>타원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/rectangle.png" />
              <h3>장방형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/semiCircle.png" />
              <h3>반원형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/triangle.png" />
              <h3>삼각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/square.png" />
              <h3>사각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/rhombus.png" />
              <h3>마름모</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/pentagon.png" />
              <h3>오각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/hexagon.png" />
              <h3>육각형</h3>
            </div>
            <div class="select-box-shape">
              <img src="../img/octagon.png" />
              <h3>팔각형</h3>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/1.png" />
              <h1>전체</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/2.png" />
              <h1>하양</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/3.png" />
              <h1>노랑</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/4.png" />
              <h1>주황</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/5.png" />
              <h1>분홍</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/6.png" />
              <h1>빨강</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/7.png" />
              <h1>갈색</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/8.png" />
              <h1>연두</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/9.png" />
              <h1>초록</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/10.png" />
              <h1>청록</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/11.png" />
              <h1>파랑</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/12.png" />
              <h1>남색</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/13.png" />
              <h1>자주</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/14.png" />
              <h1>보라</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/15.png" />
              <h1>회색</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/16.PNG" />
              <h1>검정</h1>
            </div>
            <div class="select-box-color">
              <img src="../img/main-png/색깔/no-background/17.png" />
              <h1>투명</h1>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-formulation">
              <img src="../img/main-png/재질/no-background/1.png" />
              <h3>전체</h3>
            </div>
            <div class="select-box-formulation">
              <img src="../img/main-png/재질/no-background/2.png" />
              <h3>정제류</h3>
            </div>
            <div class="select-box-formulation">
              <img src="../img/main-png/재질/no-background/3.png" />
              <h3>경질캡슐</h3>
            </div>
            <div class="select-box-formulation">
              <img src="../img/main-png/재질/no-background/4.png" />
              <h3>연질캡슐</h3>
            </div>
          </div>
          <div class="detail-view-box hidden">
            <div class="select-box-line">
              <img src="../img/main-png/선/no-background/1.png" />
              <h3>전체</h3>
            </div>
            <div class="select-box-line">
              <img src="../img/main-png/선/no-background/2.png" />
              <h3>없음</h3>
            </div>
            <div class="select-box-line">
              <img src="../img/main-png/선/no-background/3.png" />
              <h3>-형</h3>
            </div>
            <div class="select-box-line">
              <img src="../img/main-png/선/no-background/4.png" />
              <h3>+형</h3>
            </div>
            <div class="select-box-line">
              <img src="../img/main-png/선/no-background/5.PNG" />
              <h3>기타</h3>
            </div>
          </div>
        </div>
      </div>
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
