<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("companyId");
Object companyName = session.getAttribute("companyName");
Object companyPh = session.getAttribute("companyPh");
Object companyEmail = session.getAttribute("companyEmail");
Object companyGender = session.getAttribute("companyGender");
Object companyAge = session.getAttribute("companyAge");
Object companyPass = session.getAttribute("companyPass");
Object companyRegnum = session.getAttribute("companyRegnum");

// 세션 연결
if (session.getAttribute("companyId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + companyId);
	System.out.println("세션연결 실패:" + companyName);
	System.out.println("세션연결 실패:" + companyRegnum);
	System.out.println("세션연결 실패:" + companyPh);
	System.out.println("세션연결 실패:" + companyEmail);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + companyId);
	System.out.println("세션연결 성공:" + companyName);
	System.out.println("세션연결 성공:" + companyRegnum);
	System.out.println("세션연결 성공:" + companyPh);
	System.out.println("세션연결 성공:" + companyEmail);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}
%>
<!DOCTYPE html>
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

<title>Fiennale - <%=companyName %></title>
</head>

<body>

	<jsp:include page="../Common/headerCompany.jsp" />

	
	<!--Main content-->
	<main class="main-content " id="main-content">
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
		
		<section class="position-relative ">
			<div class="container pt-12 pb-lg-16 ">
				<div class="row pt-lg-5 pb-5 justify-content-center text-center">
					<div class="col-xl-6 col-11">
<!-- 						<div class="width-8x height-8x rounded-circle position-relative bg-success text-white flex-center mb-5"> -->
<!-- 							<i class="bx bx-check lh-1 display-5 fw-normal"></i> -->
<!-- 						</div> -->
						<h4 class="display-4 mb-3">Confirm Password<br>For Setting</h4>
						<p class="mb-5 lead mx-auto">Please enter your current password.</p>
						
						<div class="mx-auto col-md-8">
							<form class="needs-validation" action="companyConfirmPassword.do" method="post">
								<!-- 아이디 확인 -->
								<div class="mb-3">
									<input type="text" required class="form-control" id="username" name="company_id" value="<%=companyId%>" readonly="readonly">
								</div>
								<!-- 비밀번호 확인 -->
								<div class="mb-0">
									<input type="password" required class="form-control" id="userpass" autofocus name="company_password" value="" placeholder="Please enter your password."> 
								</div>
								<div class="d-flex align-items-center py-3">
									<span class="flex-grow-1 border-bottom pt-1"></span>
								</div>
								<!-- submit 버튼 -->
								<div class="d-grid">
									<button class="btn btn-dark" type="submit">Go To Setting</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="../Common/footerCompany.jsp" />


</body>

</html>
