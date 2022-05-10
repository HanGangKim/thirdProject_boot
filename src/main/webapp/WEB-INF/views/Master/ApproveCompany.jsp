<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
Object masterId = session.getAttribute("masterId");
Object masterName = session.getAttribute("masterName");
// 세션 연결
if (session.getAttribute("masterId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + masterId);
	System.out.println("세션연결 실패:" + masterName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	response.sendRedirect("/start/NoneMemberMain.do");
} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + masterId);
	System.out.println("세션연결 성공:" + masterName);
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


<title>Fiennale - Master</title>
</head>
<style>
.approveCompanyInput {
	border: 0px solid black;
	text-align: right;
}

.approveCompanySign {
	border: 0px solid black;
	width: 100px
}

#btnHover {
	background-color: rgb(108, 116, 130);
}

#btnHover:hover {
	background-color: black;
}

.btn-primary {
    color: #fff;
    background-color: #3655ff;
    border-color: #6C7482;
}
</style>

<body>



	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>
	<!--Header Start-->
	<header
		class="z-index-fixed header-transparent header-absolute-top pt-lg-2">
		<nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
			<div class="container position-relative">
				<a class="navbar-brand" href="/master/MasterPage.do"> <img
					src="/resources/img/logo/white-logo.png" alt="" class="img-fluid">
				</a>
			</div>
		</nav>
	</header>

	<!--Main header-->
	<main class="main-content" id="main-content">
		<section class="position-relative bg-dark text-white">
			<div class="container position-relative py-9 py-lg-15">
				<div class="row pt-9 pt-lg-9">
					<div class="col-xl-9">
						<h1 class="display-4 mb-3">Company</h1>
						<h6>(Approval of company registration)</h6>


					</div>
				</div>
			</div>
		</section>
	</main>

	<!--Main content start-->
	<main>
		<section class="position-relative bg-white">
			<br> <br>
			<div class="container z-index-1 position-relative pb-9 pb-lg-11">


				<h2 class="mb-4"></h2>
				<c:forEach items="${vo}" var="vo" varStatus="status">
					<article
						class="row g-0 mb-4 mb-lg-5 position-relative overflow-hidden hover-lift hover-shadow-lg border rounded-4 card-hover shadow-sm align-items-center">

						<div class="col-md-6 col-lg-5 p-0 p-lg-0">
							<div class="overflow-hidden">
								<img src="/resources/img/master/masterLogo.png" alt=""
									class="img-fluid img-zoom">

							</div>
						</div>
						<div class="col-md-6 col-lg-7">

							<div class="position-relative p-4 p-lg-5">
								<div
									class="d-flex justify-content-start w-100 pb-3 align-items-center">
									<small class="text-muted">업체가입</small>

								</div>
								<div>
									<!-- <h2 class="mb-4"> -->

									<h2 class="mb-4">
										<table>
											<tr>
												<td><h2>${vo.company_id}</h2></td>
											</tr>
											<tr>
												<td><h6>${vo.company_password}</h6></td>
											</tr>
											<tr>
												<td><h6>${vo.company_ph}</h6></td>
											</tr>
											<tr>
												<td><h6>${vo.company_email}</h6></td>
											</tr>
											<tr>
												<td><h6>${vo.company_regnum}</h6></td>
											</tr>
											<tr>
												<td><h6>${vo.company_flag}</h6></td>
											</tr>




										</table>
									</h2>

									<h6>해당 업체(갤러리)를 홈페이지의 가맹 업체로 승인하시습니까?</h6>

									<!-- </h2> -->


									<br> <br>
									<div class="text-end">


										<button type="button" class="btn btn-primary" id="btnHover"
											onclick="companyApproval('${vo.company_id}','${status.count}')">승인</button>

										<button type="button" class="btn btn-primary" id="btnHover"
											onclick="companyRefusal('${vo.company_id}','${status.count}')">거절</button>


										<br> <input type="text" class="approveCompanyInput"
											value=""></input> <input type="text"
											class="approveCompanySign" value=""></input>
									</div>


								</div>
							</div>
						</div>
					</article>
				</c:forEach>


				<!-- 승인 -->
				<form action="/master/masterCompanyUpdate.do" method="get"
					name="frmS">
					<input name="company_id" id="success_id" type="text" hidden>
					<input name="company_flag" id="success_flag" type="text" hidden>
				</form>


				<!-- 거절 -->
				<form action="/master/masterCompanyUpdate.do" name="frmR">
					<input name="company_id" id="recheck_id" type="text" hidden>
					<input name="company_flag" id="recheck_flag" type="text" hidden>
				</form>
			</div>
		</section>

	</main>

	<!--Footer Start-->
	<footer id="footer" class="overflow-hidden position-relative bg-dark text-white">
		<div class="container pt-9 pt-lg-11 pb-5 pb-lg-7 position-relative z-index-1">
			<div class="row mb-5 mb-lg-7">
				<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
					<a href="/master/MasterPage.do">
						<img src="/resources/img/logo/white-logo.png" class="width-10x d-block h-auto mx-md-auto" alt="">
					</a>
				</div>
				<div class="col-md-4 order-md-1 mb-3 mb-md-0">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">Fiennale@gmail.com</a>
				</div>
				<div class="col-md-4 text-md-end order-md-3">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">+82 010-8673-3972</a>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-md-8 order-md-last mb-3 mb-md-0">
					<div class="d-flex flex-wrap justify-content-md-end me-n4">
						<a href="/master/CheckReservation.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Reservation</a>
						<a href="/master/approveCompany.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Company</a>
						<a href="/master/approveExhibition.do"
							class="small text-muted me-4 link-hover-underline my-2 block">Exhibition</a>
						<a href="/master/checkDnRSelect.do"
							class="small text-muted me-4 link-hover-underline my-2 block">D&amp;R List</a>
					</div>
				</div>
				<div class="col-md-4 order-md-1 small">
					<span class="d-block my-2 lh-sm text-muted">&copy; Copyright
						<script>
							document.write(new Date().getFullYear())
						</script>. Fiennale
					</span>
				</div>
			</div>
		</div>
	</footer>

	<!-- begin Back to Top button -->
	<a href="#" class="toTop"> <i class="bx bxs-up-arrow"></i>
	</a>
	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>

