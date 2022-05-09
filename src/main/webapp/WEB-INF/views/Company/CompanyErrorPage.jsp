<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("=companyId");
Object companyName = session.getAttribute("companyName");
// 세션 연결
if (session.getAttribute("companyId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + companyId);
	System.out.println("세션연결 실패:" + companyName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + companyId);
	System.out.println("세션연결 성공:" + companyName);
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
<link href="/resources/css/theme.min.css" rel="stylesheet">

<title>Error!</title>
</head>

<body>

	<jsp:include page="../Common/headerCompany.jsp" />

	<!--Main content-->

	<main class="main-content d-grid" id="main-content">
		<!-- 페이지 헤더 -->
		<section id="page-header" class="position-relative bg-dark text-white overflow-hidden">
			<div class="container col-11 pt-12 pb-10">
				<div class="row pt-lg-7">
					<div class="col-lg-7">
						<h1 class="mb-2 display-4">Sorry</h1>
						<p class="lead mb-0 text-muted">Try Again, <%=companyName %></p>
					</div>
				</div>
			</div>
		</section>
		<!-- ./페이지 헤더 -->
		
		<section class="position-relative overflow-hidden">
			<div class="container pt-14 pb-9">
				<div class="row">
					<div
						class="col-md-10 col-lg-8 mx-auto text-center position-relative">

						<div class=" position-relative z-index-1">

							<div class="text-danger mb-5">
								<img src="/resources/img/graphics/illustration/404.svg"
									class="width-18x mx-auto" alt="">
							</div>
							<h1 class="display-1 mb-2">Error!</h1>
							<h2 class="mb-4">Oops! Page not found</h2>
							<p class="w-lg-75 lead mx-auto mb-5">알 수 없는 이유로 에러가 발생했습니다.</p>
							<a href="/company/CompanyMain.do" class="fw-semibold"> 
								<i class="bx bx-left-arrow-alt lh-1 fw-normal me-2"></i>Back to Home
							</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../Common/footerCompany.jsp" />
	
</body>

</html>
