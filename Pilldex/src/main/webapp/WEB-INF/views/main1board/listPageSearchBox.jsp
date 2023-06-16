<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="author" content="hbi">

<link rel="stylesheet" href="../resources/css/main-css/search_list.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../resources/css/main-css/med.css">
<link rel="stylesheet" href="../resources/css/main-css/arrow.css">
<link rel="stylesheet" href="../resources/css/main-css/medtable.css">
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
								src="../resources/img/main-png/icon2.png"
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
	<div  class="container">
		<div
			style="display: table; width: 100%; height: 120px; background-image: url(../resources/img/main-png/BG.png); background-size: cover; background-position: center;">
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
								<td rowspan="2"><input type="submit" value="로그인"
									style="height: 50px;"></td>
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
				<img alt="" src="../resources/img/main-png/icon.png"
					style="width: 20px; height: 15px; margin-left: 10px"> |의약품 정보
				또는 약모양으로 찾아볼 수 있어요
			</div>
			<form>
				<div
					style="height: 50px; border: 1px solid white; border-bottom-color: black">
					<div style="margin-top: 15px; display: flex;">

						&nbsp;&nbsp; 약 정보로 검색 &nbsp;&nbsp; 
						<input class=search_into
							type="text"  name = "keyword" value="${page.keyword}"
							placeholder="약 이름 또는 성분 등으로 검색해 보세요." 
							style="width: 600px;"> 
						<button type="submit" id="pill_Nsearch">검색하기</button>
						
						<script type="text/javascript">
						document.getElementById("pill_Nsearch").onclick = function () {

						  let keyword =  document.getElementsByName("keyword")[0].value;
						  let keyword_print = document.getElementsByName("keyword_print")[0].value;
						  let keyword_shape = document.querySelector('input[name="med_mod"]:checked')[0].value;
						  let keyword_color = document.querySelector('input[name="med_color"]:checked')[0].value;
						  let keyword_chart = document.querySelector('input[name="med_texture"]:checked')[0].value;
						  let keyword_line =  document.querySelector('input[name="med_line"]:checked')[0].value;
						  
						  location.href = "/pilldex/main1board/listPageSearchBox.do?num=1" + 
						      "&keyword=" + keyword;+
						      "$keyword_print=" + keyword_print;+
						      "&keyword_shape=" + keyword_shape;+
						      "&keyword_color=" + keyword_color;+
						      "&keyword_chart=" + keyword_chart;+
						      "&keyword_line =" + keyword_line; };
						</script>
                        
						
					</div>
					
					
					

				</div>
            </form>
            <form name="search_pill_mod_form" onsubmit="return false;">
				<div style="margin-top: 15px">
					&nbsp;약 모양으로 검색&nbsp;<input type="text" name = "keword_print" value = "${page.keyword_print}"
						placeholder="식별문자(약의 앞면이나 뒷면의 문자)로 검색해 보세요." style="width: 600px;">
				</div>
				
				<div id="myDIV"
					style="overflow: hidden; width: 710px; white-space: nowrap; margin: auto; margin-top: 20px">
					<div class="select" style="display: inline-flex;">
						<input type="radio" id="med_mod1" name="med_mod" value=" " checked="checked">
						<label for="med_mod1"
							style="background-image: url('../resources/img/main-png/모양/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						
						<input type="radio" id="med_mod2" name="med_mod" value="원형">
						<label for="med_mod2"
							style="background-image: url('../resources/img/main-png/모양/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						
						<input type="radio" id="med_mod3" name="med_mod" value="타원형">
						<label for="med_mod3"
							style="background-image: url('../resources/img/main-png/모양/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>

						<button onclick="prescroll()" id="pre1"
							style="width: 70px; height: 70px; display: inline-block; display: none; background-color: white; border-color: transparent;">
							<img src="../resources/img/main-png/pre_arrow.png"
								style="width: 70px; height: 70px;">
						</button>

						<input type="radio" id="med_mod4" name="med_mod" value="반원형">
						<label for="med_mod4"
							style="background-image: url('../resources/img/main-png/모양/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod5" name="med_mod" value="장방형">
						<label for="med_mod5"
							style="background-image: url('../resources/img/main-png/모양/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod6" name="med_mod" value="삼각형">
						<label for="med_mod6"
							style="background-image: url('../resources/img/main-png/모양/6.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod7" name="med_mod" value="사각형">
						<label for="med_mod7"
							style="background-image: url('../resources/img/main-png/모양/7.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod8" name="med_mod" value="마름모형">
						<label for="med_mod8"
							style="background-image: url('../resources/img/main-png/모양/8.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> 
						<input type="radio" id="med_mod9" name="med_mod" value="오각형">
						<label for="med_mod9"
							style="background-image: url('../resources/img/main-png/모양/9.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>


						<button onclick="newxtscroll();" id="next1"
							style="width: 70px; height: 70px; display: inline-block; background-color: white; border-color: transparent;">
							<img src="../resources/img/main-png/next_arrow.png"
								style="width: 70px; height: 70px;">
						</button>




						<input type="radio" id="med_mod10" name="med_mod"
							value="육각형"> <label for="med_mod10"
							style="background-image: url('../resources/img/main-png/모양/10.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> <input type="radio" id="med_mod11" name="med_mod"
							value="팔각형"> <label for="med_mod11"
							style="background-image: url('../resources/img/main-png/모양/11.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label> <input type="radio" id="med_mod12" name="med_mod"
							value="기타"> <label for="med_mod12"
							style="background-image: url('../resources/img/main-png/모양/12.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
					</div>
				</div>

				<div id="myDIV2"
					style="overflow: hidden; width: 710px; white-space: nowrap; margin: auto; margin-top: 20px">
					<div class="select" style="display: inline-flex;">
						<div>
							<input type="radio" id="med_coclor1" name="med_coclor" checked="checked"
								value=""> <label for="med_coclor1"
								style="background-image: url('../resources/img/main-png/색깔/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">색상</p>
						</div>

						<div>
							<input type="radio" id="med_coclor2" name="med_coclor"
								value="하양"> <label for="med_coclor2"
								style="background-image: url('../resources/img/main-png/색깔/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">하양</p>
						</div>

						<div>
							<input type="radio" id="med_coclor3" name="med_coclor"
								value="노랑"> <label for="med_coclor3"
								style="background-image: url('../resources/img/main-png/색깔/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">노랑</p>
						</div>

						<div>
							<input type="radio" id="med_coclor4" name="med_coclor"
								value="주황"> <label for="med_coclor4"
								style="background-image: url('../resources/img/main-png/색깔/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">주황</p>
						</div>

						<div>
							<input type="radio" id="med_coclor5" name="med_coclor"
								value="분홍"> <label for="med_coclor5"
								style="background-image: url('../resources/img/main-png/색깔/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">분홍</p>
						</div>

						<div>
							<input type="radio" id="med_coclor6" name="med_coclor"
								value="빨강"> <label for="med_coclor6"
								style="background-image: url('../resources/img/main-png/색깔/6.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">빨강</p>
						</div>

						<div>
							<input type="radio" id="med_coclor7" name="med_coclor"
								value="갈색"> <label for="med_coclor7"
								style="background-image: url('../resources/img/main-png/색깔/7.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">갈색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor8" name="med_coclor"
								value="연두"> <label for="med_coclor8"
								style="background-image: url('../resources/img/main-png/색깔/8.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">연두</p>
						</div>

						<button onclick="prescroll2()" id="pre2"
							style="width: 70px; height: 70px; display: inline-block; display: none; background-color: white; border-color: transparent;">
							<img src="../resources/img/main-png/pre_arrow.png"
								style="width: 70px; height: 70px;">
						</button>

						<div>
							<input type="radio" id="med_coclor9" name="med_coclor"
								value="초록"> <label for="med_coclor9"
								style="background-image: url('../resources/img/main-png/색깔/9.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">초록</p>
						</div>


						<button onclick="newxtscroll2();" id="next2"
							style="width: 70px; height: 70px; display: inline-block; background-color: white; border-color: transparent;">
							<img src="../resources/img/main-png/next_arrow.png"
								style="width: 70px; height: 70px;">
						</button>



						<div>
							<input type="radio" id="med_coclor10" name="med_coclor"
								value=청록> <label for="med_coclor10"
								style="background-image: url('../resources/img/main-png/색깔/10.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">청록</p>
						</div>

						<div>
							<input type="radio" id="med_coclor11" name="med_coclor"
								value="파랑"> <label for="med_coclor11"
								style="background-image: url('../resources/img/main-png/색깔/11.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">파랑</p>
						</div>

						<div>
							<input type="radio" id="med_coclor12" name="med_coclor"
								value="남색"> <label for="med_coclor12"
								style="background-image: url('../resources/img/main-png/색깔/12.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">남색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor13" name="med_coclor"
								value="자주"> <label for="med_coclor13"
								style="background-image: url('../resources/img/main-png/색깔/13.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">자주</p>
						</div>

						<div>
							<input type="radio" id="med_coclor14" name="med_coclor"
								value="보라"> <label for="med_coclor14"
								style="background-image: url('../resources/img/main-png/색깔/14.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">보라</p>
						</div>

						<div>
							<input type="radio" id="med_coclor15" name="med_coclor"
								value="회색"> <label for="med_coclor15"
								style="background-image: url('../resources/img/main-png/색깔/15.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">회색</p>
						</div>

						<div>
							<input type="radio" id="med_coclor16" name="med_coclor"
								value="검정"> <label for="med_coclor16"
								style="background-image: url('../resources/img/main-png/색깔/16.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">검정</p>
						</div>

						<div>
							<input type="radio" id="med_coclor17" name="med_coclor"
								value="투명"> <label for="med_coclor17"
								style="background-image: url('../resources/img/main-png/색깔/17.png'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
							</label>
							<p style="text-align: center; font-weight: 800">투명</p>
						</div>


					</div>
				</div>

				<div class="select"
					style="display: flex; overflow: hidden; margin-left: 44px; margin-top: 20px; width: 710;">
					<div>
						<input type="radio" id="med_texture1" name="med_texture" checked="checked"
							value=""> <label for="med_texture1"
							style="background-image: url('../resources/img/main-png/재질/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">제질</p>
					</div>

					<div>
						<input type="radio" id="med_texture2" name="med_texture"
							value="정제"> <label for="med_texture2"
							style="background-image: url('../resources/img/main-png/재질/2.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">정제류</p>
					</div>

					<div>
						<input type="radio" id="med_texture3" name="med_texture"
							value="경질"> <label for="med_texture3"
							style="background-image: url('../resources/img/main-png/재질/3.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">경질캡슐</p>
					</div>

					<div>
						<input type="radio" id="med_texture4" name="med_texture"
							value="연질"> <label for="med_texture4"
							style="background-image: url('../resources/img/main-png/재질/4.jpg'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px">
						</label>
						<p style="text-align: center; font-weight: 800">연질캡슐</p>
					</div>
				</div>

				<div class="select"
					style="display: flex; overflow: hidden; margin-left: 44px; margin-top: 20px; width: 710;">

					<div>
						<input type="radio" id="med_line1" name="med_line" checked="checked"
							value=""> <label for="med_line1"
							style="background-image: url('../resources/img/main-png/선/1.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">분할선</p>
					</div>
					<div>
						<input type="radio" id="med_line2" name="med_line"
							value="없음"> <label for="med_line2"
							style="background-image: url('../resources/img/main-png/선/2.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">없음</p>
					</div>
					<div>
						<input type="radio" id="med_line3" name="med_line"
							value="-"> <label for="med_line3"
							style="background-image: url('../resources/img/main-png/선/3.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">(-)형</p>
					</div>
					<div>
						<input type="radio" id="med_line4" name="med_line"
							value="+"> <label for="med_line4"
							style="background-image: url('../resources/img/main-png/선/4.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">(+)형</p>
					</div>

					<div>
						<input type="radio" id="med_line5" name="med_line"
							value="기타"> <label for="med_line5"
							style="background-image: url('../resources/img/main-png/선/5.PNG'); background-position: top; background-repeat: no-repeat; background-size: 70px 70px;">
						</label>
						<p style="text-align: center; font-weight: 800">기타</p>
					</div>
				</div>

				<div
					style="text-align: center; margin-bottom: 30px; margin-top: 10px;">
					<button type="button" id = "pill_search_Box">검색하기</button> 
					<script type="text/javascript">
                    document.getElementById("pill_search_Box").onclick = function () {
                       
                    let keyword = document.getElementsByName("keyword")[0].value;
                    let keyword_print = document.getElementsByName("keyword_print")[0].value;
                    let keyword_shape = document.querySelector('input[type=radio][name="med_mod"]:checked').value;
                    let keyword_color = document.querySelector('input[type=radio][name="med_coclor"]:checked').value;
                    let keyword_chart = document.querySelector('input[type=radio][name="med_texture"]:checked').value;
                    let keyword_line =  document.querySelector('input[type=radio][name="med_line"]:checked').value;
                  location.href = "/pilldex/main1board/listPageSearchBox.do?num=1" 
                  +"&keyword=" + keyword;
                  +"&keyword_print=" + keyword_print;
                  +"&keyword_shape=" + keyword_shape;
                  +"&keyword_color=" + keyword_color;
                  +"&keyword_chart=" + keyword_chart;
                  +"&keyword_line=" + keyword_line;};</script>
					
					<input type="reset"
						value="취소하기">	
				</div>
				
			</form>
		</fieldset>
	</div>
  <div>
	<div class="search_list_table">
		<c:forEach var="list" items="${pillVO}">
			<button class="search_list" onclick="window.open('#')">
				<img class="search_list_img" src="${list.item_image}">
				<ul style="list-style: none; 
					 text-align: left; padding-left: 0; margin-top: 10px; height: 100%">
					<li>약품이름:<span class="textlist">${list.item_name}</span></li>
					<li>약품 제약사:<span class="textlist">${list.entp_name}</span></li>
					<li>사용용도:<span class="textlist">${list.efcy_qesitm}</span></li>
					<li>복용법:<span class="textlist">${list.use_method_qesitm}</span></li
					><li>주의사항:<span class="textlist">${list.atpn_qesitm}</span></li>
					<li>보관방법:<span class="textlist">${list.deposit_method_qesitm}</span></li>
				</ul>			
			</button>
		</c:forEach>
	</div>
   <div style="text-align: center; margin: auto;">
	 <c:if test="${page.prev}">
		 <span>[ <a href="/pilldex/main1board/listPageSearchBox.do?num=${page.startPageNum - 1}${page.searchTypeKeywordBox}">이전</a> ]</span>
		</c:if>
		
		<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		 <span>
		 
		  <c:if test="${select != num}">
		   <a href="/pilldex/main1board/listPageSearchBox.do?num=${num}${page.searchTypeKeywordBox}">${num}</a>
		  </c:if>    
		  
		  <c:if test="${select == num}">
		   <b>${num}</b>
		  </c:if>
		    
		 </span>
		</c:forEach>
		
		<c:if test="${page.next}">
		 <span>[ <a href="/pilldex/main1board/listPageSearchBox.do?num=${page.endPageNum + 1}${page.searchTypeKeywordBox}">다음</a> ]</span>
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
	window.onload = function() {

		if (getCookie("id")) { // getCookie함수로 id라는 이름의 쿠키를 불러와서 있을경우
			document.loginForm.userid.value = getCookie("id"); //input 이름이 id인곳에 getCookie("id")값을 넣어줌
			document.loginForm.idsave.checked = true; // 체크는 체크됨으로
		}

	}

	function setCookie(name, value, expiredays) //쿠키 저장함수
	{
		var todayDate = new Date();
		todayDate.setDate(todayDate.getDate() + expiredays);
		document.cookie = name + "=" + escape(value) + "; path=/; expires="
				+ todayDate.toGMTString() + ";"
	}

	function getCookie(Name) { // 쿠키 불러오는 함수
		var search = Name + "=";
		if (document.cookie.length > 0) { // if there are any cookies
			offset = document.cookie.indexOf(search);
			if (offset != -1) { // if cookie exists
				offset += search.length; // set index of beginning of value
				end = document.cookie.indexOf(";", offset); // set index of end of cookie value
				if (end == -1)
					end = document.cookie.length;
				return unescape(document.cookie.substring(offset, end));
			}
		}
	}

	function sendit() {
		var frm = document.loginForm;
		if (!frm.userid.value) { //아이디를 입력하지 않으면.
			alert("아이디를 입력 해주세요!");
			frm.userid.focus();
			return;
		}
		if (!frm.pwd.value) { //패스워드를 입력하지 않으면.
			alert("패스워드를 입력 해주세요!");
			frm.pwd.focus();
			return;
		}

		if (document.loginForm.idsave.checked == true) { // 아이디 저장을 체크 하였을때
			setCookie("id", document.loginForm.userid.value, 7); //쿠키이름을 id로 아이디입력필드값을 7일동안 저장
		} else { // 아이디 저장을 체크 하지 않았을때
			setCookie("id", document.loginForm.userid.value, 0); //날짜를 0으로 저장하여 쿠키삭제
		}

		document.loginForm.submit(); //유효성 검사가 통과되면 서버로 전송.

	}
</script>

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
</html>
