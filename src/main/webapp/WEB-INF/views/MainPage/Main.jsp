<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--swiper-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css">
<!--Icons-->
<link href="/resources/fonts/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<style type="text/css">

#imgswap #img2{
	display:none;
}

#imgswap:hover #img1{ 
	display:none;
}  

#imgswap:hover #img2{ 
	display:inline-block; 
}

</style>

<title>Fiennale</title>
</head>

<body>

	<jsp:include page="../Common/main-header.jsp" />

	<main>	
		<!-- 슬라이더 시작 -->
		<section class="position-relative overflow-hidden">
			<!--:Swiper classic -->
			<div class="swiper-container swiper-classic overflow-hidden position-relative vh-100">
				<div class="swiper-wrapper">
					<!--:Slide-->
					<c:forEach items="${top3}" var="top3" end="3">
					<div class="swiper-slide" style="background-image: url('${top3.exhibition_image}'); background-size: width:100%;">
						<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
						<!--:container-->
						<div class="container h-100 text-white position-relative z-index-1">
							<div class="row d-flex align-items-center h-100">
								<div class="col-xl-10 mx-auto text-center">
									<!--:slider layers-->
									<ul class="carousel-layers list-unstyled mb-0 pt-lg-9">
										<li data-carousel-layer="fade-start">
											<h3 class="display-3 mb-3">${top3.exhibition_title}</h3>
										</li>
										<li data-carousel-layer="fade-end">
											<p class="lead mb-4 mb-lg-5">${top3.exhibition_location}</p>
										</li>
										<li data-carousel-layer="fade-start">
											<a href="/exhibition/ExhibitionDetail.do?id=${top3.exhibition_id}" class="btn btn-white btn-lg btn-hover-text mb-2 me-2"> 
												<span class="btn-hover-label label-default">Top Exhibition</span> 
												<span class="btn-hover-label label-hover">View Exhibition</span>
											</a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					</c:forEach>
					
				<!--:Add Pagination -->
				<div class="swiper-pagination swiperClassic-pagination z-index-1 text-white"></div>
				<!--:Add arrows-->
				<div class="swiper-button-prev swiperClassic-button-prev width-2x height-2x bg-transparent text-white"> </div>
				<div class="swiper-button-next swiperClassic-button-next width-2x height-2x bg-transparent text-white"> </div>
			</div>
		</section>
		<!-- 슬라이더 끝 -->
		
		
		<!-- 카테고리 시작 -->
		<section class="bg-white position-relative overflow-hidden">
			<div class="container pt-7 pt-lg-12 position-relative">
				<div class="row align-items-center">
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1><i class="bx bx-calendar"></i></h1>
						</div>
						<h6 class="mb-0">Search</h6>
					</div>
					<div
						class="col-md-4 border-end-md border-light text-center mb-7 mb-md-0">
						<div class="mb-3">
							<h1><i class="bx bx-heart"></i></h1>
						</div>
						<h6 class="mb-0">Select</h6>
					</div>
					<div class="col-md-4 text-center">
						<div class="mb-3">
							<h1><i class="bx bx-credit-card"></i></h1>
						</div>
						<h6 class="mb-0">Success</h6>
					</div>
				</div>
			</div>
		</section>
		<!-- 카테고리 끝 -->
		
		
		<!-- 메뉴선택 두개 시작 -->
		<section class="position-relative bg-white">
			<div class="container-fluid px-lg-4 position-relative pt-7 pt-lg-12">
				<div class="row justify-content-center ">
					<div class="col-md-6 col-11 mb-3 mb-md-0">
						<div class="card border-0 card-hover overflow-hidden">
							<div class="overflow-hidden position-relative">
								<img src="/resources/img/shop/banners/banner2.jpg" class="img-fluid img-zoom w-100">
								<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
							</div>
							<div class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div class="">
								<c:forEach items="${voRand}" var="voRand" end="1">
									<span>${voRand.exhibition_title}</span>
									<h5 class="mb-4 display-3 mt-2">Exhibition</h5>
									<a  href="/exhibition/ExhibitionDetail.do?id=${voRand.exhibition_id}"
										class="btn btn-white btn-lg btn-hover-text"> <span
										class="btn-hover-label label-default">Today</span> <span
										class="btn-hover-label label-hover">Choice</span>
									</a>
									</c:forEach>
									
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-11">
						<div class="card border-0 card-hover overflow-hidden" >
							<div class="overflow-hidden position-relative" >
								<img src="" id="random_img" class="img-fluid img-zoom w-100">
