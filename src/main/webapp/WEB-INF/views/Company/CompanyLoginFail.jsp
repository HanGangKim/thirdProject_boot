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
System.out.println("세션연결 실패:"+companyId);
System.out.println("세션연결 실패:"+companyName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+companyId);
System.out.println("세션연결 성공:"+companyName);
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
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Welcome!</title>

</head>

<body>
	<jsp:include page="../Common/header.jsp" />

	<!--Main content-->
	<main class="main-content " id="main-content">
		<section class="position-relative ">
			<div class="container pt-12 pb-lg-16 col-11 pb-9">
				<div class="row pt-lg-5 pb-5 justify-content-center text-center">
					<div class="col-xl-4">
						<div class="width-8x height-8x rounded-circle position-relative bg-dark text-white flex-center mb-5">
							<i class="bx bx-x lh-1 display-5 fw-normal"></i>
						</div>
						<h4 class="display-4 mb-3">Login Fail ...</h4>
						<p class="mb-5 lead mx-auto">아이디와 비밀번호를 다시 확인해 주세요.</p>
						<div class="mx-auto">
							<a href="/company/CompanyLogin.do" class="btn btn-primary d-grid">Again Sign In</a>
						</div>
						<p class="pt-3 small text-muted"> Don’t have an account yet? 
							<a href="/company/Agreement.do" class="ms-2 text-dark fw-semibold link-underline">Sign Up</a>
						</p>
					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="../Common/footer.jsp" />
	
</body>

</html>
