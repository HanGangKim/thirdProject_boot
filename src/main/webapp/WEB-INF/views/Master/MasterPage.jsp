<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + userId);
	System.out.println("세션연결 실패:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + userId);
	System.out.println("세션연결 성공:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	//LogOut.jsp로 이동	
	response.sendRedirect("LogOut.do");

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
<!--Master slider-->
<link rel="stylesheet"
	href="/resources/vendor/masterslider/style/masterslider.css">
<link rel="stylesheet"
	href="/resources/vendor/masterslider/skins/black-1/style.css">

<!--Swiper slider-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css">


<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>MasterPage</title>
</head>

<style>
body {
	background-color: #323232;
}

.card {
	border: 0px;
}
</style>


<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>
	<!--Header Start-->

	<!-- header -->
	<header class="z-index-fixed header-transparent header-absolute-top">
		<div class="container ">
			<nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
				<div class="container  position-relative navbar-no-collapse-items">
					<a class="navbar-brand nav-item" href="/master/MasterPage.do"
						style="margin: 0;"> <img
						src="/resources/img/logo/white-logo.png" class="img-fluid"
						style="border-radius: 0px;">
					</a>

					<div
						class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
						<div class="nav-item me-3 me-lg-0">
							<p style="color: white;">Hello admin:)</p>
							<!-- <a href="/LandingSignUp.do" class="btn btn-success btn-sm rounded-pill">Sign Up</a> -->
						</div>
					</div>
				</div>
			</nav>
		</div>
	</header>


	<!--Main content-->
	<main>
		<section class="position-relative overflow-hidden" data-aos="fade"
			data-aos-once="false" data-aos-offset="200" style="">
			<div
				class="position-absolute start-0 top-0 w-100 h-100 h-lg-60 bg-secondary"></div>
			<div class="container position-relative z-index-1 pt-9 pt-lg-11">
				<div class="row mb-5 mb-lg-7 justify-content-center align-items-end">
					<div class="col-lg-7 text-white mb-5 mb-lg-0">
						<!--Subheading-->
						<div class="mb-3">
							<br> <span class="h6 text-muted"></span>
						</div>
						<!--Section Heading-->
						<h2 class="mb-0 display-4">MasterPage</h2>
					</div>
					<div class="col-12 col-lg-auto text-lg-end ms-auto">

						<!-- Swiper Navigation buttons (Remove it or Keep it) -->
						<div
							class="position-relative d-flex justify-content-lg-end align-items-center">
							<!--Buttons navigation-->
							<div
								class="swiperProjects-button-prev swiper-button-prev mt-0 position-relative start-0 rounded-circle me-2 text-white bg-transparent border border-white">
							</div>
							<div
								class="swiperProjects-button-next swiper-button-next mt-0 position-relative mx-0 end-0 rounded-circle text-white bg-transparent border border-white">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container pb-9 pb-lg-11">
				<div class="row">
					<div class="col-12 position-relative">

						<!--Projects swiper slider-->
						<div class="swiper-container swiper-projects overflow-visible">
							<div class="swiper-wrapper">

								<!--Swiper-slide-->
								<div class="swiper-slide">
									<!-- <a href="/master/CheckReservation.do" class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card"> -->
										<a href="#" onclick="alertPass()"  class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card">
										<img src="/resources/img/master/masterGraph.jpg" alt=""
										class="img-fluid w-100 img-zoom" style="height: 555px">
										<div
											class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">Reservation</h4>
												</div>
												<p class="mb-0">예매율 확인</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> <span
													class="card-hover-2-footer-link"> <span>Check
														the reservation rate</span>
												</span>
											</div>
										</div>

									</a>
								</div>
								<script type="text/javascript">
								function alertPass(){
									alert("허가되지 않은 접근입니다.\n열람을 위해서는 개발팀(031-0000-0000)으로 연락해 주시기 바랍니다.")
								}
								</script>

								<!--Swiper-slide-->
								<div class="swiper-slide">
									<a href="/master/approveCompany.do"
										class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card">

										<img src="/resources/img/master/masterCompany4.jpg" alt=""
										class="img-fluid w-100 img-zoom" style="height: 555px">


										<div
											class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">Company</h4>
												</div>
												<p class="mb-0">업체 승인</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> <span
													class="card-hover-2-footer-link"> <span>Approval of company registration</span>
												</span>
											</div>
										</div>

									</a>
								</div>


								<!--Swiper-slide-->
								<div class="swiper-slide">
									<a href="/master/approveExhibition.do"
										class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card">
										<img src="/resources/img/master/masterExhibition.jpg" alt=""
										class="img-fluid img-zoom" style="height: 555px">

										<div
											class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">Exhibition</h4>
												</div>
												<p class="mb-0">전시회 등록 승인</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> <span
													class="card-hover-2-footer-link"> <span>Approval of exhibition registration</span>
												</span>
											</div>
										</div>

									</a>
								</div>

								<!--Swiper-slide-->
								<div class="swiper-slide">
									<a href="/master/checkDnRSelect.do"
										class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card">

										<img src="/resources/img/master/masterList2.jpg" alt=""
										class="img-fluid w-100 img-zoom" style="height: 555px">


										<div
											class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">D&R List</h4>
												</div>
												<p class="mb-0">승인/거절 리스트</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> <span
													class="card-hover-2-footer-link"> <span>Check the approval List and Reject List</span>
												</span>
											</div>
										</div>

									</a>
								</div>




							</div>

						</div>
					</div>
				</div>
			</div>
		</section>
					

	</main>




	<!-- begin Back to Top button -->
	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
	<!--Mastert Slider start (Include jquery before master slider js)-->
	<script src="/resources/vendor/node_modules/js/jquery.min.js"></script>
	<script src="/resources/vendor/masterslider/jquery.easing.min.js"></script>
	<script src="/resources/vendor/masterslider/masterslider.min.js"></script>
	<script>
		var slider = new MasterSlider();
		slider.setup('masterslider', {
			width : 1140,
			height : 660,
			minHeight : 400,
			space : 0,
			start : 1,
			grabCursor : false,
			layout : "fullwidth",
			wheel : false,
			autoplay : true,
			instantStartLayers : true,
			loop : true,
			view : "basic",
			instantStartLayers : true,
		});
		slider.control('arrows');
	</script>


	<!--Swiper slider-->

	<script src="/resources/vendor/node_modules/js/swiper-bundle.min.js"></script>
	<script>
		//swiper-3
		var swiperProjects = new Swiper(".swiper-projects", {
			autoHeight : true,
			spaceBetween : 16,
			breakpoints : {
				640 : {
					slidesPerView : 1,
					spaceBetween : 16
				},
				768 : {
					slidesPerView : 2,
					spaceBetween : 16
				},
				1024 : {
					slidesPerView : 2,
					spaceBetween : 16
				}
			},
			pagination : {
				el : ".swiperProjects-pagination",
				clickable : true
			},
			navigation : {
				nextEl : ".swiperProjects-button-next",
				prevEl : ".swiperProjects-button-prev"
			}
		});
		//swiper-auto
		var swiperAuto = new Swiper(".swiper-testimonials", {
			slidesPerView : "auto",
			loop : true,
			centeredSlides : true,
			spaceBetween : 16,
			effect : "fade",
			grabCursor : true,
			pagination : {
				el : ".swiperAuto-pagination",
				clickable : true,
			},
			navigation : {
				nextEl : ".swiperAuto-button-next",
				prevEl : ".swiperAuto-button-prev",
			}
		});
	</script>
</body>

</html>

