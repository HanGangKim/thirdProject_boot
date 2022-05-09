<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
Object userEmail = session.getAttribute("userEmail");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
// LogOut.jsp로 이동
// 로그인은 세션이 있으면 못들어가게 Redirect 
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
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Member Sign In</title>


</head>

<body>



	<jsp:include page="../Common/header.jsp" />


	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div class="bg-pattern text-light w-100 h-100 start-0 top-0 position-absolute"></div>
			<div class="container pt-11 pt-lg-14 pb-9 pb-lg-18 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">
					<div class=" col-xl-4 col-11 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Member Sign In</h2>
						<p class="mb-4 text-muted">Please Sign In with details...</p>
						<div class="position-relative">
							<div>
								<form action="/customer/customerLogin.do"
									class="needs-validation" method="post">
									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-envelope"></i>
										</span>
										<!-- 아이디 input -->
										<input type="text" name="customer_id" class="form-control"
											required autofocus placeholder="Username" required="required">
									</div>
									<div class="input-icon-group mb-3">
										<span class="input-icon"> <i class="bx bx-lock-open"></i>
										</span>
										<!-- 비밀번호 input -->
										<input type="password" name="customer_password"
											class="form-control" required placeholder="Password" required="required">
									</div>
									<div class="mb-0 d-flex justify-content-between">
										<div class="form-check">
											<input class="form-check-input" type="checkbox" 
											name="remember"	id="flexCheckDefault"> <label
												class="form-check-label" for="flexCheckDefault">
												Remember me </label>
										</div>
										<div>
											<label class="text-end d-block small mb-0">
											<a href="page-account-forget-password.html" data-bs-target="#modal-password-bar-1" data-bs-toggle="modal"
												class="text-muted link-decoration">Forget Password?</a></label>
										</div>
									</div>
									
									<div class="d-flex align-items-center py-3">
										<span class="flex-grow-1 border-bottom pt-1"></span>
									</div>

									<div class="d-grid">
										<button class="btn btn-primary" type="submit">Sign in
										</button>
									</div>
								</form>

								<!---->
								<p class="pt-4 small text-muted">
									Don’t have an account yet? <a href="/customer/Agreement.do"
										class="ms-2 text-dark fw-semibold link-underline">Sign Up</a>
								</p>

							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	
	
	<!-- <hr>
	추후 모달로 변경돨 예정 
	전송방식은 post 
	<form action="customerFindPassword.do" method="get">
	<h2>비밀번호 찾기</h2>
	<input name="customer_id" type="text" placeholder="아이디를 입력해주세요">
	<input name="customer_email" type="text" placeholder="이메일을 입력하세요">
	<button type="submit">제출</button>
	비밀번호 찾기 성공시 'CustomerFindPassword' 페이지 이동 - 비밀번호 보여주기
	비밀번호 찾기 실패시 CustomerLogin 페이지 돌아오기 
	</form>
	<hr> -->


	<div id="modal-password-bar-1" class="modal fade" tabindex="-1" aria-labelledby="modal-password-bar-1" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div class="position-absolute mt-2 end-0 width-7x top-0 d-flex align-items-center justify-content-center">
						<button type="button" class="btn-close w-auto small" data-bs-dismiss="modal" aria-label="Close">
							<i class="bx bx-x fs-4 me-2"></i>
						</button>
					</div>

					<form class="mb-0" action="customerFindPassword.do" method="post">
						<div class="align-items-center">
							<h6 class="d-flex mt-4" style="justify-content: center;">Find Password</h6>

							<!-- 구분선 -->
							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							<!-- 아이디 -->
							<div class="mb-3">
								<label class="form-label">Your Id</label> 
								<input type="text" name="customer_id" placeholder="Please Enter Your Id" required class="form-control">
							</div>
							<!-- 이메일 -->
							<div class="">
								<label class="form-label">Your Email</label> 
								<input type="email" name="customer_email" placeholder="Please Enter Your Email" required class="form-control">
							</div>

							<div class="d-flex align-items-center py-3">
								<span class="flex-grow-1 border-bottom pt-1"></span>
							</div>
							
							<div class="mb-4 text-end">
								<button type="submit" class="btn btn-primary form-control">Find Password</button>
							</div>
						</div>
					</form>
						
				</div>
			</div>
		</div>
	</div>



	<jsp:include page="../Common/footer.jsp" />


</body>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- 아이디 기억하기 jquery -->
<script>
	$(document).ready(function() {
		var userId = getCookie("cookieUserId");
		$("input[name='customer_id']").val(userId);

		if ($("input[name='customer_id']").val() != "") { // Cookie에 만료되지 않은 아이디가 있어 입력됬으면 체크박스가 체크되도록 표시
			$("input[name='remember']").attr("checked", true);
		}

		$("button[type='submit']", $('.needs-validation')).click(function() { // Login Form을 Submit할 경우,
			if ($("input[name='remember']").is(":checked")) { // ID 기억하기 체크시 쿠키에 저장
				var userId = $("input[name='customer_id']").val();
				setCookie("cookieUserId", userId, 7); // 7일동안 쿠키 보관
			} else {
				deleteCookie("cookieUserId");
			}
		});
	})

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}
	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}
	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);

	}
</script>

</html>