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
// response.sendRedirect("../LogOut.do");	
}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">
<!--찜목록-->
<head>

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico">

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

<title>My Wishlist</title>

</head>

<body>
	<jsp:include page="../Common/header.jsp" />

	<!--Main content-->
	<main>

		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<%-- <svg
				class="position-absolute end-0 top-0 text-primary width-14x h-auto w-lg-20"
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
								<li class="breadcrumb-item active">My Wishlist</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">My Wishlist</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<section class="position-relative bg-white">
			<div class="container pb-7 pb-lg-12 pt-7 position-relative">
				<div class="row justify-content-between">
					<div class="col-lg-10  mx-auto">

						<!--Cart table start-->
						
						<div class="table-responsive">
							<table class="table table-striped align-middle">
								<thead>
									<tr>
										<th></th>
										<th class="small text-muted">
											<div style="min-width: 180px">Product</div>
										</th>
										<th class="small text-muted">Date</th>
										<th class="small text-muted">location</th>
										<th class="small text-muted">Price</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<c:forEach items="${vo}" var="vo">
								<form action="/customer/customerWishDelete.do" method="post">
										<input name="id" value="<%=userId %>" hidden="hidden">
										<tr>
											<td><img src="${vo.exhibition_image}" class="width-7x rounded-3"></td>
											<td style="width: 36%">
												<a href="/exhibition/ExhibitionDetail.do?id=${vo.exhibition_id}" class="text-dark h6" name="ExId">${vo.exhibition_title}</a>
												<input type="hidden" name="ExId" value="${vo.exhibition_id}">
											</td>
											<td>${vo.exhibition_total_date}</td>
											<td>${vo.exhibition_location}</td>
											<td class="text-truncate">${vo.exhibition_price} won</td>
											<td>
												<button class="btn-close text-center" type="submit">
												
<!-- 													<a href="/customer/CustomerWishDelete.do"> -->
													<svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="20" fill="currentColor">
                          								<path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z" />
                        							</svg>
<!--                         							</a> -->
												</button>
											</td>
										</tr>

									</form>
									</c:forEach>
									
									
										<!-- 값이 null 일 경우 -->
										<c:forEach items="${nullCheck}" var="nullCheck">
										<tr>
											<td><img src="" class="width-7x rounded-3"></td>
											<td style="width: 36%">
												<!--  -->
												<a href="#" class="text-dark h6" name="ExId">${nullCheck}</a>
												
											</td>
											<td></td>
											<td></td>
											<td class="text-truncate"></td>
											<td>
												<button class="btn-close text-center" type="submit">
												
<!-- 													<a href="/customer/CustomerWishDelete.do"> -->
													<!-- <svg xmlns="http://www.w3.org/2000/svg" height="16" viewBox="0 0 24 24" width="20" fill="currentColor">
                          								<path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z" /> -->
                        							<!-- </svg> -->
<!--                         							</a> -->
												</button>
											</td>
										</tr>
									</c:forEach>


								</tbody>
							</table>
						</div>

						<!-- 버튼 -->
						<div class="d-flex flex-column flex-sm-row justify-content-sm-between align-items-center">
							<!--전시회 목록보기-->
							<div class="mb-3 mb-sm-0">
								
							</div>
							<!--예매하기 버튼-->
							<div>
								<a href="/exhibition/ExhibitionDate.do" class="btn btn-primary">Continue
									exhibition</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
<jsp:include page="../Common/footer.jsp" />

</body>
<!-- <script>history.replaceState({}, null, location.pathname);</script> -->

</html>