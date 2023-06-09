<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <!-- 부트스트랩 css -->
  <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
   -->
  <link href="resources/css/bootstrap/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  <script src="resources/js/bootstrap/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  
   <title>병원 약국 검색 </title>
  <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#table_body td {list-style: none;}
#table_body .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#table_body .item span {display: block;margin-top:4px;}
#table_body .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#table_body .item .info{padding:10px 0 10px 55px;}
#table_body .info .gray {color:#8a8a8a;}
#table_body .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#table_body .info .tel {color:#009900;}
#table_body .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#table_body .item .marker_1 {background-position: 0 -10px;}
#table_body .item .marker_2 {background-position: 0 -56px;}
#table_body .item .marker_3 {background-position: 0 -102px}
#table_body .item .marker_4 {background-position: 0 -148px;}
#table_body .item .marker_5 {background-position: 0 -194px;}
#table_body .item .marker_6 {background-position: 0 -240px;}
#table_body .item .marker_7 {background-position: 0 -286px;}
#table_body .item .marker_8 {background-position: 0 -332px;}
#table_body .item .marker_9 {background-position: 0 -378px;}
#table_body .item .marker_10 {background-position: 0 -423px;}
#table_body .item .marker_11 {background-position: 0 -470px;}
#table_body .item .marker_12 {background-position: 0 -516px;}
#table_body .item .marker_13 {background-position: 0 -562px;}
#table_body .item .marker_14 {background-position: 0 -608px;}
#table_body .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}

#table_body .item {text-align: left;} 

