<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+userId);
System.out.println("세션연결 실패:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
//LogOut.jsp로 이동	
response.sendRedirect("../LogOut.do");	
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">
<!--예매내역-->
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">


<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<!--Icons-->
<link href="/resources/fonts/boxicons/css/boxicons.min.css"
	rel="stylesheet">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">


<title>My Ticket</title>
</head>

<body>
	

	<jsp:include page="../Common/header.jsp" />


	<!--Main content-->
	<main>

		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<%-- <svg class="position-absolute end-0 top-0 text-primary width-14x h-auto w-lg-20"
				width="450" height="426" viewBox="0 0 450 426" fill="none"
				xmlns="http://www.w3.org/2000/svg">
		        <g clip-path="url(#clipPageHeader)">
					<path fill-rule="evenodd" clip-rule="evenodd"
							d="M298.999 -192.241C355.489 -184.29 381.574 -118.483 421.706 -77.9221C452.436 -46.8634 475.477 -12.1582 507.054 18.0386C563.019 71.558 665.455 91.3474 678.539 167.687C690.554 237.781 626.362 310.281 562.498 341.514C500.548 371.812 427.798 307.451 360.652 323.154C299.843 337.375 269.726 418.21 207.597 424.514C139.082 431.466 55.4816 414.802 16.3827 358.087C-23.1945 300.678 21.5018 222.882 20.5205 153.15C19.6978 94.6861 -14.5698 34.0886 11.0842 -18.4478C36.6541 -70.8118 102.021 -85.7884 151.898 -115.896C200.173 -145.036 243.168 -200.099 298.999 -192.241Z"
							fill="currentColor" />
		        </g>
		        <defs>
		          <clipPath id="clipPageHeader">
		            <rect width="450" height="426" fill="white" />
		          </clipPath>
		        </defs>
      		</svg>
			<img src="/resources/img/vectors/dec-brush1.svg"
				class="position-absolute end-0 top-0 me-2 mt-2 me-lg-5 mt-lg-5 fill-warning width-8x h-auto"
				data-inject-svg alt=""> --%>
			<div class="container py-11 py-lg-15 position-relative">
				<div class="row align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb mb-3">
								<li class="breadcrumb-item"><a href="#!">Home</a></li>
								<li class="breadcrumb-item active">Mypage</li>
								<li class="breadcrumb-item active">My Ticket</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">My Ticket</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>




		<!--예매내역카드 섹션 시작-->
		<section class="position-relative">
			<div class="container pb-7 pb-lg-12 pt-7">
				<c:forEach items="${selectList}" var="vo" varStatus="status" >
					<div class="col-lg-10 offset-lg-1" >
						<!--:Wishlist card-->
						<div class="card hover-lift shadow flex-sm-row mb-6 align-items-center">
							
							<!-- 이미지 -->
							<div class="col-sm-5 col-lg-4 mb-4 mb-md-0">
								<a href="./ExhibitionDetail.do?id=${vo.exhibition_id}" class="d-block"> 
									<img src="${vo.exhibition_image}" class="img-fluid card-img">
								</a>
							</div>
							
							<!-- 내용 -->
							<div class="col-sm-7 py-sm-5 py-5 col-12 col-lg-6 offset-lg-1 px-5">
								<a href="./ExhibitionDetail.do?id=${vo.exhibition_id}"
									class="mb-3 d-block text-dark">
									<h4 class="text-truncate">${vo.exhibition_title}</h4>
								</a>
								<p class="lead mb-5">${vo.ticketing_date} Visit</p>
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Place</span> <strong>${vo.exhibition_location}</strong>
								</div>
								<div class="d-flex mb-3 align-items-center">
									<span class="me-3 text-muted">Date</span> <strong>${vo.exhibition_start_date}
										~ ${vo.exhibition_end_date}</strong>
								</div>
								
								<div class="d-flex mb-3 align-items-center">
									<span class="text-muted me-3">Consumer Name</span> <strong>${vo.consumer_name}</strong>

								</div>
								
								<div class="d-flex mb-3 align-items-center">
									<span class="me-3 text-muted">Consumer Number</span> <strong>${vo.consumer_ph}</strong>
								</div>
								
								<div class="d-flex mb-5 align-items-center">
									<span class="me-3 text-muted">People Count</span> <strong>${vo.ticketing_people}</strong>
								</div>
								
							
								
								<c:if test="${vo.ticketing_flag eq 'Y'}">
								<!--QR 확인버튼-->
								<div class="d-grid pb-4 pb-md-0" id="finish">
									<!-- QR -->
									<a class="btn btn-primary mb-2 disabled">Move To Qr</a> 
									<!-- 후기작성 -->
		                            <a onclick="flag_toggle()" class="btn btn-dark disabled">Write Review</a>
								</div>
								</c:if>
								
								<c:if test="${vo.ticketing_flag eq 'N'}">
								<!-- 리뷰 미작성시 -->
								<div class="d-grid pb-4 pb-md-0" id="noneFinish">
									<!-- QR -->
									<a href="#" class="btn btn-primary" style="margin-bottom: 10px;" data-bs-target="#modal-qr-bar-${vo.exhibition_id}" data-bs-toggle="modal">Move To Qr</a> 
									<!-- 후기작성 -->
		                           <a onclick="hiddenFormSubmit('${vo.exhibition_id}','${vo.customer_id}','${vo.ticketing_id}', '${vo.exhibition_title}')" class="btn btn-dark">Write Review</a>
								</div>
								</c:if>
							</div>
						</div>
						<!--:Wishlist card-->	
					</div>
					
					
					<!-- qr 모달 시작 -->
					<div id="modal-qr-bar-${vo.exhibition_id}" class="modal fade" tabindex="-1" aria-labelledby="modal-qr-bar-${vo.exhibition_id}" aria-hidden="true">
						<div class="modal-dialog modal-dialog-top modal-md">
							<div class="modal-content position-relative border-0">
								<div class="position-relative px-4">
									<div class="position-absolute mt-2 end-0 width-7x top-0 d-flex align-items-center justify-content-center">
										<button type="button" class="btn-close w-auto small"
											data-bs-dismiss="modal" aria-label="Close">
											<i class="bx bx-x fs-4 me-2"></i>
										</button>
									</div>

									<div class="align-items-center row mb-2">
										<div class="mt-10 d-flex flex-column align-items-center">
											<label class="form-label h6" for="profile_name">${vo.exhibition_title}</label>
											<!-- QR 이미지 -->
											<img id="imgId"  src="https://chart.apis.google.com/chart?cht=qr&chs=300x300&chl=http://fiennale.shop/exhibition/ExhibitionTicketingSelect.do?ticketing_id=${vo.ticketing_id}%26id=${vo.customer_id}">
										</div>
									</div>

								</div>
							</div>
						</div>
					</div>
					<!-- qr 모달 끝 -->
				</c:forEach>
				
				
			<!-- NullCheck forEach -->
			<c:forEach items="${nullCheck}" var="vo" varStatus="status" > 
				<div class="col-lg-10 offset-lg-1" >
					<!--:Wishlist card-->
					<div class="card hover-lift shadow flex-sm-row mb-6 align-items-center">
						
						<!-- 이미지 -->
						<div class="col-sm-5 col-lg-4 mb-4 mb-md-0">
							<a class="d-block"> 
								<img src="/resources/img/master/masterLogo.png" class="img-fluid card-img" alt="">
							</a>
						</div>
						
						<!-- 내용 -->
						<div class="col-sm-7 py-sm-5 py-5 col-12 col-lg-6 offset-lg-1 px-5">
							<a class="mb-3 d-block text-dark">
									<h4 class="text-truncate">${nullCheck}</h4>
							</a>
							<p class="lead mb-5"></p>
							<div class="d-flex mb-3 align-items-center">
								<span class="text-muted me-3">Place</span> <strong>Sample Place</strong>
							</div>
							<div class="d-flex mb-3 align-items-center">
								<span class="me-3 text-muted">Date</span> <strong>Sample Date</strong>
							</div>
							
							<div class="d-flex mb-3 align-items-center">
								<span class="text-muted me-3">Consumer Name</span> <strong>Sample Name</strong>

							</div>
							
							<div class="d-flex mb-3 align-items-center">
								<span class="me-3 text-muted">Consumer Number</span> <strong>Sample Number</strong>
							</div>
							
							<div class="d-flex mb-0 align-items-center">
								<span class="me-3 text-muted">People Count</span> <strong>Sample Count</strong>
							</div>
						</div>
					</div>
					<!--:Wishlist card-->	
				</div>
			</c:forEach>
				
				
				
			</div>
		</section>
		<!--예매내역카드 섹션 끝-->
		
	</main>
	<!-- /Main content -->
	
	<form id="hiddenForm" name="hiddenForm" action="/customer/CustomerExhibitionReviewWrite.do" method="post">
		<input type="hidden" id="ex_id" name="exhibition_id" value="">
		<input type="hidden" id="cus_id" name="customer_id" value="">
	    <input type="hidden" id="tic_id" name="ticketing_id" value="">
	    <input type="hidden" id="ex_tit" name="exhibition_title" value=""> 
	</form>
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <script type="text/javascript">
    function hiddenFormSubmit(ex_id, cus_id, tic_id, ex_tit){
       
       $('#ex_id').val(ex_id);
       $('#cus_id').val(cus_id);
       $('#tic_id').val(tic_id);
       $('#ex_tit').val(ex_tit);
       
       document.hiddenForm.submit();
       
    }
    </script>

	<jsp:include page="../Common/footer.jsp" />


</body>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

</html>