<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
<!--Box Icons-->
<link rel="stylesheet"
	href="/resources/fonts/boxicons/css/boxicons.min.css">

<!--AOS Animations-->
<link rel="stylesheet" href="/resources/vendor/node_modules/css/aos.css">

<!--Iconsmind Icons-->
<link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
	
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!-- <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSansNeo.css'
	rel='stylesheet' type='text/css'>

<style>
* {
	font-family: 'Spoqa Han Sans Neo', 'sans-serif';
}
</style> -->
<title>Search Date</title>
</head>

<body>

	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative d-flex justify-content-center h-100">
			<div class="bg-dark d-none d-md-flex position-fixed end-0 top-0 w-md-50 w-lg-60 h-100">
				<!--Divider shape-->
				<svg
					class="position-absolute start-0 top-0 h-100 text-white z-index-1"
					width="80" height="1096" preserveAspectRatio="none"
					viewBox="0 0 58 1096" fill="none"
					xmlns="http://www.w3.org/2000/svg">
                    <path opacity="0.24" fill-rule="evenodd"
						clip-rule="evenodd"
						d="M58 1096L53.2727 1034.97C48.3636 973.947 38.7273 852.719 39.8182 730.667C41.0909 608.614 53.2727 487.386 52 365.333C50.7273 243.281 36.3636 122.053 29.0909 61.0263L21.8182 2.02656e-06H-1.72853e-06L-1.72853e-06 61.0263C-1.72853e-06 122.053 -1.72853e-06 243.281 -1.72853e-06 365.333C-1.72853e-06 487.386 -1.72853e-06 608.614 -1.72853e-06 730.667C-1.72853e-06 852.719 -1.72853e-06 973.947 -1.72853e-06 1034.97L-1.72853e-06 1096H58Z"
						fill="white" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
						d="M37 1096L33.9843 1034.97C30.8527 973.947 24.7053 852.719 25.4013 730.667C26.2132 608.614 33.9843 487.386 33.1724 365.333C32.3605 243.281 23.1975 122.053 18.558 61.0263L13.9185 2.02656e-06H1.11014e-06L1.11014e-06 61.0263C1.11014e-06 122.053 1.11014e-06 243.281 1.11014e-06 365.333C1.11014e-06 487.386 1.11014e-06 608.614 1.11014e-06 730.667C1.11014e-06 852.719 1.11014e-06 973.947 1.11014e-06 1034.97L1.11014e-06 1096H37Z"
						fill="white" />
                </svg>

				<!--Image-->
<!-- 				<img src="/resources/img/backgrounds/4.jpeg" alt="" class="bg-image"> -->
				<video muted autoplay loop>
					<source src="/resources/img/backgrounds/ARTE MUSEUM Overview.mp4" type="video/mp4" class="bg-image">
				</video>
				
			</div>
			<div class="container  col-11 z-index-2 position-relative">
				<div class="row align-items-center vh-100">
					<div class="col-lg-4  pt-3 pb-4 pb-lg-5 pt-lg-5 me-auto col-md-6 z-index-2">
<!-- 						<div> -->
							<!--로고-->
							<a href="/start/NoneMemberMain.do"> 
								<img src="/resources/img/logo/black-logo.png" class="width-8x d-block mb-4">
							</a>
							<!--제목-->
							<h2 class="mb-1 display-6">
								<!-- Welcome back! -->
								Search Date
							</h2>
							<!--부제-->
							<p class="mb-4 text-muted">원하는 전시회 기간을 선택해주세요.</p>
							<div>
								<!--기간 넘기는 form 태그-->
								<form onsubmit="return nullCheck()" name="dateForm" class="needs-validation" method="post" novalidate action=" <c:url value="/exhibition/ExSearch.do"/>">
									<div class="row mb-3">
										<!--기간으로 날짜 검색 (우리가 쓸 태그)-->
										<div class="mb-5 mb-md-0 mb-3">
											<!-- <h5 class="mb-4">Range</h5> -->
											<input type="date" id="now_date"
												data-flatpickr='{"mode":"range"}' class="form-control" name="totalDate">
										</div>
									</div>
								
									<!--검색버튼-->
									<div class="d-grid">
										<button class="btn btn-primary" type="submit">Move To List</button>
									</div>
								</form>
							</div>
							
							
									<!-- 달력 공백 예외처리  -->
									<script type="text/javascript">
									function nullCheck() {
										if(!document.dateForm.totalDate.value){
											alert("날짜를 입력해주세요!")
											document.dateForm.totalDate.focus();
											return false;
										}
									}
									</script>
							
							
					<!-- </div> -->
					</div>
				</div>
			</div>
		</section>
	</main>

	<!-- begin Back to Top button -->
	
	
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>


</body>

<!-- scripts -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

<script>
        let pickr = document.querySelectorAll("[data-flatpickr]");
        pickr.forEach(el => {
            const t = {
                ...el.dataset.flatpickr ? JSON.parse(el.dataset.flatpickr) : {},
            }
            new flatpickr(el, t)
        }
        );</script>


<!-- 오늘날짜 뽑는 스크립트 -->
<script type="text/javascript">

	window.onload = function(){
		var date = new Date();
		var date1 = date.toISOString().substring(0, 10)
		var date2 = new Date(date.setDate(date.getDate()+14)).toISOString().substring(0, 10);
											
		document.getElementById('now_date').value = date1 + ' to ' + date2	
		
	}
	
</script>


<!-- 뒤로가기 막기 -->
<script type="text/javascript">

// window.onload = function() {	
// 	history.pushState(null, null, location.href);
// 	window.onpopstate = function () {
// 	    history.go(1);
// 	};
// }

</script>




</html>
