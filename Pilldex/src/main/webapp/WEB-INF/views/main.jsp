<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript">
 history.replaceState({}, null, location.pathname); 
</script>          
<meta charset="UTF-8">
<meta name="author" content="hbi">

<link rel="stylesheet" href="resources/css/main-css/search_list.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="resources/css/main-css/med.css">
<link rel="stylesheet" href="resources/css/main-css/arrow.css">
<link rel="stylesheet" href="resources/css/main-css/medtable.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>

<style>
</style>
<title>Main</title>
</head>
<body>
	<div>
		<header>
			<nav class="py-2 bg-light border-bottom">
				<div class="container d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2 active" aria-current="page"> <img
								src="resources/img/main-png/icon2.png"
								style="width: 32px; height: 32px" alt="Pill"> &nbsp; <b>PillDex</b>
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
		</header>
	</div>
	<div  class="container" style="width: 1140px">
		<div
			style="display: table; width: 100%; height: 120px; background-image: url(resources/img/main-png/BG.png); background-size: cover; background-position: center;">
			<div
				style="float: left; margin-top: 10px; height: 100px; width: 560px; background-color: black; margin-left: 10px">
				<div>
					<table style="margin-left: 26px">
						<tr>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
							<td><input type="button" onclick="doaction"
								style="height: 50px; width: 50px; margin-top: 10px;"></td>
						</tr>
						<tr style="text-align: center;">
							<td><a href="#" id="top1"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top2"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top3"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top4"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top5"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top6"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top7"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top8"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top9"
								style="color: white; text-decoration-line: none;">알약</a></td>
							<td><a href="#" id="top10"
								style="color: white; text-decoration-line: none;">알약</a></td>
						</tr>
					</table>
				</div>
			</div>
			<div
				style="width: 260px; float: right; background-color: #ffffff; margin-right: 10px; margin-top: 10px; height: 100px; background-size: cover">
				<div style="margin-left: 10px">
					<form action="login.do" method="post">
						<input type="checkbox" name="idsave" value="saveOk"> <label
							for="checkId">아이디 저장</label><br>
						<table>
							<tr>
								<td><input type="text" name="userid" placeholder="아이디"></td>
								<td rowspan="2"><button type="button"
									style="height: 52px;">로그인</button></td>
							</tr>
							<tr>
								<td><input type="password" name="pwd" placeholder="패스워드"></td>
							</tr>
						</table>
					</form>
					&nbsp;<a href="#" style="text-decoration-line: none;">회원가입</a>
					&nbsp; <a href="#" style="text-decoration-line: none;">비번 찾기</a>
				</div>
			</div>
		</div>
		<fieldset
			style="width: 800px; margin:auto; margin-top:15px; border: 1px solid black;">
			<div style="margin-top: 10px">
				<img alt="" src="resources/img/main-png/icon.png"
					style="width: 20px; height: 15px; margin-left: 10px"> |의약품 정보
				또는 약모양으로 찾아볼 수 있어요
			</div>
			<form>
				<div
					style="height: 50px; border: 1px solid white; border-bottom-color: black">
					<div style="margin-top: 15px; display: flex;">

						&nbsp;&nbsp; 약 정보로 검색 &nbsp;&nbsp; 
						<input class=search_into
							type="text"  name = "keyword"  value="${page.keyword}"
							placeholder="약 이름 또는 성분 등으로 검색해 보세요." 
							style="width: 600px;"/> 
						<button type="button" id="pill_Nsearch">검색하기</button>
						
						<script type="text/javascript">
						document.getElementById("pill_Nsearch").onclick = function () {

						  let keyword = document.getElementsByName("keyword")[0].value;
                          let keyword_print = document.getElementsByName("keyword_print")[0].value;
                          
                          let keyword_shape = document.querySelector('input[name="med_mod"]:checked').value;
                          
                         
                          let keyword_color = document.querySelector('input[name="med_coclor"]:checked').value;
                          
                         
                          let keyword_chart = document.querySelector('input[name="med_texture"]:checked').value;
                          
                         
                          let keyword_line =  document.querySelector('input[name="med_line"]:checked').value;
						  
						  location.href = "/pilldex/main.do?num=1" + 
						      "&keyword=" + keyword;
							  +"&keyword_print=" + keyword_print
	                          +"&keyword_shape=" + keyword_shape
	                          +"&keyword_color=" + keyword_color
	                          +"&keyword_chart=" + keyword_chart
	                          +"&keyword_line=" + keyword_line;
						   
						      };
						</script>
                        
						
					</div>
					
					
					

				</div>
            </form>
            <form name="search_pill_mod_form" onsubmit="return false;">
			<div>
				
                    
				<div style="margin-top: 15px">
					&nbsp;약 모양으로 검색&nbsp;<input type="text" name = "keyword_print" value="${page.keyword_print}"
						placeholder="식별문자(약의 앞면이나 뒷면의 문자)로 검색해 보세요." style="width: 600px;">
				</div>
				
				<div id="myDIV"
					style="overflow: hidden; width: 710px; white-space: nowrap; margin: auto; margin-top: 20px">
					<div class="select" style="display: inline-flex;"  id = "mod_box">
						<input type="radio" id="med_mod1" name="med_mod" value="" checked="checked"
						  <c:if test="${page.keyword_shape eq ''}">checked</c:if> >
						<label for="med_mod1"
							style="background-image: url('resources/img/main-png/모양/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						
						<input type="radio" id="med_mod2" name="med_mod" value="원형"
						 <c:if test="${page.keyword_shape eq '원형'}">checked</c:if> >
						<label for="med_mod2"
							style="background-image: url('resources/img/main-png/모양/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						
						<input type="radio" id="med_mod3" name="med_mod" value="타원형"
						<c:if test="${page.keyword_shape eq '타원형'}">checked</c:if> >
						<label for="med_mod3"
							style="background-image: url('resources/img/main-png/모양/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>

						<button onclick="prescroll()" id="pre1"
							style="width: 70px; height: 70px; display: inline-block; display: none; background-color: white; border-color: transparent;">
							<img src="resources/img/main-png/pre_arrow.png"
								style="width: 70px; height: 70px;">
						</button>

						<input type="radio" id="med_mod4" name="med_mod" value="반원형"
						<c:if test="${page.keyword_shape eq '반원형'}">checked</c:if> >
						<label for="med_mod4"
							style="background-image: url('resources/img/main-png/모양/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod5" name="med_mod" value="장방형"
						<c:if test="${page.keyword_shape eq '장방형'}">checked</c:if> >
						<label for="med_mod5"
							style="background-image: url('resources/img/main-png/모양/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod6" name="med_mod" value="삼각형"
						<c:if test="${page.keyword_shape eq '삼각형'}">checked</c:if> >
						<label for="med_mod6"
							style="background-image: url('resources/img/main-png/모양/6.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod7" name="med_mod" value="사각형"
						<c:if test="${page.keyword_shape eq '사각형'}">checked</c:if> >
						<label for="med_mod7"
							style="background-image: url('resources/img/main-png/모양/7.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod8" name="med_mod" value="마름모형"
						<c:if test="${page.keyword_shape eq '마름모형'}">checked</c:if> >
						<label for="med_mod8"
							style="background-image: url('resources/img/main-png/모양/8.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod9" name="med_mod" value="오각형"
						<c:if test="${page.keyword_shape eq '오각형'}">checked</c:if> >
						<label for="med_mod9"
							style="background-image: url('resources/img/main-png/모양/9.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>


						<button onclick="newxtscroll();" id="next1"
							style="width: 70px; height: 70px; display: inline-block; background-color: white; border-color: transparent;">
							<img src="resources/img/main-png/next_arrow.png"
								style="width: 70px; height: 70px;">
						</button>




						<input type="radio" id="med_mod10" name="med_mod"
							value="육각형" <c:if test="${page.keyword_shape eq '육각형'}">checked</c:if> > <label for="med_mod10"
							style="background-image: url('resources/img/main-png/모양/10.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> <input type="radio" id="med_mod11" name="med_mod"
							value="팔각형" <c:if test="${page.keyword_shape eq '팔각형'}">checked</c:if> > <label for="med_mod11"
							style="background-image: url('resources/img/main-png/모양/11.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> <input type="radio" id="med_mod12" name="med_mod"
							value="기타" <c:if test="${page.keyword_shape eq '기타'}">checked</c:if> > <label for="med_mod12"
							style="background-image: url('resources/img/main-png/모양/12.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
					</div>
				</div>

				<div id="myDIV2"
					style="overflow: hidden; width: 710px; white-space: nowrap; margin: auto; margin-top: 20px">
					<div class="select" style="display: inline-flex;">
						<div>
							<input type="radio" id="med_coclor1" name="med_coclor" checked="checked"
								value="" <c:if test="${page.keyword_color eq ''}">checked</c:if> > <label for="med_coclor1"
								style="background-image: url('resources/img/main-png/색깔/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">색상</p>
						</div>

						<div>
							<input type="radio" id="med_coclor2" name="med_coclor"
								value="하양" <c:if test="${page.keyword_color eq '하양'}">checked</c:if> > <label for="med_coclor2"
								style="background-image: url('resources/img/main-png/색깔/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">하양</p>
						</div>

						<div>
							<input type="radio" id="med_coclor3" name="med_coclor"
								value="노랑" <c:if test="${page.keyword_color eq '노랑'}">checked</c:if> > <label for="med_coclor3"
								style="background-image: url('resources/img/main-png/색깔/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">노랑</p>
						</div>

						<div>
							<input type="radio" id="med_coclor4" name="med_coclor"
								value="주황" <c:if test="${page.keyword_color eq '주황'}"></c:if> > <label for="med_coclor4"
								style="background-image: url('resources/img/main-png/색깔/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">주황</p>
						</div>

						<div>
							<input type="radio" id="med_coclor5" name="med_coclor"
								value="분홍" <c:if test="${page.keyword_color eq '분홍'}">checked</c:if> > <label for="med_coclor5"
								style="background-image: url('resources/img/main-png/색깔/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">분홍</p>
						</div>

						<div>
							<input type="radio" id="med_coclor6" name="med_coclor"
								value="빨강" <c:if test="${page.keyword_color eq '빨강'}">checked</c:if> > <label for="med_coclor6"
								style="background-image: url('resources/img/main-png/색깔/6.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">빨강</p>
						</div>

						<div>
							<input type="radio" id="med_coclor7" name="med_coclor"
								value="갈색" <c:if test="${page.keyword_color eq '갈색'}">checked</c:if> > <label for="med_coclor7"
								style="background-image: url('resources/img/main-png/색깔/7.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">갈색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor8" name="med_coclor"
								value="연두" <c:if test="${page.keyword_color eq '연두'}">checked</c:if> > <label for="med_coclor8"
								style="background-image: url('resources/img/main-png/색깔/8.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">연두</p>
						</div>

						<button onclick="prescroll2()" id="pre2"
							style="width: 70px; height: 70px; display: inline-block; display: none; background-color: white; border-color: transparent;">
							<img src="resources/img/main-png/pre_arrow.png"
								style="width: 70px; height: 70px;">
						</button>

						<div>
							<input type="radio" id="med_coclor9" name="med_coclor"
								value="초록" <c:if test="${page.keyword_color eq '초록'}">checked</c:if> > <label for="med_coclor9"
								style="background-image: url('resources/img/main-png/색깔/9.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">초록</p>
						</div>


						<button onclick="newxtscroll2();" id="next2"
							style="width: 70px; height: 70px; display: inline-block; background-color: white; border-color: transparent;">
							<img src="resources/img/main-png/next_arrow.png"
								style="width: 70px; height: 70px;">
						</button>



						<div>
							<input type="radio" id="med_coclor10" name="med_coclor"
								value=청록 <c:if test="${page.keyword_color eq '청록'}">checked</c:if> > <label for="med_coclor10"
								style="background-image: url('resources/img/main-png/색깔/10.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">청록</p>
						</div>

						<div>
							<input type="radio" id="med_coclor11" name="med_coclor"
								value="파랑" <c:if test="${page.keyword_color eq '파랑'}">checked</c:if> > <label for="med_coclor11"
								style="background-image: url('resources/img/main-png/색깔/11.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">파랑</p>
						</div>

						<div>
							<input type="radio" id="med_coclor12" name="med_coclor"
								value="남색" <c:if test="${page.keyword_color eq '남색'}"></c:if> > <label for="med_coclor12"
								style="background-image: url('resources/img/main-png/색깔/12.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">남색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor13" name="med_coclor"
								value="자주" <c:if test="${page.keyword_color eq '자주'}">checked</c:if> > <label for="med_coclor13"
								style="background-image: url('resources/img/main-png/색깔/13.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">자주</p>
						</div>

						<div>
							<input type="radio" id="med_coclor14" name="med_coclor"
								value="보라" <c:if test="${page.keyword_color eq '보라'}"></c:if> > <label for="med_coclor14"
								style="background-image: url('resources/img/main-png/색깔/14.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">보라</p>
						</div>

						<div>
							<input type="radio" id="med_coclor15" name="med_coclor"
								value="회색" <c:if test="${page.keyword_color eq '회색'}">checked</c:if> > <label for="med_coclor15"
								style="background-image: url('resources/img/main-png/색깔/15.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">회색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor16" name="med_coclor"
								value="검정" <c:if test="${page.keyword_color eq '검정'}">checked</c:if> > <label for="med_coclor16"
								style="background-image: url('resources/img/main-png/색깔/16.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">검정</p>
						</div>

						<div>
							<input type="radio" id="med_coclor17" name="med_coclor"
								value="투명" <c:if test="${page.keyword_color eq '투명'}">checked</c:if> > <label for="med_coclor17"
								style="background-image: url('resources/img/main-png/색깔/17.png'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">투명</p>
						</div>


					</div>
				</div>

				<div class="select"
					style="display: flex; overflow: hidden; margin-left: 44px; margin-top: 20px; width: 710;">
				
				    <div>
						<input type="radio" id="med_texture1" name="med_texture" checked="checked"
							value="" <c:if test="${page.keyword_chart eq ''}">checked</c:if> > <label for="med_texture1"
							style="background-image: url('resources/img/main-png/재질/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">전체</p>
					</div>

					<div>
						<input type="radio" id="med_texture2" name="med_texture" 
							value="정제" <c:if test="${page.keyword_chart eq '정제'}">checked</c:if> > <label for="med_texture2"
							style="background-image: url('resources/img/main-png/재질/2.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">정제형</p>
				    </div>
                    
                    <div>
						<input type="radio" id="med_texture3" name="med_texture"
							value="경질" <c:if test="${page.keyword_chart eq '경질'}"></c:if> > <label for="med_texture3"
							style="background-image: url('resources/img/main-png/재질/3.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800"경질형></p>
				   </div>
    
				    <div>
						<input type="radio" id="med_texture4" name="med_texture"
							value="연질" <c:if test="${page.keyword_chart eq '연질'}">checked</c:if> > <label for="med_texture4"
							style="background-image: url('resources/img/main-png/재질/4.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">연질형</p>
					</div>  
				</div>	
				

				<div class="select"
					style="display: flex; overflow: hidden; margin-left: 44px; margin-top: 20px; width: 710;">

					<div>
						<input type="radio" id="med_line1" name="med_line"  checked="checked"
							value="" <c:if test="${page.keyword_chart eq ''}">checked</c:if> > <label for="med_line1"
							style="background-image: url('resources/img/main-png/선/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">전체</p>
				    </div>
				    
				    <div>
						<input type="radio" id="med_line2" name="med_line"
							value="null" <c:if test="${page.keyword_chart eq null}">checked</c:if> > <label for="med_line2"
							style="background-image: url('resources/img/main-png/선/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">없음</p>
					</div>
					
					<div>
						<input type="radio" id="med_line3" name="med_line"
							value="-" <c:if test="${page.keyword_chart eq '-'}">checked</c:if> > <label for="med_line3"
							style="background-image: url('resources/img/main-png/선/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">(-)형</p>
					</div>
					
					<div>
						<input type="radio" id="med_line4" name="med_line"
							value="+" <c:if test="${page.keyword_chart eq '+'}">checked</c:if> > <label for="med_line4"
							style="background-image: url('resources/img/main-png/선/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">(+)형</p>
					</div>

					<div>
						<input type="radio" id="med_line5" name="med_line" 
							value="기타" <c:if test="${page.keyword_chart eq '기타'}">checked</c:if> > <label for="med_line5"
							style="background-image: url('resources/img/main-png/선/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">기타</p>
					</div>
				</div>
				    <div style="text-align: center; margin-top: 10px; margin-bottom: 10xp ">
						<button type="button" id = "pill_search_Box" style="height: 50px; width: 100px">검색하기</button> 
						<button type="button" id = "pill_search_Box_reset" style="height: 50px; width: 100px">취소하기</button>
			         </div>	
				</div>
				
			</form>
		</fieldset>
	</div>
  <div>
	<div class="search_list_table" style="text-overflow: ellipsis;">
		<c:forEach var="list" items="${list}">
			<button class="search_list" onclick="window.open('#')" style="overflow-y: scroll;">
				<img class="search_list_img" src="${list.item_image}">
				<ul style="list-style: none; 
					 text-align: left; padding-left: 0; margin-top: 10px; height: 100%">
					<li>약품이름:<span>${list.item_name}</span></li>
					<li>약품 제약사:<span>${list.entp_name}</span></li>
					<li>사용용도:<span>${list.efcy_qesitm}</span></li>
					<li>복용법:<span>${list.use_method_qesitm}</span></li
					><li>주의사항:<span>${list.atpn_qesitm}</span></li>
					<li>보관방법:<span>${list.deposit_method_qesitm}</span></li>
				</ul>			
			</button>
		</c:forEach>
	</div>
   <div style="text-align: center; margin: auto;">
	 <c:if test="${page.prev}">
		 <span>[<a href="/pilldex/main.do?num=${page.startPageNum - 1}&keyword=${page.keyword}&keyword_print=${page.keyword_print}&keyword_shape=${page.keyword_shape}&keyword_color=${page.keyword_color}&keyword_chart=${page.keyword_chart}&keyword_line=${page.keyword_line}">이전</a>]</span>
		</c:if>
		
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		 <span>
		 
		  <c:if test="${select != num}">
		   <a href="/pilldex/main.do?num=${num}&keyword=${page.keyword}&keyword_print=${page.keyword_print}&keyword_shape=${page.keyword_shape}&keyword_color=${page.keyword_color}&keyword_chart=${page.keyword_chart}&keyword_line=${page.keyword_line}">${num}</a>
		  </c:if>    
		  
		  <c:if test="${select == num}">
		   <b>${num}</b>
		  </c:if>
		    
		 </span>
		</c:forEach>
		
		<c:if test="${page.next}">
		 <span>[<a href="/pilldex/main.do?num=${page.endPageNum + 1}&keyword=${page.keyword}&keyword_print=${page.keyword_print}&keyword_shape=${page.keyword_shape}&keyword_color=${page.keyword_color}&keyword_chart=${page.keyword_chart}&keyword_line=${page.keyword_line}">다음</a>]</span>
		</c:if>
	</div>
    </div>
