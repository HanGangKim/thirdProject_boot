<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setCharacterEncoding("UTF-8");%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/simplebar.min.css">
<!--Icons-->
<link href="/resources/fonts/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">
<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--:Simplebar css ()-->
<style type="text/css">
.simplebar-track.simplebar-vertical {
	width: 7px;
}

.simplebar-scrollbar:before {
	background: currentColor;
}

.date {
	margin: 0px;
	color: gray;
}

.mb-4 {
     margin-bottom: 0rem!important; 
}

.navbar-brand {
    padding-top: 2.3125rem;
    padding-bottom: 0.3125rem;
    margin-right: 1rem;
    font-size: 1.25rem;
    white-space: nowrap;
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0px solid #e7e7e7;
    border-radius: 0.375rem;
}

.py-9 {
    padding-top: 4rem!important;
    padding-bottom: 0rem!important; 
}

</style>

<title>QR Code</title>
</head>

<body>

	<%-- <jsp:include page="/header.jsp" /> --%>
	<!--Header Start-->
<header class="z-index-fixed header-transparent header-absolute-top sticky-reverse header-center-logo">
 <nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
  <div class="container justify-content-center position-relative">
      <!--site-logo-->
       <a class="navbar-brand">
        <img src="/resources/img/logo/black-logo.png" alt="" class="img-fluid navbar-brand-sticky">
        <img src="/resources/img/logo/black-logo.png" alt="" class="img-fluid navbar-brand-transparent">
       </a>
     <div class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
      
       <!--navbar action button-->
       
   </div>
   <div class="collapse navbar-collapse" id="mainNavbarTheme">
      <!--Navbar left-->
      <ul class="navbar-nav me-lg-auto">
        <li class="nav-item"> <a href="#" class="nav-link">Home</a> </li>
        <li class="nav-item"> <a href="#" class="nav-link">About</a> </li>
        <li class="nav-item"> <a href="#" class="nav-link">Projects</a> </li>
      </ul>
      <!--Navbar right-->
      <ul class="navbar-nav ms-lg-auto">
         <li class="nav-item"> <a href="#" class="nav-link">Services</a></li>
         <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
      </ul>
    </div>
  </div>
 </nav>
</header>


<c:forEach items="${selectList}" var="vo">
	<!--Main content-->
	<main>
		<section class="position-relative bg-white">
			<div class="container py-9 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-6 col-10 col-sm-7 mx-auto mx-lg-0 mb-lg-0">
						<img src="${vo.exhibition_image}" alt="" style="width: 1500px"
							class="img-fluid card mb-5">
					</div>
					<!--/.col-->
					<div class="col-md-8 col-11 mx-auto col-lg-5">

						<div class="sticky-top top-0">
							<!--Breadcrumbs-->
							<nav class="d-md-flex" aria-label="breadcrumb">
								<ol class="breadcrumb mb-3">
									<p class="date">${vo.exhibition_total_date}</p>
								</ol>
							</nav>
							<!-- Product Description -->
							<div class="pb-4">
								<div class="mb-2">
									<h3>${vo.exhibition_title}</h3>
								</div>
							</div>

							<div class="mb-3">
								<div class="d-flex align-items-center justify-content-between">
									<h6 class="mb-2" style="color: #f15b66;">Location</h6>
								</div>
								<div
									class="d-md-flex d-flex align-items-center justify-content-between">
									<h6>${vo.exhibition_location}</h6>
									
								</div>
								<!--/.size-->
							</div>
							<!--/.size-->

							<div class="d-flex justify-content-between">
								<div>
									<div class="d-flex justify-content-between align-content-stretch">
										<!--정보-->
										<div class="">
											<h6 class="mb-2" style="color: #f15b66;">People</h6>
											<div class="d-flex" role="group"
												aria-label="Basic radio toggle button group">
												<h6>${vo.ticketing_people} 명</h6>
											</div>
										</div>
										<!--/.정보-->
									</div>
								</div>
								
								<div>
									<div class="d-flex justify-content-between align-content-stretch">
										<!--가격-->
										<div class="">
											<h6 class="mb-2" style="color: #f15b66;">Total Price</h6>
											<div class="d-flex" role="group"
												aria-label="Basic radio toggle button group">
												<h6>${vo.ticketing_money}</h6>
											</div>
										</div>
										<!--/.정보-->
									</div>
								</div>
								
								<div>
									<div class="d-flex justify-content-between align-content-stretch">
										<!--정보-->
										<div class="">
											<h6 class="mb-2" style="color: #f15b66;">Ticketing Date</h6>
											<div class="d-flex" role="group"
												aria-label="Basic radio toggle button group">
												<h6>${vo.ticketing_date}</h6>
											</div>
										</div>
										<!--/.정보-->
									</div>
								</div>
							</div>
							
							
							
						</div>
					</div>
					<!--/.col-->
				</div>
			</div>
		</section>
	</main>
</c:forEach>


</body>
<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>
<script src="/resources/vendor/node_modules/js/simplebar.min.js"></script>
</html>
