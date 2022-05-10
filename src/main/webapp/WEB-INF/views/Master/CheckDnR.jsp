<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

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


<title>Fiennale - Master</title>
</head>
<style>
.nav-tabs .nav-link:not(:first-child) {
	margin-left: 0rem;
}

.mb-5 {
	margin-bottom: 1.5rem !important;
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

	<!--Main content-->
	<main class="main-content" id="main-content">
		<section class="position-relative bg-dark text-white">
			<div class="container position-relative py-9 py-lg-15">
				<div class="row pt-9 pt-lg-9">
					<div class="col-xl-9">
						<h1 class="display-4 mb-3">D&R List</h1>
						<h6>(check the approval List and Reject List)</h6>


					</div>
				</div>
				<!--/.row-->
			</div>
			<!--/.content-->
		</section>
		<!--/section-->
	</main>

	<!--Main content start-->
	<main>


		<section class="position-relative overflow-hidden">
			<!--Divider shape-->
			<svg class="w-100 text-white position-absolute bottom-0 start-0"
				preserveAspectRatio="none" width="1200" height="80"
				viewBox="0 0 1200 148" fill="none"
				xmlns="http://www.w3.org/2000/svg">
          <path fill-rule="evenodd" clip-rule="evenodd"
					d="M0 126.857L1200 0V148H0V126.857Z" fill="currentColor" />
        </svg>
			<div class="container-fluid px-xl-9 position-relative py-9 py-lg-11 z-index-1">
				<!--Tabs-->
				<div>

					<!-- 회사/전시 탭 -->	
					<div class="text-center">
						<nav class="nav nav-fill nav-tabs mb-7 mb-lg-9">
							<a href="#feature_tab_1"
								class="nav-link py-3 flex-shrink-0 active" data-bs-toggle="tab"
								aria-expanded="true">
								<h6 class="text-reset mb-0">Company</h6>
							</a>
							<a href="#feature_tab_3" class="nav-link py-3 flex-shrink-0"
								data-bs-toggle="tab" aria-expanded="false">
								<h6 class="text-reset mb-0">Exhibition</h6>
							</a>
						</nav>
					</div>

					<!-- 리스트 -->
					<div class="tab-content">
						<!-- 회사 리스트 -->
						<div class="tab-pane show fade active" id="feature_tab_1">
							<div class="row align-items-center justify-content-between">
								<div class="col-lg-5 col-xl-4 me-lg-auto" data-aos="fade-up"
									data-aos-delay="100">
									<!--Subtitle-->
									<p class="mb-4 badge bg-info px-3 py-2 rounded-pill">Company</p>

									<!--Title-->
									<div class="mb-lg-4 display-4">
										<span>Company D&R List</span><br />
									</div>
									<div class="d-flex align-items-center mb-4">
										<div>
											<p class="mb-0">
												Hello admin:) <br> Welcome to Fiennale! Please check
												the approval and rejection details of the company here
											</p>
										</div>
									</div>
								</div>
								<div class="row mb-3">
									<!-- 회사 승인 리스트 -->
									<div class="col-sm-6">
										<div class="card card-body border-0">
											<span class="input-icon d-flex"> <i
												class="bx d-flex bx-message-alt-check me-8"
												style="align-items: center; display: flex;"> <strong><h5>&nbsp;Approval
															List / 승인리스트</h5></strong></i>
												<form name="searchCompanyIdD"
													action="/master/masterCompanySearchTitleD.do" method="post">
													<div class="position-relative d-flex">
														<i
															class="bx bx-search-alt-2 small ms-3 opacity-50 position-absolute start-0 top-50 translate-middle-y"></i>
														<input type="text" id="companyWordD" name="company_name"
															class="form-control ps-6" placeholder="search company...">
													</div>
												</form>


											</span>
											<!-- <p><strong><h5>승인리스트 / Approval List</h5></strong></p> -->
											<br>
											<div id="searchCompanyD">
												<c:forEach items="${covo}" var="vo">
													<c:if test="${vo.company_flag eq 'D'}">
														<article
															class="d-flex card-hover mb-4 align-items-stretch"
															id="companyListD">
															<div class="me-3">
																<a href="#!"
																	class="overflow-hidden rounded-3 shadow d-block"> <img
																	src="/resources/img/master/masterLogo.png" alt="Image"
																	class="width-9x img-zoom">
																</a>
															</div>
															<div class="flex-gropw-1 justify-content-between">
																<a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_name}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_ph}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_email}</h6>
																</a>

																<div class="d-flex justify-content-between">
																	<small class="mb-0"> <a href="#!">Fiennale</a>
																	</small>
																</div>
															</div>
														</article>
													</c:if>
												</c:forEach>
											</div>

										</div>
									</div>
									
									<!-- 회사 거절 리스트 -->
									<div class="col-sm-6">
										<div class="card card-body border-0">
											<span class="input-icon d-flex"> <i
												class="bx d-flex bx-message-alt-x me-8"
												style="align-items: center; display: flex;"> <strong><h5>&nbsp;Rejection
															List / 거절리스트</h5></strong></i>
												<form name="searchCompanyIdR"
													action="/master/masterCompanySearchTitleR.do">
													<div class="position-relative d-flex">
														<i
															class="bx bx-search-alt-2 small ms-3 opacity-50 position-absolute start-0 top-50 translate-middle-y"></i>
														<input type="text" id="companyWordR" name="company_name"
															class="form-control ps-6" placeholder="search company...">
													</div>
												</form>
											</span>
											<!-- <p><strong><h5>거절리스트 / Rejection List</h4></strong></p> -->
											<br>


											<div id="searchCompanyR">
												<c:forEach items="${covo}" var="vo">
													<c:if test="${vo.company_flag eq 'R'}">
														<article
															class="d-flex card-hover mb-4 align-items-stretch"
															id="companyListR">
															<div class="me-3">
																<a href="#!"
																	class="overflow-hidden rounded-3 shadow d-block"> <img
																	src="/resources/img/master/masterLogo.png" alt="Image"
																	class="width-9x img-zoom">
																</a>
															</div>
															<div class="flex-gropw-1 justify-content-between">
																<a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_name}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_ph}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.company_email}</h6>
																</a>

																<div class="d-flex justify-content-between">
																	<small class="mb-0"> <a href="#!">Fiennale</a>
																	</small>
																</div>
															</div>
														</article>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ./회사 리스트 -->

						<!-- 전시 리스트 -->
						<div class="tab-pane fade" id="feature_tab_3">
							<div class="row align-items-center justify-content-between">
								<div class="col-lg-6 ms-auto mb-5 mb-lg-0 order-lg-last">
								</div>
								<div class="col-lg-5 col-xl-4 me-auto" data-aos="fade-up"
									data-aos-delay="100">
									<!--Subtitle-->
									<p class="mb-4 badge bg-info px-3 py-2 rounded-pill">Exhibition</p>
									<!--Title-->
									<h2 class="mb-4 display-4 me-lg-n18">Exhibition D&R List</h2>
									<p class="mb-5">
										Hello admin:) <br> Welcome to Fiennale! Please check the
										approval and rejection details of the exhibition here
									</p>

								</div>
								<div class="row mb-3">
									<div class="col-sm-6">
												<!-- 전시 승인 리스트 -->
										<div class="card card-body border-0">
											<span class="input-icon d-flex"> <i
												class="bx d-flex bx-message-alt-check me-8"
												style="align-items: center; display: flex;"> <strong><h5>&nbsp;Approval
															List / 승인리스트</h5></strong></i>
												<form name="searchExhibitionTitleD"
													action="/master/masterExhibitionSearchTitleD.do">
													<div class="position-relative">
														<i
															class="bx bx-search-alt-2 small ms-3 opacity-50 position-absolute start-0 top-50 translate-middle-y"></i>
														<input type="text" id="exhibitionWordD"
															name="exhibition_name" class="form-control ps-6"
															placeholder="search exhibition..."
															onkeyup="characterCheck()" onkeydown="characterCheck()">
													</div>
												</form> 
												
												<!-- 특수문자 검색 방지 스크립트 -->
												<script type="text/javascript">
													function characterCheck() {
														var RegExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g; //정규식 구문
														var obj = document
																.getElementById("exhibitionWordD")
														if (RegExp
																.test(obj.value)) {
															alert("특수문자는 입력하실 수 없습니다.");
															obj.value = obj.value
																	.substring(
																			0,
																			obj.value.length - 1);//특수문자를 지우는 구문
														}
													}
												</script>
											</span>
											<br>
											<div id="searchExhibitionD">
												<c:forEach items="${exvo}" var="vo" varStatus="status">
													<c:if test="${vo.exhibition_flag eq 'D'}">
														<article
															class="d-flex card-hover mb-4 align-items-stretch">
															<div class="me-3">
																<a href="#!"
																	class="overflow-hidden rounded-3 shadow d-block"> <img
																	src="${vo.exhibition_image}" alt="Image"
																	class="width-9x img-zoom">
																</a>
															</div>
															<div class="flex-gropw-1 justify-content-between">
																<a href="#!" class="text-dark">
																	<h6 class="mb-2 mt-2 text-reset">${vo.exhibition_title}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.exhibition_location}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.exhibition_total_date}</h6>
																</a>

																<div class="d-flex justify-content-between">
																	<small class="mb-0"> <a href="#!">Fiennale</a>
																	</small>
																</div>
															</div>
														</article>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
									
									<!-- 전시 거절 리스트 -->
									<div class="col-sm-6">
										<div class="card card-body border-0">
											<span class="input-icon d-flex"> <i
												class="bx d-flex bx-message-alt-x me-8"
												style="align-items: center; display: flex;"> <strong><h5>&nbsp;Rejection
															List / 거절리스트</h5></strong></i>
												<form name="searchExhibitionTitleR"
													action="/master/masterExhibitionSearchTitleR.do">
													<div class="position-relative">
														<i
															class="bx bx-search-alt-2 small ms-3 opacity-50 position-absolute start-0 top-50 translate-middle-y"></i>
														<input type="text" id="exhibitionWordR"
															name="exhibition_name" class="form-control ps-6"
															placeholder="search exhibition..."
															onkeyup="characterCheckR()" onkeydown="characterCheckR()">
													</div>
												</form> 
												
												<!-- 특수문자 검색 방지 스크립트 -->
												<script type="text/javascript">
													function characterCheckR() {
														var RegExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g; //정규식 구문
														var obj = document
																.getElementById("exhibitionWordR")
														if (RegExp.test(obj.value)) {
															alert("특수문자는 입력하실 수 없습니다.");
															obj.value = obj.value
																	.substring(
																			0,
																			obj.value.length - 1);//특수문자를 지우는 구문
														}
													}
												</script>
											</span>
											<br>
											<div id="searchExhibitionR">
												<c:forEach items="${exvo}" var="vo" varStatus="status">
													<c:if test="${vo.exhibition_flag eq 'R'}">
														<article
															class="d-flex card-hover mb-4 align-items-stretch">
															<div class="me-3">
																<a href="#!"
																	class="overflow-hidden rounded-3 shadow d-block"> <img
																	src="${vo.exhibition_image}" alt="Image"
																	class="width-9x img-zoom">
																</a>
															</div>
															<div class="flex-gropw-1 justify-content-between">
																<a href="#!" class="text-dark">
																	<h6 class="mb-2 mt-2 text-reset">${vo.exhibition_title}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.exhibition_location}</h6>
																</a> <a href="#!" class="text-dark">
																	<h6 class="mb-2 text-reset">${vo.exhibition_total_date}</h6>
																</a>

																<div class="d-flex justify-content-between">
																	<small class="mb-0"> <a href="#!">Fiennale</a>
																	</small>
																</div>
															</div>
														</article>
													</c:if>
												</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ./전시 리스트 -->
						
					</div>
				</div>
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


	<!-- scripts -->
	<script src="/resources/js/theme.bundle.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<!-- 검색모달 기능 JS  -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>


	<!-- 비동기 검색기능 CompanyD -->
	<script type="text/javascript">
		$(function() {
			$('#companyWordD').keyup(function() {

				/* 검색어 변수 */
				var word = document.getElementById('companyWordD').value;

				/* ajax 시작 */
				$.ajax({
					type : 'POST',
					url : '/master/masterCompanySearchTitleD.do',
					data : {
						"company_name" : word
					},
					success : function(data) {
						/* console.log(data) */

						$('#searchCompanyD').empty();

						companyNameD(data);

					},

					error : function(err) {
						alert('에러다 이자식아')
					}

				})

			})
		})

		function companyNameD(data) {

			console.log(typeof data)
			console.log(data)

			$('#searchCompanyD').empty();

			for (key in data) {
				console.log(data[key].company_name)

				var str = "";

				str += '<article class="d-flex card-hover mb-4 align-items-stretch" id="companyListD">';
				str += '<div class="me-3">';
				str += '<a href="#!" class="overflow-hidden rounded-3 shadow d-block">';
				str += '<img src="/resources/img/master/masterLogo.png" alt="Image" class="width-9x img-zoom"></a></div>';
				str += '<div class="flex-gropw-1 justify-content-between">';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_name
						+ '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_ph
						+ '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_email
						+ ' </h6></a>';
				str += '<div class="d-flex justify-content-between">';
				str += '<small class="mb-0"> <a href="#!">Fiennale</a></small></div></div></article>';

				$('#searchCompanyD').append(str);

			}

		}
	</script>

	<!-- 비동기 검색기능 CompanyR -->
	<script type="text/javascript">
		$(function() {
			$('#companyWordR').keyup(function() {

				/* 검색어 변수 */
				var word = document.getElementById('companyWordR').value;

				/* ajax 시작 */
				$.ajax({
					type : 'POST',
					url : '/master/masterCompanySearchTitleR.do',
					data : {
						"company_name" : word
					},
					success : function(data) {
						/* console.log(data) */

						$('#searchCompanyR').empty();

						companyNameR(data);

					},

					error : function(err) {
						alert('에러다 이자식아')
					}

				})

			})
		})

		function companyNameR(data) {

			console.log(typeof data)
			console.log(data)

			$('#searchCompanyR').empty();

			for (key in data) {
				console.log(data[key].company_name)

				var str = "";

				str += '<article class="d-flex card-hover mb-4 align-items-stretch" id="companyListD">';
				str += '<div class="me-3">';
				str += '<a href="#!" class="overflow-hidden rounded-3 shadow d-block">';
				str += '<img src="/resources/img/master/masterLogo.png" alt="Image" class="width-9x img-zoom"></a></div>';
				str += '<div class="flex-gropw-1 justify-content-between">';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_name
						+ '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_ph
						+ '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">' + data[key].company_email
						+ ' </h6></a>';
				str += '<div class="d-flex justify-content-between">';
				str += '<small class="mb-0"> <a href="#!">Fiennale</a></small></div></div></article>';

				$('#searchCompanyR').append(str);

			}

		}
	</script>

	<!-- 비동기 검색기능 ExhibitionD -->
	<script type="text/javascript">
		$(function() {
			$('#exhibitionWordD').keyup(function() {

				/* 검색어 변수 */
				var word = document.getElementById('exhibitionWordD').value;

				/* ajax 시작 */
				$.ajax({
					type : 'POST',
					url : '/master/masterExhibitionSearchTitleD.do',
					data : {
						"exhibition_title" : word
					},
					success : function(data) {
						console.log(data)

						$('#searchExhibitionD').empty();

						ExhibitionTitleD(data);

					},

					error : function(err) {
						alert('에러다 이자식아')
					}

				})

			})
		})

		function ExhibitionTitleD(data) {

			console.log(typeof data)
			console.log(data)

			$('#searchExhibitionD').empty();

			for (key in data) {
				console.log(data[key].exhibition_title)

				var str = "";

				str += '<article class="d-flex card-hover mb-4 align-items-stretch">';
				str += '<div class="me-3">';
				str += '<a href="#!" class="overflow-hidden rounded-3 shadow d-block">';
				str += '<img src=" '+ data[key].exhibition_image +' " alt="Image" class="width-9x img-zoom"></a></div>';
				str += '<div class="flex-gropw-1 justify-content-between">';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 mt-2 text-reset">'
						+ data[key].exhibition_title + ' </h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">'
						+ data[key].exhibition_location + '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">'
						+ data[key].exhibition_total_date + ' </h6></a>';
				str += '<div class="d-flex justify-content-between">';
				str += '<small class="mb-0"> <a href="#!">Fiennale</a></small></div></div></article>';

				$('#searchExhibitionD').append(str);

			}

		}
	</script>
	
	
	<!-- 비동기 검색기능 ExhibitionR -->
	<script type="text/javascript">
		$(function() {
			$('#exhibitionWordR').keyup(function() {

				/* 검색어 변수 */
				var word = document.getElementById('exhibitionWordR').value;
				

				/* ajax 시작 */
				$.ajax({
					type : 'POST',
					url : '/master/masterExhibitionSearchTitleR.do',
					data : {
						"exhibition_title" : word
					},
					success : function(data) {
						console.log(data)

						$('#searchExhibitionR').empty();

						ExhibitionTitleR(data);

					},

					error : function(err) {
						alert('에러다 이자식아')
					}

				})

			})
		})

		function ExhibitionTitleR(data) {

			console.log(typeof data)
			console.log(data)

			$('#searchExhibitionR').empty();

			for (key in data) {
				console.log(data[key].exhibition_title)

				var str = "";

				str += '<article class="d-flex card-hover mb-4 align-items-stretch">';
				str += '<div class="me-3">';
				str += '<a href="#!" class="overflow-hidden rounded-3 shadow d-block">';
				str += '<img src=" '+ data[key].exhibition_image +' " alt="Image" class="width-9x img-zoom"></a></div>';
				str += '<div class="flex-gropw-1 justify-content-between">';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 mt-2 text-reset">'
						+ data[key].exhibition_title + ' </h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">'
						+ data[key].exhibition_location + '</h6></a>';
				str += '<a href="#!" class="text-dark">';
				str += '<h6 class="mb-2 text-reset">'
						+ data[key].exhibition_total_date + ' </h6></a>';
				str += '<div class="d-flex justify-content-between">';
				str += '<small class="mb-0"> <a href="#!">Fiennale</a></small></div></div></article>';

				$('#searchExhibitionR').append(str);

			}

		}
	</script>

	



</body>




</html>