<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
// 세션 연결
if (session.getAttribute("userId") == null) {
	// 세션 연결에 실패하면 null	
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 실패:" + userId);
	System.out.println("세션연결 실패:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
	System.out.println("세션연결 성공:" + userId);
	System.out.println("세션연결 성공:" + userName);
	System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
}
%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="icon" href="/resources/img/favicon.ico" type="image/ico" />

<!--Box Icons-->
<link rel="stylesheet"
	href="/resources/fonts/boxicons/css/boxicons.min.css" />

<!--Iconsmind Icons-->
<link rel="stylesheet" href="/resources/fonts/iconsmind/iconsmind.css" />

<!--Select style-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<!--Swiper slider-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/swiper-bundle.min.css" />

<!-- Aos Animations CSS -->
<link href="/resources/vendor/node_modules/css/aos.css" rel="stylesheet">

<!--Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">


<title>Review</title>
</head>

<body>



	<jsp:include page="../Common/header.jsp" />


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
								<li class="breadcrumb-item active">Review</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Review</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<!-- 전시회 검색 섹션 -->
		<section class="top-0">
			<div class="container col-11">
				<form action="/exhibition/getReviewList.do"
					class="position-relative z-index-1 mt-n7 px-3 pb-3 pt-3 bg-white border rounded-3">
					<div class="row mx-0 g-2 align-items-center">
						<div class="col-md-9 col-lg-10">
							<div class="position-relative">
								<input type="text" id="p_location" 
									class="form-control border-0 shadow-none form-control-lg ps-4"
									placeholder="Search..." name="searchKeyword"  id="searchInputBox" onkeydown="characterCheck()"  onkeyup="characterCheck()">
							</div>
						</div>
						<div class="col-md-3 col-lg-2">
							<button type="submit" class="btn btn-primary btn-lg w-100" onsubmit="characterCheck()">
								Search</button>
						</div>
					</div>
				</form>
			</div>
		</section>
		<!-- /전시회 검색 섹션 -->
		<!-- 전시회 검색 끝  -->
					<script type="text/javascript">
					function characterCheck() {
			            var RegExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g; //정규식 구문
			            var obj = document.getElementsByName("searchKeyword")[0]
			            if (RegExp.test(obj.value)) {
			                alert("특수문자는 입력하실 수 없습니다.");
			                obj.value = obj.value.substring(0, obj.value.length - 1);//특수문자를 지우는 구문
			            }
			        }
					</script>
		
		

		<!-- 리뷰 리스트 -->
		<section class="position-relative bg-white">
			<div class="container col-11 py-9 py-lg-11">
				<div class="row mb-5" id="more_list">
					<c:forEach items="${reviewList}" var="vo" varStatus="status">
						<div class="col-md-6 col-lg-4">
							<!--Property-item-row-->
							<div class="card rounded-4 mb-5 " data-aos="fade-up">

								<div class="mb-0">
									<a href="#!" class="d-block overflow-hidden rounded-top-4"
										data-bs-target="#modal-pay-bar-${vo.review_id}"
										data-bs-toggle="modal"> 
										<img src="${vo.exhibition_image}" class="img-fluid w-100" alt="${vo.exhibition_title}" style="max-height:550px;">
									</a>
								</div>

								<div class="card-body overflow-hidden p-4 px-lg-5 flex-grow-1">
									<a href="#!" class="text-dark d-block mb-4"
										data-bs-target="#modal-pay-bar-${vo.review_id}"
										data-bs-toggle="modal">
										<h4 class="text-truncate">${vo.exhibition_title}</h4>
									</a>
									<div class="row mb-lg-3">
										<div class="col-3" data-bs-toggle="tooltip"
											data-bs-placement="top" title=""
											data-bs-original-title="Bedrooms">
											<div class="d-flex align-items-center">
												<strong class="small">${vo.review_date}</strong>
											</div>
										</div>
									</div>

									<p class="mb-4 mb-lg-5 text-truncate">${vo.review_contents}</p>

									<div
										class="row justify-content-between justify-content-lg-start">
										<div class="col-6">
											<!--Price-->
											<h4 class="mb-0">
												<i class="bx bx-star me-2"></i>${vo.review_star_score}</h4>
										</div>
										<div class="col-6">
											<!--Agent-->
											<div
												class="d-flex align-items-center justify-content-end flex-shrink-0">
												<!-- 												<img src="/resources/img/avatar/2.jpg" class="flex-shrink-0 flex-shrink-0 avatar sm rounded-circle me-2 img-fluid"> -->
												<span class="small"> ${vo.customer_id} </span>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>

						<!-- 후기 상세 모달 시작 -->
			<!-- 						후기 상세 모달 시작 -->
						<div id="modal-pay-bar-${vo.review_id}" class="modal fade" tabindex="-1" aria-labelledby="modal-pay-bar-${vo.review_id}" aria-hidden="true">
							<div class="modal-dialog modal-dialog-top modal-md" style="max-width: 700px;">
								<div class="modal-content position-relative border-0">
									<div class="position-relative px-4">
										<div class="position-absolute mt-2 end-0 width-7x top-0 d-flex align-items-center justify-content-center">
											<button type="button" class="btn-close w-auto small"
												data-bs-dismiss="modal" aria-label="Close">
												<i class="bx bx-x fs-4 me-2"></i>
											</button>
										</div>

										<div class="align-items-center row mb-2 justify-content-between">
											<!-- 전시회 이미지 -->
											<div class="mt-7 mt-md-3 col-md-6" >
												<a href="#!" class="d-block overflow-hidden">
													<img src="${vo.exhibition_image}" class="img-fluid w-100">
												</a>
											</div>

											<div class="mt-5 align-items-center col-md-6">
												<!-- 전시회 이름 -->
												<div class="mb-3">
													<label class="form-label" for="profile_name">전시회 이름</label>
													<input type="text" placeholder="전시회명"
														value="${vo.exhibition_title}" readonly="readonly"
														class="form-control">
												</div>
												<!-- 별점 -->
												<div class="mb-3">
													<label class="form-label" for="profile_name">별점</label> <input
														type="text" placeholder="별점"
														value="${vo.review_star_score}" readonly="readonly"
														class="form-control">
												</div>
												<!-- 후기 제목 -->
												<div class="mb-3">
													<label class="form-label" for="profile_name">후기 제목</label>
													<input type="text" placeholder="후기제목"
														value="${vo.review_title}" readonly="readonly"
														class="form-control">
												</div>
												<!-- 작성자 이름 -->
												<div class="mb-3 ">
													<label class="form-label" for="profile_name">작성자</label> <input
														type="text" placeholder="작성자" value="${vo.customer_id}"
														class="form-control" readonly="readonly">
												</div>
												<!-- 작성일 -->
												<div class="mb-3">
													<label class="form-label" for="profile_name">작성일</label> <input
														type="text" placeholder="작성일" value="${vo.review_date}"
														class="form-control" readonly="readonly">
												</div>
											</div>

										</div>
										<div class="align-items-center row">
											<!-- 후기 내용 -->
											<div class="mb-4">
												<label class="form-label" for="profile_name">내용</label> 
												<textarea  placeholder="내용" readonly="readonly"
													class="form-control" style="height: 150px;">${vo.review_contents}</textarea>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
<!-- 						후기 상세 모달 끝 -->
			
			
			
			
						<!-- 후기 상세 모달 끝 -->
						
						
						
						
						
					</c:forEach>
				</div>

				<div
					class="d-grid d-sm-flex col-11 justify-content-center justify-content-sm-center"
					onclick="loadMoreAjax()">
					<a class="btn btn-outline-dark rounded-pill btn-lg btn-hover-text">
						<span class="btn-hover-label label-default">Load more</span> <span
						class="btn-hover-label label-hover">Load more</span>
					</a>
				</div>
				<input type='hidden' id='endRow' value='8' /> <input type='hidden'
					id='totalReview' value='${param.totalReview }' />
			</div>
		</section>
		<!-- /리뷰 리스트 -->
	</main>


	<jsp:include page="../Common/footer.jsp" />


</body>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>


<!-- 더보기 버튼 구현 ajax -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	function loadMoreAjax() {

		// 		alert("클릭");

		var endRow = $('#endRow').val();
		var showCnt = 9;
		var showEndRow = Number(endRow) + showCnt;
		var totalReview = $('#totalReview').val();

		$.ajax({
			type : 'post',
			url : './getReviewListAjax.do',
			data : {
				'endRow' : showEndRow,
				'totalReview' : totalReview
			},
			success : function(list) {

				$("#more_list").empty();

				$.each(list, function(index, vo) {

					// 					alert(index + "  :  " +value.exhibition_title)

					getLoadMore(vo);
				})

				$('#endRow').val(showEndRow);

			},
			error : function(request, status, error) {
				alert("code = " + request.status + "\n error = " + error);
			}
		})
	}

	function getLoadMore(vo) {

		var str = "";

		/* 리스트 */
		str += '<div class="col-md-6 col-lg-4">';
		str += '<div class="card rounded-4 mb-5 " data-aos="fade-up" >';
		str += '<div class="mb-0" onclick="allReviewDetail()">';
		str += '<a href="#!" class="d-block overflow-hidden rounded-top-4" data-bs-target="#modal-pay-bar-'
				+ vo.review_id + '" data-bs-toggle="modal">';
		str += '<img src="' + vo.exhibition_image + '" class="img-fluid w-100" alt="' + vo.exhibition_title + '" style="max-height:550px;"></a></div>';
		str += '<div class="card-body overflow-hidden p-4 px-lg-5 flex-grow-1">';
		str += '<a href="#!" class="text-dark d-block mb-4" data-bs-target="#modal-pay-bar-'
				+ vo.review_id
				+ '" data-bs-toggle="modal"><h4 class="text-truncate">'
				+ vo.exhibition_title + '</h4></a>';
		str += '<div class="row mb-lg-3"><div class="col-3" data-bs-toggle="tooltip" data-bs-placement="top" title="" data-bs-original-title="Bedrooms">';
		str += '<div class="d-flex align-items-center"><strong class="small">'
				+ vo.review_date + '</strong></div></div></div>';
		str += '<p class="mb-4 mb-lg-5 text-truncate">'
				+ vo.review_contents
				+ '</p><div class="row justify-content-between justify-content-lg-start">';
		str += '<div class="col-6"><h4 class="mb-0"><i class="bx bx-star me-2"></i>'
				+ vo.review_star_score + '</h4></div><div class="col-6">';
		str += '<div class="d-flex align-items-center justify-content-end flex-shrink-0">';
		str += '<span class="small">' + vo.customer_id
				+ '</span></div></div></div></div></div></div>';
		/* 모달 */
		str += '<div id="modal-pay-bar-' + vo.review_id + '" class="modal fade" tabindex="-1" aria-labelledby="modal-pay-bar-' + vo.review_id + '" aria-hidden="true">';
		str += '<div class="modal-dialog modal-dialog-top modal-md" style="max-width: 700px;">';
		str += '<div class="modal-content position-relative border-0"> <div class="position-relative px-4">';
		str += '<div class="position-absolute mt-2 end-0 width-7x top-0 d-flex align-items-center justify-content-center">';
		str += '<button type="button" class="btn-close w-auto small" data-bs-dismiss="modal" aria-label="Close">';
		str += '<i class="bx bx-x fs-4 me-2"></i></button></div>';
		str += '<div class="align-items-center row" style="flex-wrap: nowrap;">';
		str += '<div class="mt-4 col-md-6"><a href="#!" class="d-block overflow-hidden"><img src="' + vo.exhibition_image + '" class="img-fluid"></a></div>';
		str += '<div class="mt-5 align-items-center col-md-6 row" style="flex-direction: column;">';
		str += '<div class="mb-3"><label class="form-label" for="profile_name">전시회 이름</label>';
		str += '<input type="text" placeholder="전시회명" value="' + vo.exhibition_title + '" readonly="readonly" class="form-control"></div>';
		str += '<div class="mb-3"><label class="form-label" for="profile_name">별점</label>';
		str += '<input type="text" placeholder="별점" value="' + vo.review_star_score + '" readonly="readonly" class="form-control"></div>';
		str += '<div class="mb-3"><label class="form-label" for="profile_name">후기 제목</label>';
		str += '<input type="text" placeholder="후기제목" value="' + vo.review_title + '" readonly="readonly" class="form-control"></div>';
		str += '<div class="mb-3 "><label class="form-label" for="profile_name">작성자</label>';
		str += '<input type="text" placeholder="작성자" value="' + vo.customer_id + '" class="form-control" readonly="readonly"></div>';
		str += '<div class="mb-3"><label class="form-label" for="profile_name">작성일</label>';
		str += '<input type="text" placeholder="작성일" value="' + vo.review_date + '" class="form-control" readonly="readonly"></div></div></div>';
		str += '<div class="align-items-center row"><div class="mb-4"><label class="form-label" for="profile_name">내용</label>';
		str += '<input type="text" placeholder="내용" value="' + vo.review_contents + '" readonly="readonly" class="form-control" style="height: 300px;"></div></div></div></div></div></div>';

		$("#more_list").append(str);
	}
</script>


</html>