<!-- 									<img src="/resources/img/shop/banners/women.jpg" id="img1" class="img-fluid img-zoom w-100"> -->
<!-- 									<img src="/resources/img/shop/banners/men.jpg" id="img2" class="img-fluid img-zoom w-100"> -->
									
									<script type="text/javascript">
// 									var before = document.getElementById("img1");
// 									var after = document.getElementById("img2");
// 									var swap = document.getElementById("imgswap");
									
// 									swap.addEventListener("mouseover", function() {
// 										alert("1");
// 									})
									</script>
									
								<div class="bg-dark position-absolute start-0 top-0 w-100 h-100 opacity-50"></div>
							</div>
							<div class="position-absolute text-white start-0 top-0 p-4 justify-content-center text-center align-items-center d-flex w-100 h-100">
								<div>
									<span>All Review</span>
									<h5 class="mb-4 display-3 mt-2">Review</h5>
									<a href="/exhibition/getReviewList.do" 
										class="btn btn-white btn-lg btn-hover-text"> <span
										class="btn-hover-label label-default">Review</span> <span
										class="btn-hover-label label-hover">Review</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- 메뉴선택 두개 끝 -->

		<section class="overflow-hidden bg-white">
			<div class="container py-9 py-lg-11">
				<div class="row align-items-end justify-content-center">
					<div class="col-md-8 mx-auto text-center">
						<h2 class="mb-5 display-4">Coming Soon</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<c:forEach items="${vo}" var="vo" end="3">
						<div class="col-md-6 col-11 col-lg-3 mb-4">
							<!--Card-product-->
							<div class="card hover-shadow-lg overflow-hidden hover-lift-lg card-product border-0" title="${vo.exhibition_title}">
								<div class="card-product-header px-5 p-4 d-block overflow-hidden text-center">
									<!--Product image-->
									<a href="/exhibition/ExhibitionDetail.do?id=${vo.exhibition_id}"> <img src="${vo.exhibition_image}"  style="height:340px;" class="img-fluid" alt="Image Loading..."> </a>
								</div>
								<div class="card-product-body px-4 pb-4 text-center">
									<a href="/exhibition/ExhibitionDetail.do?id=${vo.exhibition_id}" class="h6 d-block position-relative mb-2 text-dark text-truncate">${vo.exhibition_title}</a>
									<div class="card-product-body-ovelray">
										<!--Price-->
										<span class="card-product-price"> 
											<span>${vo.exhibition_start_date}</span> ~ <span>${vo.exhibition_end_date}</span>
										</span>
										<!--Action-->
										<span class="card-product-view-btn"> 
											<a href="/exhibition/ExhibitionDetail.do?id=${vo.exhibition_id}" class="link-underline mb-1 fw-semibold text-dark">상세보기</a>
										</span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
				<div class="text-center pt-2">
					<a href="/exhibition/ExhibitionDate.do" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
						<span class="btn-hover-label label-default">All Exhibition</span> <span
						class="btn-hover-label label-hover">Search Date</span>
					</a>
				</div>
			</div>
		</section>

		<section class="position-relative overflow-hidden bg-white">
			<div class="position-absolute w-100 w-lg-60 start-0 top-0 h-100 bg-tint-primary w-100 rounded-end-lg-4"></div>
			<div class="container py-9 py-lg-11 position-relative">
				<div class="row align-items-center">
					<div class="col-md-6 col-11 col-xl-5 mx-auto ms-md-auto order-last order-md-1">

						<span class="d-block mb-2"><i
							class="bx bx-stopwatch fs-5 me-1"></i>  Limited time offer </span>
						<div
							class="countdown-timer py-3 mb-3 d-flex flex-wrap align-items-center">
							<div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4"><span id="day">day</span></h2><span class="small text-muted">days</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4"><span id="hour">hour</span></h2><span class="small text-muted">Hours</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4"><span id="minute">minute</span></h2><span class="small text-muted">Minutes</span></div><div class="d-flex flex-column px-2 width-7x"><h2 class="mb-0 h4"><span id="second">second</span></h2><span class="small text-muted">Seconds</span></div>
							</div>
						<h3>${volast.exhibition_title}</h3>	
						<br>
						<%-- <h6 class="display-1 mb-4">${volast.exhibition_title}</h6> --%>
						<%-- <h5 class="mb-5">${volast.exhibition_price} 원</h5> --%>
						<a href="/exhibition/ExhibitionDetail.do?id=${volast.exhibition_id}" class="btn btn-dark btn-lg btn-hover-text mb-2 me-2">
							<span class="btn-hover-label label-default">Explore
								products</span> <span class="btn-hover-label label-hover">Explore
								products</span>
						</a>
						
					</div>
					<div class="col-md-6 col-11 mx-auto mb-5 mb-md-0 order-1 order-md-last">
