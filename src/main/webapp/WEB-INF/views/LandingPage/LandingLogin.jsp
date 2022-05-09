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
	response.sendRedirect("../LogOut.do");

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
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
	
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">




<title>Sign In</title>
</head>

<body>

<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!-- header -->
	<header class="z-index-fixed header-transparent header-absolute-top">
		<div class="container ">
			<nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
				<div class="container  position-relative navbar-no-collapse-items">
					<a class="navbar-brand nav-item" href="/start/NoneMemberMain.do" style="margin: 0;"> 
						<img src="/resources/img/logo/white-logo.png" class="img-fluid">
					</a>
					
					<div class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
                       <div class="nav-item">
                           <a href="/landing/LandingSignUp.do" class="btn btn-primary btn-sm rounded-pill">Sign Up</a>
                       </div>
                    </div>
				</div>
			</nav>
		</div>
	</header>


	<!--Main content-->
	<main>

		<section class="vh-100 position-relative bg-shade-dark text-white jarallax overflow-hidden" data-jarallax=".3" id="hero">
			<!--Parallax background-->
			<div class="container position-relative pt-10 pt-lg-10 ">
				<div class="row mb-2 mb-lg-0 pt-lg-7">
					<div class="text-center">
						<h1 class="display-4 mb-2">Sign In</h1>
						<p class="lead text-muted">Please Select Member Or Company</p>
					</div>
				</div>
<!-- 				/.row -->
			</div>
			<div class="container position-relative z-index-1">
				<div class="row d-flex align-items-center justify-content-center text-center">
					<div class="col-xl-11 col-10">

						<div class="container py-lg-9 position-relative z-index-1">

							<div id="projects" data-isotope='{"layoutMode": "masonry"}' class="row">

								<!-- 일반회원 로그인 -->
								<div class="col-md-6 mb-4 development grid-item">
									<a href="/customer/CustomerLogin.do" class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card"  style="border: 0px;">
										<img src="/resources/img/landing/loginMember4.jpeg" class="w-100 img-zoom">
										<div class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">Member</h4>
												</div>
												<p class="mb-0">회원 로그인</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> 
												<span class="card-hover-2-footer-link"> 
												<span>Go Sign In </span>
												</span>
											</div>
										</div>
									</a>
								</div>

								<!-- 업체회원 로그인 -->
								<div class="col-md-6 mb-4 motion grid-item">
									<a href="/company/CompanyLogin.do" class="text-white bg-dark position-relative d-block overflow-hidden card-hover-2 card" style="border: 0px;">
										<img src="/resources/img/master/masterCompany.jpeg" class="w-100 img-zoom" >
										<div class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
											<div class="card-hover-2-header w-100">
												<div class="card-hover-2-title">
													<h4 class="fs-2 mb-2">Company</h4>
												</div>
												<p class="mb-0">업체 로그인</p>
											</div>
											<div class="card-hover-2-footer w-100 mt-auto">
												<span class="tags d-block flex-grow-1">Next Page</span> 
												<span class="card-hover-2-footer-link"> 
												<span>Go Sign In </span>
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
			<div id="jarallax-container-0" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; overflow: hidden; z-index: -100; background-color: #262626;">
				<img class="jarallax-img opacity-50">
			</div>
		</section>

	</main>
	
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

	
</body>

<!-- 검색버튼 모달 스크립트 -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

<!-- 커서 스크립트 -->
<script src="/resources/vendor/node_modules/js/cursor.js"></script>


</html>
