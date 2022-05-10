<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("companyId");
Object companyName = session.getAttribute("companyName");
// 세션 연결
if (session.getAttribute("companyId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + companyId);
	System.out.println("세션연결 실패:" + companyName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

	//LogOut.jsp로 이동	
	response.sendRedirect("../LogOut.do");

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
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
	
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<style>
/* 
span.test:after {
    content: "";
    width: 24px;
    height: 24px;
    background-size: 24px 24px;
    transform: translateX(-100%);
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 24 24'%3E%3Cpath d='M22 12l-4-4v3H3v2h15v3z'/%3E%3C/svg%3E");
}
 */
span.card-hover-2-footer-link:after {
    content: "";
    width: 24px;
    height: 24px;
    background-size: 24px 24px;
    transform: translateX(-100%);
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' fill='black' viewBox='0 0 24 24'%3E%3Cpath d='M22 12l-4-4v3H3v2h15v3z'/%3E%3C/svg%3E");
}

</style>


<title>Fiennale - <%=companyName %></title>
</head>

<body>

	<jsp:include page="../Common/headerCompany.jsp" />
	
	
	<!--Main content-->
	<main>
		<!-- 페이지 헤더 -->
		<section id="page-header" class="position-relative bg-dark text-white overflow-hidden">
			<div class="container col-11 pt-12 pb-10">
				<div class="row pt-lg-7">
					<div class="col-lg-7">
						<h1 class="mb-2 display-4"><%=companyName %></h1>
						<p class="lead mb-0 text-muted">Welcome! <%=companyName %></p>
					</div>
				</div>
			</div>
		</section>
		<!-- ./페이지 헤더 -->

		<!-- 내용 -->
		<section class="position-relative hr-linear-bottom bg-white">
			<div class="container col-11 py-9 py-lg-11 position-relative z-index-1">
				<div id="projects" data-isotope='{"layoutMode": "masonry"}' class="row">

					<!-- 전시회 등록 수정&조회 -->
					<div class="col-md-6 mb-4 development grid-item">
						<a onclick="hiddenFromSubmit()" class="text-black bg-light position-relative d-block overflow-hidden card-hover-2 card">
							<!-- hidden form  -->
							<form id="hiddenForm" name="hiddenForm" action="/company/companyExhibitionList.do" method="post">
							<input type="hidden" name="company_id" value="<%=companyId%>">
							</form>
							<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
							<script type="text/javascript">
									function hiddenFromSubmit(){
										$("#hiddenForm").submit(); 
									}
							</script>
							
							
							<img src="/resources/img/graphics/illustration/09.png" class="w-100 img-zoom">
							<div class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
								<div class="card-hover-2-header w-100">
									<div class="card-hover-2-title">
										<h4 class="fs-2 mb-2">Exhibition Update</h4>
									</div>
									<p class="mb-0">전시회 등록 & 수정</p>
								</div>
								<div class="card-hover-2-footer w-100 mt-auto">
									<span class="card-hover-2-footer-link"> 
										<span>Next step</span>
									</span>
								</div>
							</div>
						</a>
					</div>
					
					<!-- 정보수정 -->
					<div class="col-md-6 mb-4 motion grid-item">
						<a href="/company/CompanyConfirmPass.do" class="text-black bg-light position-relative d-block overflow-hidden card-hover-2 card">	
							<img src="/resources/img/graphics/illustration/05.png" class="w-100 img-zoom">
							<div class="card-hover-2-overlay position-absolute start-0 top-0 w-100 h-100 d-flex px-4 py-5 flex-column justify-content-between">
								<div class="card-hover-2-header w-100">
									<div class="card-hover-2-title">
										<h4 class="fs-2 mb-2">Change Information</h4>
									</div>
									<p class="mb-0">업체정보 수정</p>
								</div>
								<div class="card-hover-2-footer w-100 mt-auto">
									<span class="card-hover-2-footer-link "> 
										<span>Next step</span>
									</span>
								</div>
							</div>
						</a>
					</div>

				</div>
			</div>
		</section>
		<!-- ./내용 -->
	</main>

	<jsp:include page="../Common/footerCompany.jsp" />
	



</body>

</html>