<!-- 						<div class="position-relative pb-9"> -->
<%-- 							<img src="${volast.exhibition_image}" class="img-fluid rounded-3" style="width: 500px;"> --%>
<!-- 							<img src="/resources/img/master/masterLogo.png" class="img-fluid position-absolute w-60 end-0 bottom-0 rounded-4"> -->
<%-- 							<input type="hidden" id="end" value="${volast.exhibition_end_date }"> --%>

<!-- 						</div> -->
						<div class="position-relative pe-8 pb-9">
							<img src="${volast.exhibition_image}" class="img-fluid rounded-4 shadow" style="width: 500px;">
							<a href="#"><img src="/resources/img/master/masterLogo-pink.png" class="img-fluid shadow position-absolute w-50 end-0 bottom-0 rounded-4"></a>
							<input type="hidden" id="end" value="${volast.exhibition_end_date }">

						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="position-relative bg-white">
			<div class="container py-9 py-lg-11"></div>
		</section>
	</main>


	<jsp:include page="../Common/footer.jsp" />


</body>


<!--Page Countdown script-->
<script src="/resources/vendor/node_modules/js/jquery.min.js"></script>
<script src="/resources/vendor/node_modules/js/jquery.countdown.min.js"></script>
<script src="/resources/vendor/node_modules/js/swiper-bundle.min.js"></script>

<script>
	//swiper
	//Classic
	var swiperClassic = new Swiper(".swiper-classic", {
		slidesPerView : 1,
		spaceBetween : 0,
		effect : 'fade',
		speed : 500,
		loop : true,
		autoplay : {
			delay : 2500
		},
		pagination : {
			el : ".swiperClassic-pagination",
			type : "fraction"
		},
		navigation : {
			nextEl : ".swiperClassic-button-next",
			prevEl : ".swiperClassic-button-prev"
		}
	});
	
	
	
	var now = new Date()
	var end = document.getElementById("end").value;
	console.log(end);

	var year = now.getFullYear();
	var month = now.getMonth()+1;
	var day = now.getDate();
	console.log(month+" / "+day);
	
	var hours = now.getHours();
	var minutes = now.getMinutes();
	var seconds = now.getSeconds();
	console.log(hours+" / "+minutes + " / "+seconds);
	
	
	
    if (end[4]==".") {
        var t_year = end.split(".")[0];
        var t_month = end.split(".")[1];
        var t_day = end.split(".")[2];
    } else{
        var t_year = end.split("-")[0];
        var t_month = end.split("-")[1];
        var t_day = end.split("-")[2];
    }
	console.log(t_month+" / "+t_day);
	
	var t_hours = 23;
	var t_minutes = 59;
	var t_seconds = 59;
	console.log(t_hours+" / "+t_minutes);
	
	
	
	var nowDate = new Date(year,month-1,day,hours,minutes,seconds);
	var t_Date = new Date(t_year, t_month-1, t_day, t_hours, t_minutes, t_seconds);
	console.log(nowDate);
	console.log(t_Date);
	
	var SecGap = (t_Date.getTime() - nowDate.getTime()) / 1000;
//		console.log(SecGap +"/"+ MinGap +"/"+ HourGap, DayGap);
	
// 	console.log(s+" / "+m+" / "+h+" / "+DayGap);
	
	var x = setInterval(function(){
		
		
	var s = parseInt(SecGap % 60);
	var MinGap = SecGap / 60;
	var m = parseInt(MinGap %60);
	var HourGap = MinGap / 60;
	var h = parseInt(HourGap %24);
	var DayGap = parseInt(HourGap /24);
		
		document.getElementById('day').innerHTML = DayGap;
		document.getElementById('hour').innerHTML = h;
		document.getElementById('minute').innerHTML = m;
		document.getElementById('second').innerHTML = s;
		
		SecGap--;
		
	},1000);

</script>
<script>
	window.onload = function() {
		/*  var random = int(0,5);*/
		var image = "/resources/img/shop/banners/word-cloud-";
		var number = Math.floor(Math.random()*4)+1;
		var random_img = document.getElementById('random_img');
		var result =image += number + ".png";
		
		
		
		$("#random_img").attr("src",result)
	
		
	}


</script>
</html>
