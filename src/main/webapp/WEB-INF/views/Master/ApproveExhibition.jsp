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
<link href="/resources/css/theme.min.css" rel="stylesheet">

<title>Assan 4</title>
</head>
<style>
.approveExhibitionInput {
	border: 0px solid black;
	text-align: right;
	width: 300px
}

.approveExhibitionSign {
	border: 0px solid black;
	width: 100px
}

#btnHover {
	background-color: rgb(108, 116, 130);
}

#btnHover:hover {
	background-color: black;
}

#exhibitionImage {
	margin-bottom: -3px;
}

.overflow-hidden {
	text-align: center;
}

.btn-primary {
    color: #fff;
    background-color: #3655ff;
    border-color: #6C7482;
}

</style>


<body>
	<%-- <c:forEach items="${vo}" var="vo">
		<table border=1>
			<tr>
				<td>${vo.exhibition_title}</td>
				<td>${vo.exhibition_total_date}</td>
			</tr>
		</table>
	</c:forEach> --%>
</body>
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
						<h1 class="display-4 mb-3">Exhibition</h1>
						<h6>(Approval of exhibition registration)</h6>

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

		<section class="position-relative bg-white">
			<br> <br>
			<div class="container z-index-1 position-relative pb-9 pb-lg-11">
				<c:forEach items="${vo}" var="vo" varStatus="status">
					<article
						class="row g-0 mb-4 mb-lg-5 position-relative overflow-hidden hover-lift hover-shadow-lg border rounded-4 card-hover shadow-sm align-items-center">
						<div class="col-md-6 col-lg-5 p-0 p-lg-0">
							<div class="overflow-hidden">
								<img src="${vo.exhibition_image}" alt="" id="exhibitionImg"
									class="img-fluid img-zoom" style="width:60%">
							</div>
						</div>
						<div class="col-md-6 col-lg-7">
							<div class="position-relative p-4 p-lg-5">
								<div
									class="d-flex justify-content-start w-100 pb-3 align-items-center">
									<small class="text-muted">전시회등록승인</small>
								</div>
								<div style="text-align: left;">
									<h2 class="mb-4">

										<table>
											<tr>
												<td><h3>${vo.exhibition_title}</h3></td>
											</tr>
											<tr>
												<td><h6>${vo.exhibition_total_date}</h6></td>
											</tr>
										</table>
									</h2>

									<h6>해당 전시회의 등록을 승인하시겠습니까?</h6>
									<br> <br>
									<div class="text-end">


										<button type="button" class="btn btn-primary" id="btnHover"
											onclick="exhibitionApproval('${vo.exhibition_title}','${status.count}')">승인</button>

										<button type="button" class="btn btn-primary" id="btnHover"
											onclick="exhibitionRefusal('${vo.exhibition_title}','${status.count}')">거절</button>


										<br> <input type="text" class="approveExhibitionInput"
											value=""></input> <input type="text"
											class="approveExhibitionSign" value=""></input>
									</div>


								</div>
							</div>
						</div>
					</article>
				</c:forEach>

				<!-- 승인 -->
				<form action="/master/masterExhibitionUpdate.do" method="get"
					name="exfrmS">
					<input name="exhibition_title" id="success_extitle" type="text"
						hidden> <input name="exhibition_flag" id="success_exflag"
						type="text" hidden>
				</form>


				<!-- 거절 -->
				<form action="/master/masterExhibitionUpdate.do" name="exfrmR">
					<input name="exhibition_title" id="recheck_extitle" type="text"
						hidden> <input name="exhibition_flag" id="recheck_exflag"
						type="text" hidden>
				</form>

				<!--/.article-->

				<!--/.article-->

				<!--/.article-->
				<!-- <nav aria-label="Page navigation example"
					class="d-flex justify-content-end" data-aos="fade-up">
					<ul class="pagination">
						<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a></li>
					</ul>
				</nav> -->
			</div>
		</section>
		<!--/.Article header-end-->
		<!--/.content section/-->

	</main>

	<!--Footer Start-->

	<footer id="footer"
		class="overflow-hidden position-relative bg-dark text-white">
		<!--Divider-->
		<svg class="position-absolute start-0 bottom-0 text-gray-800 h-40"
			preserveAspectRatio="none" width="100%" height="250"
			viewBox="0 0 1200 250" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path opacity="0.1" fill-rule="evenodd"
				clip-rule="evenodd"
				d="M0 62.5L22 46.875C44 31.25 89 0 133 0C178 0 222 31.25 267 72.9167C311 114.583 356 166.667 400 187.5C444 208.333 489 197.917 533 182.292C578 166.667 622 145.833 667 114.583C711 83.3333 756 41.6667 800 26.0417C844 10.4167 889 20.8333 933 62.5C978 104.167 1022 177.083 1067 208.333C1111 239.583 1156 229.167 1178 223.958L1200 218.75V250H1178C1156 250 1111 250 1067 250C1022 250 978 250 933 250C889 250 844 250 800 250C756 250 711 250 667 250C622 250 578 250 533 250C489 250 444 250 400 250C356 250 311 250 267 250C222 250 178 250 133 250C89 250 44 250 22 250H0V62.5Z"
				fill="currentColor" />
                <path opacity="0.1" fill-rule="evenodd"
				clip-rule="evenodd"
				d="M0 93.667L24.8889 87.4756C49.7778 82.8321 99.5556 71.9971 149.333 93.667C200.889 113.789 250.667 166.416 300.444 186.538C350.222 208.208 400 197.373 449.778 171.06C499.556 144.746 549.333 102.954 600.889 76.6407C650.667 50.3272 700.444 41.0401 750.222 61.1622C800 82.8321 849.778 135.459 899.556 129.268C949.333 124.624 1000.89 61.1622 1050.67 50.3272C1100.44 41.0401 1150.22 82.8321 1175.11 102.954L1200 124.624V250H1175.11C1150.22 250 1100.44 250 1050.67 250C1000.89 250 949.333 250 899.556 250C849.778 250 800 250 750.222 250C700.444 250 650.667 250 600.889 250C549.333 250 499.556 250 449.778 250C400 250 350.222 250 300.444 250C250.667 250 200.889 250 149.333 250C99.5556 250 49.7778 250 24.8889 250H0V93.667Z"
				fill="currentColor" />
            </svg>
		<div
			class="container pt-9 pt-lg-11 pb-5 pb-lg-7 position-relative z-index-1">
			<div class="row mb-5 mb-lg-7">
				<div class="col-md-4 mb-5 mb-md-0 text-md-center order-md-2">
					<a href="index.html"><img
						src="/resources/img/logo/white-logo.png"
						class="width-10x d-block h-auto mx-md-auto" alt=""></a>
				</div>
				<div class="col-md-4 order-md-1 mb-3 mb-md-0">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">mail@domain.com</a>
				</div>
				<div class="col-md-4 text-md-end order-md-3">
					<a href="mailto:mail@domain.com" class="fs-4 link-hover-underline">+01
						123-4567-890</a>
				</div>
			</div>
			<div class="row align-items-center">
				<div class="col-md-8 order-md-last mb-3 mb-md-0">
					<div class="d-flex flex-wrap justify-content-md-end me-n4">
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Properties</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Careers</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Company</a>
						<a href="#!"
							class="small text-muted me-4 link-hover-underline my-2 block">Privacy
							policy</a>
					</div>
				</div>
				<div class="col-md-4 order-md-1 small">
					<span class="d-block my-2 lh-sm text-muted">&copy; Copyright
						<script>
							document.write(new Date().getFullYear())
						</script>. Assan
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

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	function exhibitionApproval(data, idx) {
		alert(data+"의 등록이 승인되었습니다");

		//  데이터 확인 작업 
		// 클릭한 대상의 회사명 : data 
		// 클랙한 대상의 순서 : idx ( 1부터 시작 )
		// 클릭한 대상안에 있는 텍스트박스 선택 : inputText ( 배열이기때문에 0부터 시작이기때문에 idx-1 ) 
		// 		var inputText = document.getElementsByClassName('approveCompanyInput')[idx-1] ;
		// 		alert(data +  " " + inputText)
		// 		inputText.value = data;
		/* document.getElementsByClassName('approveExhibitionInput')[idx - 1].value = data;
		document.getElementsByClassName('approveExhibitionSign')[idx - 1].value = '승인되었습니다'; */

		document.getElementById('success_extitle').value = data
		document.getElementById('success_exflag').value = 'D'

		/* alert(document.getElementById('success_id').value)
		alert(document.getElementById('success_flag').value) */

		/* $(function(){ */
		/* document.hiddenForm.submit(); */
		document.exfrmS.submit();
		/* }) */

	}
</script>

<script type="text/javascript">
	function exhibitionRefusal(data, idx) {
		alert(data+"의 등록이 거절되었습니다");

		//  데이터 확인 작업 
		// 클릭한 대상의 회사명 : data 
		// 클랙한 대상의 순서 : idx ( 1부터 시작 )
		// 클릭한 대상안에 있는 텍스트박스 선택 : inputText ( 배열이기때문에 0부터 시작이기때문에 idx-1 ) 

		// 		var inputText = document.getElementsByClassName('approveCompanyInput')[idx-1] ;
		// 		alert(data +  " " + inputText)
		// 		inputText.value = data;

/* 		document.getElementsByClassName('approveExhibitionInput')[idx - 1].value = data;
		document.getElementsByClassName('approveExhibitionSign')[idx - 1].value = '거절되었습니다'; */

		document.getElementById('recheck_extitle').value = data
		document.getElementById('recheck_exflag').value = 'R'

		/* alert(document.getElementById('recheck_id').value)
		alert(document.getElementById('recheck_flag').value) */

		/* $(function(){ */
		/* document.hiddenForm.submit(); */
		document.exfrmR.submit();
		/* }) */

	}
</script>
</html>