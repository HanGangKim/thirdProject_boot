<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Fiennale - Master</title>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

<!--Bootstrap icons-->
<link href="/resources/fonts/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<!--Google web fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Mono&family=Open+Sans:wght@300..800&display=swap"
	rel="stylesheet">

<!--Simplebar css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/simplebar.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<!--Main style-->
<link rel="stylesheet" href="/resources/css/style.min.css"
	id="switchThemeStyle">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">
</head>
<style>
.mb-4 {
	margin-bottom: 5.5rem !important;
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
						<h1 class="display-4 mb-3">Reservation</h1>
						<h6>(Check the reservation rate)</h6>
					</div>
				</div>
				<!--/.row-->
			</div>
			<!--/.content-->
		</section>
		<!--/section-->
	</main>

	<!--App Start-->
	<div class="d-flex flex-column flex-root">
		<!--Page-->
		<div class="page d-flex flex-row flex-column-fluid">


			<!--///Sidebar close button for 991px or below devices///-->
			<div class="sidebar-close d-lg-none">
				<a href="#"></a>
			</div>
			<!--///.Sidebar close end///-->


			<!--///////////Page content wrapper///////////////-->
			<main class="d-flex flex-column flex-row-fluid">



				<!--//Page Toolbar End//-->
				<!--//Page content//-->
				<div class="content pb-0 p-12 d-flex flex-column-fluid">
					<div class="container-fluid px-0">
						<div class="row">
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Ticketing Top / Gender Rate</h5>
									</div>
									<div class="card-body p-0 d-flex align-items-center justify-content-center" style="height: 600px">
										<center>
											<img src="http://xdo19.cafe24.com/resources/img/visualizing/ticking_top_N_second.jpg" style="height: 500px"> 
											<img src="http://xdo19.cafe24.com/resources/img/visualizing/gender_rate_second.jpg" style="height: 500px">
										</center>
									</div>
								</div>
							</div>
							<div class="col-12 col-lg-12 mb-4">
								<div class="card overflow-hidden">
									<div class="card-header border-bottom-0">
										<h5 class="mb-0">Ticketing Top / Gender Rate</h5>
									</div>
									<div class="card-body p-0 d-flex align-items-center justify-content-center" style="height: 600px">
										<center>
											<img src="http://xdo19.cafe24.com/resources/img/visualizing/ticking_top_N_line&bar_second.jpg" style="height: 500px"> 
											<img src="http://xdo19.cafe24.com/resources/img/visualizing/gender_bar_second.jpg" style="height: 500px">
										</center>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--//Page content End//-->
				
				
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
	
				
				
			</main>
			<!--///////////Page content wrapper End///////////////-->
		</div>
	</div>


	
	

	<!--////////////Theme Core scripts Start/////////////////-->

	<script src="/resources/vendor/feather.min.js"></script>
	<script src="/resources/js/theme.bundle.js"></script>
	<script>
		feather.replace()
	</script>

	<!--////////////Theme Core scripts End/////////////////-->
</body>
</html>