#category {position:absolute;top:10px;left:10px;border-radius: 5px; border:1px solid #909090;box-shadow: 0 1px 1px rgba(0, 0, 0, 0.4);background: #fff;overflow: hidden;z-index: 2;}
#category li {float:left;list-style: none;width:50px;border-right:1px solid #acacac;padding:6px 0;text-align: center; cursor: pointer;}
#category li.on {background: #eee;}
#category li:hover {background: #ffe6e6;border-left:1px solid #acacac;margin-left: -1px;}
#category li:last-child{margin-right:0;border-right:0;}
#category li span {display: block;margin:0 auto 3px;width:27px;height: 28px;}
#category li .category_bg {background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_category.png) no-repeat;}
#category li .bank {background-position: -10px 0;}
#category li .mart {background-position: -10px -36px;}
#category li .pharmacy {background-position: -10px -72px;}
#category li .oil {background-position: -10px -108px;}
#category li .cafe {background-position: -10px -144px;}
#category li .store {background-position: -10px -180px;}
#category li.on .category_bg {background-position-x:-46px;}
.placeinfo_wrap {position:absolute;bottom:28px;left:-150px;width:300px;}
.placeinfo {position:relative;width:100%;border-radius:6px;border: 1px solid #ccc;border-bottom:2px solid #ddd;padding-bottom: 10px;background: #fff;}
.placeinfo:nth-of-type(n) {border:0; box-shadow:0px 1px 2px #888;}
.placeinfo_wrap .after {content:'';position:relative;margin-left:-12px;left:50%;width:22px;height:12px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
.placeinfo a, .placeinfo a:hover, .placeinfo a:active{color:#fff;text-decoration: none;}
.placeinfo a, .placeinfo span {display: block;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
.placeinfo span {margin:5px 5px 0 5px;cursor: default;font-size:13px;}
.placeinfo .title {font-weight: bold; font-size:14px;border-radius: 6px 6px 0 0;margin: -1px -1px 0 -1px;padding:10px; color: #fff;background: #d95050;background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;}
.placeinfo .tel {color:#0f7833;}
.placeinfo .jibun {color:#999;font-size:11px;margin-top:0;}
	</style>  
</head>
<body>
	<header>
		<nav class="py-2 bg-light border-bottom">
			<div class="container d-flex flex-wrap">
				<ul class="nav me-auto">
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px">
						<a href="#" class="nav-link link-dark px-2 active" aria-current="page"> <img src="resources/img/Pill_32px.png" alt="Pill"> &nbsp; <b>PillDex</b>
					</a>
					</li>
				</ul>
				<ul class="nav" style="">
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2"><b>돋보기</b></a></li>
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2"><b>MAP</b></a></li>
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2"><b>로그인</b></a></li>
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2"><b>마이페이지</b></a></li>
					<li class="nav-item" style="margin-top: 0px; margin-bottom: 0px"><a href="#" class="nav-link link-dark px-2"><b>로그아웃</b></a></li>
				</ul>
			</div>
		</nav>
	</header>
	<main>
		<div class="container text-center">
			<!-- 안의 내용을 가운데 정렬하는 container 영역 -->
			<div class="row my-3">
				<!-------- 검색 영역 -------- 마진을 3을 준다. -->
				<div class="option">
					<form onsubmit="searchPlaces(1); return false;">
						<div class="row">
							<div class="col-md-10 col-sm-9 col-8">
								<input type="text" value="홍대입구역 병원" id="keyword" class="form-control">
							</div>
							<div class="col-md-2 col-sm-3 col-4">
								<button type="submit" class="btn btn-primary" style="width: 98%">검색하기</button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<div>
				<!---------- 카카오 지도 영역  ---------->
				<div class="map_wrap">
					<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
					<div id="menu_wrap" class="bg_white" style="display: none">
						<div class="option">
							<form>
								<button></button>
							</form>
						</div>
						<ul id="placesList"></ul>
					</div>
					<ul id="category" style="display: none">
						<li id="PM9" data-order="2"><span class="category_bg pharmacy"></span>약국</li>
						<li id="OL7" data-order="3"><span class="category_bg oil"></span> 주유소</li>
						<li id="CE7" data-order="4"><span class="category_bg cafe"></span> 카페</li>
						<li id="HP8" data-order="5"><span class="category_bg store"></span> 병원</li>
					</ul>
				</div>
			</div>
			<!---------- 버튼 영역  ---------->
			<div class="row m-1">
				<!-- 마진을 3을 준다. -->
				<button name="category" id="HP8" class="btn btn-primary col-xl-2 col-lg-3 col-md-3 col-sm-4 col-4 m-2" type="button">주소 즐겨찾기</button>
				<div class="col" style="text-align: left; margin-left: 10px;">
					<div class="form-check form-check-inline" style="padding-top: 15px;">
						<input onchange="onClick_Radio(this)" data-order="2" class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="HP8">
						<label class="form-check-label" for="inlineRadio1">병원</label>
					</div>
					<div class="form-check form-check-inline" style="padding-top: 15px;">
						<input onchange="onClick_Radio(this)" data-order="2" class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="PM9">
						<label class="form-check-label" for="inlineRadio2">약국</label>
					</div>
				</div>
			</div>
			<table class="table m-1"> <!-- 주소목록 영역 -->				
				<thead class="table-light">
					<tr>
						<th scope="col"></th>
						<th scope="col">이름</th>
						<th scope="col">주소</th>
						<th scope="col">전화번호</th>
					</tr>
				</thead>
				<tbody id="table_body"> </tbody>
			</table> <!-- 주소목록 영역 종료 -->			
			<div id="pagination"></div>
			
			<form action="send2" method="POST" style="display: none">
                <input name="변수명" value = "값">
            </form>
		</div> <!---------- container 영역 종료 ---------->		
	</main>
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

	<!-- 카카오 지도 API -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d02a38310f79c975c4c8ce6efeda966d&libraries=services"></script>
	<script>
		//마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
		var placeOverlay = new kakao.maps.CustomOverlay({ zIndex : 1 }), contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
		markers = [], // 마커를 담을 배열입니다
		currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다 
		// 마커를 담을 배열입니다
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3 // 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new kakao.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(map);

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new kakao.maps.InfoWindow({
			zIndex : 1
		});

		//지도에 idle 이벤트를 등록합니다
		kakao.maps.event.addListener(map, 'idle', searchPlaces);

		// 커스텀 오버레이의 컨텐츠 노드에 css class를 추가합니다 
		contentNode.className = 'placeinfo_wrap';

		// 커스텀 오버레이의 컨텐츠 노드에 mousedown, touchstart 이벤트가 발생했을때
		// 지도 객체에 이벤트가 전달되지 않도록 이벤트 핸들러로 kakao.maps.event.preventMap 메소드를 등록합니다 
		addEventHandle(contentNode, 'mousedown', kakao.maps.event.preventMap);
		addEventHandle(contentNode, 'touchstart', kakao.maps.event.preventMap);

		//커스텀 오버레이 컨텐츠를 설정합니다
		placeOverlay.setContent(contentNode);

		// 각 카테고리에 클릭 이벤트를 등록합니다
		addCategoryClickEvent();

		//엘리먼트에 이벤트 핸들러를 등록하는 함수입니다
		function addEventHandle(target, type, callback) {
			if (target.addEventListener) {
				target.addEventListener(type, callback);
			} else {
				target.attachEvent('on' + type, callback);
			}
		}

		// 키워드로 장소를 검색합니다
		searchPlaces(1);

		// 키워드 검색을 요청하는 함수입니다
		function searchPlaces(id) {
			if (1 == id) { //주로소 검색
				var keyword = document.getElementById('keyword').value;

				if (!keyword.replace(/^\s+|\s+$/g, '')) {
					alert('키워드를 입력해주세요!');
					return false;
				}
				// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
				ps.keywordSearch(keyword, placesSearchCB);
			} else if (2 == id) { // 토글로 검색
				if (!currCategory) {
					return;
				}
				// 커스텀 오버레이를 숨깁니다 
				placeOverlay.setMap(null);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				ps.categorySearch(currCategory, placesSearchCB, {
					useMapBounds : true
				});
			}

		}

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면  검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				displayPagination(pagination);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === kakao.maps.services.Status.ERROR) {
				alert('검색 결과 중 오류가 발생했습니다.');
				return;
			}
		}

		//장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB2(data, status, pagination) {
			if (status === kakao.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면  검색 목록과 마커를 표출합니다
				displayPlaces(data);

				// 페이지 번호를 표출합니다
				//displayPagination(pagination);

				// 정상적으로 검색이 완료됐으면 지도에 마커를 표출합니다
				//displayPlaces2(data);

			} else if (status === kakao.maps.services.Status.ZERO_RESULT) {
				// 검색결과가 없는경우 해야할 처리가 있다면 이곳에 작성해 주세요
			} else if (status === kakao.maps.services.Status.ERROR) {
				// 에러로 인해 검색결과가 나오지 않은 경우 해야할 처리가 있다면 이곳에 작성해 주세요
			}
		}

		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {
			var listEl = document.getElementById('table_body'), //리스트를 추가하는 위치
			    menuEl = document.getElementById('menu_wrap'),  //화면에 안나오지만 유지시킴 
			    fragment = document.createDocumentFragment(),
			    bounds = new kakao.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();
			
			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			/* var order = document.getElementById(currCategory).getAttribute('data-order'); */

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
				    marker = addMarker(placePosition, i),
				    itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

		        // 마커와 검색결과 항목에 mouseover 했을때
		        // 해당 장소에 인포윈도우에 장소명을 표시합니다
		        // mouseout 했을 때는 인포윈도우를 닫습니다
		        /* (function(marker, title) {
		            kakao.maps.event.addListener(marker, 'mouseover', function() {
		                displayInfowindow(marker, title);
		            });

		            kakao.maps.event.addListener(marker, 'mouseout', function() {
		                infowindow.close();
		            });

		            itemEl.onmouseover =  function () {
		                displayInfowindow(marker, title);
		            };

		            itemEl.onmouseout =  function () {
		                infowindow.close();
		            };
		        })(marker, places[i].place_name); */
		        (function(marker, place) {
		              kakao.maps.event.addListener(marker, 'click', function() {
		                  displayPlaceInfo(place);
		              });
		              itemEl.onmouseover =  function () {
		            	  displayPlaceInfo(place);
			          };

			          itemEl.onmouseout =  function () {
			          	infowindow.close();
			          };
		          })(marker, places[i]);
				fragment.appendChild(itemEl);
			}

			// 검색결과 항목들을 검색결과 목록 Element에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);
		}

		//지도에 마커를 표출하는 함수입니다
		function displayPlaces2(places) {

			// 몇번째 카테고리가 선택되어 있는지 얻어옵니다
			// 이 순서는 스프라이트 이미지에서의 위치를 계산하는데 사용됩니다
			var order = document.getElementById(currCategory).getAttribute('data-order');

			for (var i = 0; i < places.length; i++) {

				// 마커를 생성하고 지도에 표시합니다
				var marker = addMarker(new kakao.maps.LatLng(places[i].y,
						places[i].x), order);

				// 마커와 검색결과 항목을 클릭 했을 때
				// 장소정보를 표출하도록 클릭 이벤트를 등록합니다
				(function(marker, place) {
					kakao.maps.event.addListener(marker, 'click', function() {
						displayPlaceInfo(place);
					});
				})(marker, places[i]);
			}
		}
		// 검색결과 항목을 Element로 반환하는 함수입니다
		function getListItem(index, places) {
			var el = document.createElement('tr'),
				itemStr = '<th><span class="markerbg marker_' + (index + 1)+ '"></span></th>'
					+ '<td class="info" name="td01" style="vertical-align:middle;"><h5 style="margin:0px;">'+ places.place_name + '</h5></td>'
					+ '<td class="info" name="td02" style="text-align: left;"><span>';
			
			if (places.road_address_name) {
				itemStr += places.road_address_name + '<br\></span>'
						+ '   <span class="jibun gray">' + places.address_name;
			} else {
				itemStr +='   <span>' + places.address_name + '</span>';
			}
			itemStr += '</span></td>';

			itemStr += '<td class="info" name="td03">  <span class="tel">'
					+ places.phone + '</span></td>';
			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new kakao.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new kakao.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'),
			    fragment = document.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);
						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;">' + title+ '</div>';

			infowindow.setContent(content);
			infowindow.open(map, marker);
		}

		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}

		//지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 클릭한 마커에 대한 장소 상세정보를 커스텀 오버레이로 표시하는 함수입니다
		function displayPlaceInfo(place) {
			var content = '<div class="placeinfo">'
					+ '   <a class="title" href="' + place.place_url + '" target="_blank" title="' + place.place_name + '">'
					+ place.place_name + '</a>';

			if (place.road_address_name) {
				content += '    <span title="' + place.road_address_name + '">'
						+ place.road_address_name
						+ '</span>'
						+ '  <span class="jibun" title="' + place.address_name + '">(지번 : '
						+ place.address_name + ')</span>';
			} else {
				content += '    <span title="' + place.address_name + '">'
						+ place.address_name + '</span>';
			}

			content += '    <span class="tel">' + place.phone + '</span>'
					+ '</div>' + '<div class="after"></div>';

			contentNode.innerHTML = content;
			placeOverlay.setPosition(new kakao.maps.LatLng(place.y, place.x));
			placeOverlay.setMap(map);
		}

		//각 카테고리에 클릭 이벤트를 등록합니다
		function addCategoryClickEvent() {
			var category = document.getElementById('category'), children = category.children;

			for (var i = 0; i < children.length; i++) {
				children[i].onclick = onClickCategory;
			}
		}

		//카테고리를 클릭했을 때 호출되는 함수입니다
		function onClickCategory() {
			var id = this.id, className = this.className;

			placeOverlay.setMap(null);

			if (className === 'on') {
				currCategory = '';
				changeCategoryClass();
				removeMarker();
			} else {
				currCategory = id;
				changeCategoryClass(this);
				searchPlaces();
			}
		}
		//클릭된 카테고리에만 클릭된 스타일을 적용하는 함수입니다
		function changeCategoryClass(el) {
			var category = document.getElementById('category'), children = category.children, i;

			for (i = 0; i < children.length; i++) {
				children[i].className = '';
			}

			if (el) {
				el.className = 'on';
			}
		}

		///////////////////////////////////////////////////////////////////////////
	</script>
	<script>
		function add_tr(table_id) {
			let table_body = document.getElementById(table_id);
			table_body
					.insertAdjacentHTML(
							"afterbegin",
							"<tr> <th scope='row' name='th01'>1</th> <td name='td01'>Mark</td> <td name='td02'>Otto</td> <td name='td03'>@mdo</td> </tr>");
		}

		/* 라디오버튼 누를시에 호출 함수 */
		function onClick_Radio(radio) {
			var id = radio.value, className = radio.className;

			placeOverlay.setMap(null);

			if (className === 'on') {
				currCategory = '';
				changeCategoryClass();
				removeMarker();
			} else {
				currCategory = id;
				changeCategoryClass(this);
				searchPlaces(2);
			}
		}
	</script>
</body>
</html>
