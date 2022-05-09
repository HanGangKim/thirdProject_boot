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

<title>Waiting...</title>

</head>

<body>
	
	<jsp:include page="../Common/header.jsp" />

	
	<main class="main-content " id="main-content">
		<section class="position-relative ">
			<div class="container pt-12  pb-8  pb-lg-16 ">
				<div class="row pt-lg-5 pb-5 justify-content-center text-center">
					<div class="col-xl-4">
						<div class="width-8x height-8x rounded-circle position-relative bg-dark text-white flex-center mb-5">
							<i class="bx bx-dots-horizontal-rounded lh-1 display-5 fw-normal"></i>
						</div>
						<h4 class="display-4 mb-3">Sign Up Waiting ...</h4>
						<p class="mb-2 lead mx-auto">가입 승인까지는 2~3일정도 소요됩니다.</p>
						<div class="mx-auto">
							<a href="/start/NoneMemberMain.do" class="btn btn-primary mb-2 d-grid">Go To Main</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

	<jsp:include page="../Common/footer.jsp" />

</body>


</html>