</body>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function companyApproval(data, idx) {
		alert(data+"의 등록이 승인되었습니다"); 

		//  데이터 확인 작업 
		// 클릭한 대상의 회사명 : data 
		// 클랙한 대상의 순서 : idx ( 1부터 시작 )
		// 클릭한 대상안에 있는 텍스트박스 선택 : inputText ( 배열이기때문에 0부터 시작이기때문에 idx-1 ) 
		// 		var inputText = document.getElementsByClassName('approveCompanyInput')[idx-1] ;
		// 		alert(data +  " " + inputText)
		// 		inputText.value = data;
		/* document.getElementsByClassName('approveCompanyInput')[idx - 1].value = data;
		document.getElementsByClassName('approveCompanySign')[idx - 1].value = '승인되었습니다'; */

		document.getElementById('success_id').value = data
		document.getElementById('success_flag').value = 'D'

		/* alert(document.getElementById('success_id').value)
		alert(document.getElementById('success_flag').value) */

		/* $(function(){ */
		/* document.hiddenForm.submit(); */
		document.frmS.submit();
		/* }) */

	}
</script>

<script type="text/javascript">
	function companyRefusal(data, idx) {
		alert(data+"의 등록이 거절되었습니다"); 

		//  데이터 확인 작업 
		// 클릭한 대상의 회사명 : data 
		// 클랙한 대상의 순서 : idx ( 1부터 시작 )
		// 클릭한 대상안에 있는 텍스트박스 선택 : inputText ( 배열이기때문에 0부터 시작이기때문에 idx-1 ) 
		// 		var inputText = document.getElementsByClassName('approveCompanyInput')[idx-1] ;
		// 		alert(data +  " " + inputText)
		// 		inputText.value = data;
		/* document.getElementsByClassName('approveCompanyInput')[idx - 1].value = data;
		document.getElementsByClassName('approveCompanySign')[idx - 1].value = '거절되었습니다'; */

		document.getElementById('recheck_id').value = data
		document.getElementById('recheck_flag').value = 'R'

		/* alert(document.getElementById('recheck_id').value)
		alert(document.getElementById('recheck_flag').value) */

		/* $(function(){ */
		/* document.hiddenForm.submit(); */
		document.frmR.submit();
		/* }) */

	}
</script>

<!-- <script type="text/javascript">
var inputBtn = document.querySelectorAll(".btn")
for (var i = 0; i < inputBtn.length; i++) {
		alert("나와제발");

</script> -->




</html>