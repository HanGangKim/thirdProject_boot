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
						<h1 class="display-2 mb-4">Drawing Detailed Dreams</h1>
						<p class="mb-11 mb-lg-14 lead w-lg-80 mx-auto">꿈꾸는 것을 상세하게 그리는 것. 피엔날레가 달려온 과정입니다.</p>
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
						<img src="/resources/img/960x900/한수.png" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Hansoo Kim</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4">
							<b>" 자원은 무한하지 않습니다. "</b><br>
							FTP는 서버와 클라이언트 사이의 파일전송을 위한 프로토콜을 지칭하는 본 통신방식은 제가 이번 프로젝트에서 담당한 사이트의 핵심기술 중 하나입니다.
							FTP 통신방식에서 아이디어를 얻어 단순히 호스팅 서버의 사진을 저장하는 것이 아닌 2차 서버로 이미지를 저장하는 로직을 구현하였습니다.
							위 방식을 이용, 호스팅 서버의 부담을 줄여주었으며 추가적으로 Java의 '스케줄러 라이브러리' , '크론'을 통해 일정 주기가 지난 파일을 삭제하는 기술을 적용하였습니다.
							<br><br>
							<b>" 다양한 경험은 강력한 경쟁력이 될 수 있다고 생각하였습니다. "</b><br>
							다양한 환경과 여러 버전을 관리하는 경험은 언제 어디서든 개발을 할 수 있는 개발자가 되기 위해 반드시 거쳐야 하는 과정일 것입니다.
							저는 이번 프로젝트를 통해 Spring 프레임워크로 개발한 프로젝트를 발전된 프레임워크 Spring Boot로 마이그레이션을 진행하면서 의존성 주입, 빈 객체 설정, 다양한 어노테이션을 사용하고 응용하였습니다.</p>
						<ul class="list-unstyled text-dark">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Leadership</span>
							</li>
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
						<img src="/resources/img/960x900/민성.png" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="100">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Minsung Kwon</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4"><b>" 이미지 서버 구축 및 호스팅 "</b><br>
							저장된 이미지의 경로를 가지고 있다면 이미지를 불러오기 쉽기 때문에 별도의 이미지 서버를 호스팅 하여 보다 수월하게 이미지를 관리할 수 있게 하였습니다.
							또한, 시간이 지나 전시회 정보가 수없이 많아진다면 이미지 파일들 또한 많아지고 비교적 이미지 파일의 크기가 크기 때문에 이미지만을 관리하는 이미지 전용 서버를 따로 하나 더 두었습니다.
							<br><br>
							<b>" 전시회 정보 크롤링 및 MVC 패턴 설계 "</b><br>
							프로젝트에 사용할 가 데이터를 수작업으로 만들기 힘들기 때문에 전시회 데이터를 크롤링 하여 전시회 DB에 올려두었습니다.
							또한, 전시회 정보를 사용자에게 제공하기 위해 메인 페이지, 전시회 상세 페이지 등 전시회 정보가 필요한 부분에 전시회 DB와 연결하여 프런트엔드 영역에 넘겨주는 작업을 진행하였습니다.
							<br><br>
							<b>" ERD 설계 "</b><br>
							연관된 데이터끼리 외래 키로 묶어 중복된 데이터 칼럼을 최소화하여, 테이블을 보다 간단하게 만들었고, 
							테이블 간 JOIN을 용이하게 하여 데이터 접근을 쉽게 하였습니다.
	                     	같은 데이터라도 인증된 전시회, 그렇지 않은 전시회 테이블을 따로 두어 설계한다면 테이블의 개수가 많아져 관리하기 힘들지만
	                     	속성(Flag) 칼럼을 사용해 보다 데이터를 수월하게 관리할 수 있게 하였습니다.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Ubuntu</span>
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
						<img src="/resources/img/960x900/유나.png" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">You-na Seong</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4">
							<b>" 효율적인 개발을 위한 다양한 라이브러리 활용 "</b><br>
							더 나은 프런트엔드 개발자가 되기 위해, HTML &amp; CSS &amp; JS를 조금 더 효율적으로 사용하기 위해
							프런트엔드 오픈 소스 툴킷인 Bootstrap에 관해 학습하였으며, 프로젝트 전반적인 UI에 해당 기술을 활용해 모바일에 대응할 수 있도록 반응형 웹으로 구현하였습니다.
							<br><br>
							<b>" 사용자와 개발자가 만족할 수 있는 웹 "</b><br>
							프런트엔드 개발자는 사용자와 소통은 물론 백엔드 개발자와의 소통도 중요하다고 생각하여 
							단순히 껍데기만 화려한 웹이 아닌 백엔드 개발자가 추구하는 방향도 고려한 웹을 디자인하였습니다.
							핸드폰(모바일) 활용이 잦아진 시대에 Ajax를 활용한 더 보기 버튼을 구현해 페이징을 좀 더 쉽게 하여 사용자의 편의성에 집중하였고,
							전시회 검색, 모달 등 백엔드 개발자가 생각하는 기능들을 웹 곳곳에 녹여내 시각적인 재미까지 더하였습니다.
							</p>
						<ul class="list-unstyled text-dark">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Web Design</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>UI/UX Design &amp; Prototyping</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>HTML &amp; CSS &amp; JS</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>JQuery &amp; Bootstrap &amp; Ajax</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--오정민-->
				<div class="row justify-content-lg-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0 order-md-last" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/정민.png" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4 order-md-1" data-aos="fade-right" data-aos-delay="200">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Jeongmin Oh</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4"><b>" 전시회 리뷰 크롤링 및 워드 클라우드 구현  "</b><br> 
							전시회 데이터들을 하나하나 작성할 수 없어서, 다양한 전시회 리뷰 데이터들을 크롤링 하였습니다. 
							또한 크롤링 한 전시회 리뷰 데이터들을 모아서 다양한 의견들과 많이 사용한 단어 순으로 워드 클라우드를 구현하였습니다.
							<br><br>
							<b>" 챗봇 기능 구현 "</b><br> 
							사이트 사용자들이 전시회의 전시 기간과 전시 장소를 궁금해할 수 있기 때문에 챗봇을 통해 질문을 하면 
							원하는 답을 얻을 수 있도록 파이썬을 이용하여 챗봇을 구현하였습니다.
							<br><br>
							<b>" 정보수정 기능 구현 MVC 패턴 설계 "</b><br>
							사용자의 입력된 데이터를 조회, 수정 및 삭제 등 정보 관리 기능을 1차적으로 구현하였고 올바른 데이터 처리를 위한 유효성 검사 작업을 하였습니다.
							회원 탈퇴의 경우 연관된 데이터들 간의 선후관계를 파악하여 처리되도록 하였습니다.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Java</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Python &amp; Visualizing</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Chatbot</span>
							</li>
						</ul>
					</div>
					<!--/.End Col-->
				</div>

				<!--정은성-->
				<div class="row justify-content-md-around mb-7 mb-lg-11 align-items-center">
					<div class="col-md-6 mb-5 mb-md-0" data-aos="fade-left" data-aos-delay="100">
						<img src="/resources/img/960x900/은성.png" class="img-fluid rounded-blob shadow-lg" alt="">
					</div>
					<div class="col-md-4" data-aos="fade-right" data-aos-delay="150">
						<div class="d-flex align-items-center mb-4">
							<h1 class="mb-0 display-6">Eunseong Jeong</h1>
						</div>
						<!--/.End heading-->
						<p class="mb-4"><b>" 사용자(user) 중심의 인터페이스 "</b><br>
							단순히 프로젝트성이 아닌 진짜 유저의 마음이 되어서 페이지를 개발하였습니다. 최소한의 텍스트와 대비되는 많은 시각적인 임팩트,
							스크롤 구동방식의 화면 구성과 심플하면서 기능에 충실한 콘텐츠까지 사용자들이 어떤 면에서 매력적으로 느낄 수 있는지에 대해
							주로 고민하였고, 웹보다 모바일에서 접근성이 높은 사용자들의 편의를 파악해 반응형 웹페이지의 화면구성(CSS)을 디자인하였습니다.
							<br><br>
							<b>" Flexible Web Development "</b><br>
							저는 프런트엔드 개발자를 꿈꾸지만 프로그램의 전체적인 구조 파악을 위해 마스터 페이지를 MVC 패턴으로 개발하면서 화면부터 서버(데이터)와의 연결까지 구현하였습니다.
							또한 JS를 이용한 업체 및 전시회 승인, Ajax를 이용한 승인/거절 리스트의 비동기 검색 기능과 더불어 다양한 CSS의 조합으로 화면 구성에 있어 편의성과 심미성을 동시에 추구하고자 하였습니다.</p>
						<ul class="list-unstyled text-dark mb-0">
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>Web Design</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>UI/UX Design &amp; Prototyping</span>
							</li>
							<li class="d-flex align-items-center mb-3">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>HTML &amp; CSS &amp; JS</span>
							</li>
							<li class="d-flex align-items-center">
								<i class="bx bx-check-circle fs-4 opacity-50 me-2"></i> 
								<span>JQuery &amp; Bootstrap &amp; Ajax</span>
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
