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
	System.out.println("세션연결 실패:" + userId);
	System.out.println("세션연결 실패:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + userId);
	System.out.println("세션연결 성공:" + userName);
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
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Fiennale</title>
</head>

<body>

	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!--Header Start-->
	<header
		class="z-index-fixed header-transparent header-absolute-top">
		<nav class="navbar navbar-expand-lg navbar-light">
			<div class="container position-relative">
				<a class="navbar-brand py-3" href="/start/NoneMemberMain.do"> <img
					src="/resources/img/logo/black-logo.png" alt="" class="img-fluid">
				</a>
			</div>
		</nav>
	</header>

	<!--Main content-->
	<main>
		<section class="position-relative bg-tint-primary">
			<!--Divider shape bottom-->
			<svg class="position-absolute start-0 bottom-0 text-white"
				preserveAspectRatio="none" width="100%" height="288"
				viewBox="0 0 1200 288" fill="none"
				xmlns="http://www.w3.org/2000/svg">
        <path fill-rule="evenodd" clip-rule="evenodd"
					d="M0 144L100 150C200 156 400 168 600 144C800 120 1000 60 1100 30L1200 0V288H1100C1000 288 800 288 600 288C400 288 200 288 100 288H0V144Z"
					fill="currentColor" />
      </svg>

			<div class="container col-11 pt-14 pb-9 position-relative z-index-1">
				<div class="row pt-lg-5 pb-7 align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<h1 class="display-2 mb-4">We make good designs for Web and
							Mobile</h1>
						<p class="mb-11 mb-lg-14 lead w-lg-80 mx-auto">Creative
							designs and user-friendly interfaces can contribute to your
							business success in web and mobile</p>
						<a href="#next"
							class="text-muted width-8x height-8x shadow bg-white rounded-circle flex-center d-flex text-center mx-auto">
							<div class="link-arrow-bounce">
								<i class="bx bx-down-arrow-alt fs-4"></i>
							</div>
						</a>
					</div>
				</div>
				<!--/.end-row--->
			</div>
			<!--/.End-content-->
		</section>


		<!-- 소개 -->
		<section class="position-relative overflow-hidden" id="next">
			<div class="container col-11 py-9 py-lg-11">

				<!--김한수-->
				<div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/1.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Hansoo Kim</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4">시작과 끝맺음이 확실한 개발자가 되고 싶습니다.<br>피엔날레의 조장 김한수입니다.
							<br><br>
							<b>FTP 통신 &amp; 스케줄러 ( 서버의 분산 )</b><br>
							"자원은 무한하지 않습니다."<br>
							FTP , File Transfer Protocol의 약자로 서버와 클라이언트 사이의 파일전송을 위한 프로토콜을 지칭하는 본 통신방식은 제가 이번 프로젝트에서 담당한 사이트의 핵심기술 중 하나입니다.
							FTP 통신방식에서 아이디어를 얻어 단순히 호스팅 서버의 사진을 저장하는 것이 아닌 2차 서버로 이미지를 저장하는 로직을 구현하였습니다.
							위 방식을 이용, 호스팅 서버의 부담을 줄여주었으며 추가적으로 java의 '스케줄러 라이브러리' , '크론'을 통해 일정 주기가 지난 파일을 삭제하는 기술을 적용하였습니다.
							<br><br>
							<b>레거시, 부트 마이그레이션 &amp; 버전 관리</b><br>
							"다양한 경험은 강력한 경쟁력이 될 수 있다고 생각하였습니다."<br>
							다양한 환경과 여러 버전을 관리하는 경험은 언제 어디서든 개발을 할 수 있는 개발자가 되기 위해 반드시 거쳐야 하는 과정일 것입니다.
							저는 이번 프로젝트를 통해 Spring 프레임워크로 개발한 프로젝트를 발전된 프레임워크 Spring boot로 마이그레이션을 진행하면서 의존성 주입, 빈 객체 설정, 다양한 어노테이션을 사용하고 응용하였습니다.</p>
						<ul class="list-unstyled text-dark">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
								 <span>FTP 통신 &amp; 스케줄러</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Spring Legacy &amp; Boot</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--권민성-->
				<div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/4.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="100">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Minsung Kwon</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4"><b>"이미지 서버 구축 및 호스팅"</b><br>
							저장된 이미지의 경로를 가지고 있다면 이미지를 불러오기 쉽기 때문에 별도의 이미지 서버를 호스팅 하여 보다 수월하게 이미지를 관리할 수 있게 하였습니다.
							또한, 시간이 지나 전시회 정보가 수없이 많아진다면 이미지 파일들 또한 많아지고 비교적 이미지 파일이 크기가 크기 때문에 이미지만을 관리하는 이미지 전용 서버를 따로 하나 더 두었습니다.
							<br><br>
							<b>"전시회 정보 크롤링 및 MVC 작업"</b><br>
							프로젝트에 사용할 가 데이터를 수작업으로 만들기 힘들기 때문에 전시회 데이터를 크롤링 하여 전시회 DB에 올려두었습니다.
							또한, 전시회 정보를 사용자에게 제공하기 위해 메인 페이지, 전시회 상세 페이지 등 전시회 정보가 필요한 부분에 전시회 DB와 연결하여 프런트엔드 영역에 넘겨주는 작업을 진행했습니다.
							<br><br>
							<b>"ERD 설계"</b><br>
							연관된 데이터끼리 외래 키로 묶어 중복된 데이터 칼럼을 최소화하여, 테이블을 보다 간단하게 만들었고, 테이블 간 join을 용이하게 하여 데이터 접근을 쉽게 하였습니다.
							속성(Flag) 칼럼을 두어 데이터 관리를 용이하게 했습니다. 
							같은 데이터라도 인증된 전시회, 그렇지 않은 전시회를 테이블을 따로 두어 설계한다면 테이블의 개수도 많아지고, 
							관리하기 힘들지만 속성 칼럼을 사용하여 속성값에 따라 테이블 개수가 줄어 데이터관리를 보다 용이하게 했습니다.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Linux</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Python &amp; Visualizing</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>ERD  (Entity Relationship Diagram)</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--성유나-->
				<div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Youna Seong</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4"><b>"사용자를 위한 깔끔한 UI"</b><br>
							블라블라
							<br><br>
							<b>"BootStrap"</b><br>
							블라블라</p>
						<ul class="list-unstyled text-dark">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Web design</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>UI/UX design &amp; prototyping</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>App design</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>HTML &amp; CSS &amp; JS</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>A-jax</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--오정민-->
				<div class="row justify-content-lg-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/2.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="200">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Jeongmin Oh</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat. Duis aute irure dolor in reprehenderit in voluptate
							velit esse cillum dolore eu fugiat nulla pariatur.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Digital marketing</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Print advertising</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Campaign visuals</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Editorial design</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Label and package design</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--정은성-->
				<div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/3.jpg" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Eunseong Jeong</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4">Lorem ipsum dolor sit amet, consectetur
							adipiscing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat. Duis aute irure dolor in reprehenderit in voluptate
							velit esse cillum dolore eu fugiat nulla pariatur.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Content creation</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i>
								<span>Copywriting</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Content analysis</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Content strategy</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Content management systems (CMS)</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>
			</div>

		</section>

	</main>

	<jsp:include page="./Common/footer.jsp" />


	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
</body>

</html>