</body>

<footer
	class="d-flex flex-wrap justify-content-between align-items-center py-3 my-4 border-top">
	<div class="col-md-4 d-flex align-items-center">
		<a href="/"
			class="mb-3 me-2 mb-md-0 text-muted text-decoration-none lh-1"> <svg
				class="bi" width="30" height="24">
				<use xlink:href="#bootstrap" /></svg>
		</a> <span class="mb-3 mb-md-0 text-muted">&copy; Make, 2023
			FiveGuys 4 Team </span>
	</div>
</footer>


<script>
	function newxtscroll() {
		const element = document.getElementById("myDIV");
		element.scrollLeft += 1000

		const btn1 = document.getElementById('next1');

		// btn1 숨기기 (display: none)
		if (next1.style.display !== 'none') {
			next1.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			next1.style.display = 'inline-block';
		}

		if (pre1.style.display !== 'none') {
			pre1.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			pre1.style.display = 'inline-block';
		}

	}
</script>
<script>
	function prescroll() {
		const element = document.getElementById("myDIV");
		element.scrollLeft = -1000

		const btn1 = document.getElementById('next1');

		// btn1 숨기기 (display: none)
		if (next1.style.display !== 'none') {
			next1.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			next1.style.display = 'inline-block';
		}

		if (pre1.style.display !== 'none') {
			pre1.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			pre1.style.display = 'inline-block';
		}
	}
</script>
<script>
	function newxtscroll2() {
		const element = document.getElementById("myDIV2");
		element.scrollLeft += 1000

		const btn1 = document.getElementById('next2');

		// btn1 숨기기 (display: none)
		if (next2.style.display !== 'none') {
			next2.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			next2.style.display = 'inline-block';
		}

		if (pre2.style.display !== 'none') {
			pre2.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			pre2.style.display = 'inline-block';
		}

	}
</script>
<script>
	function prescroll2() {
		const element = document.getElementById("myDIV2");
		element.scrollLeft = -1000

		const btn1 = document.getElementById('next2');

		// btn1 숨기기 (display: none)
		if (next2.style.display !== 'none') {
			next2.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			next2.style.display = 'inline-block';
		}

		if (pre2.style.display !== 'none') {
			pre2.style.display = 'none';
		}
		// btn` 보이기 (display: block)
		else {
			pre2.style.display = 'inline-block';
		}
	}
</script>



<script type="text/javascript">
  document.getElementById("pill_search_Box").onclick = function () {
     
  let keyword = "";
  let keyword_print = document.getElementsByName("keyword_print")[0].value;
  
  let keyword_shape = document.querySelector('input[name="med_mod"]:checked').value;
  
 
  let keyword_color = document.querySelector('input[name="med_coclor"]:checked').value;
  
 
  let keyword_chart = document.querySelector('input[name="med_texture"]:checked').value;
  
 
  let keyword_line =  document.querySelector('input[name="med_line"]:checked').value;
  
  console.log ("keyword_line:"+keyword_line);

  location.href = "/pilldex/main.do?num=1" 
+"&keyword=" + keyword 
+"&keyword_print=" + keyword_print
+"&keyword_shape=" + keyword_shape
+"&keyword_color=" + keyword_color
+"&keyword_chart=" + keyword_chart
+"&keyword_line=" + keyword_line;
};
</script>
<script type="text/javascript">
  document.getElementById("pill_search_Box_reset").onclick = function () {
     
  let keyword       ="";
  let keyword_print ="";
  let keyword_shape ="";
  let keyword_color ="";
  let keyword_chart ="";
  let keyword_line  ="";  


  location.href = "/pilldex/main.do?num=1" 
+"&keyword=" 
+"&keyword_print=" + keyword_print
+"&keyword_shape=" + keyword_shape
+"&keyword_color=" + keyword_color
+"&keyword_chart=" + keyword_chart
+"&keyword_line=" + keyword_line;
};
</script>
</html>
