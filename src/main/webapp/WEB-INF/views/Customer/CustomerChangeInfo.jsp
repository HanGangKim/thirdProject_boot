<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object userId = session.getAttribute("userId");
Object userName = session.getAttribute("userName");
Object userPh = session.getAttribute("userPh");
Object userEmail = session.getAttribute("userEmail");
Object userGender = session.getAttribute("userGender");
Object userAge = session.getAttribute("userAge");
Object userPass = session.getAttribute("userPass");

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
<!--정보수정-->
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

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--File uploader-->
<link href="https://unpkg.com/filepond/dist/filepond.css"
	rel="stylesheet" />
<link
	href="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.css"
	rel="stylesheet">
<link
	href="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.css"
	rel="stylesheet">

<!--약관동의 : 계정삭제 css-->
<link rel="stylesheet" href="/resources/css/agreement.css?ver=1">

<title>My Setting</title>
</head>

<body>
	<!--Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="../Common/header.jsp" />


	<!--Main content-->
	<main>
		<!--Page header start-->
		<section class="position-relative bg-dark text-white overflow-hidden">
			<!-- <svg
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
				data-inject-svg alt=""> -->
			<div class="container py-11 py-lg-15 position-relative">
				<div class="row align-items-center">
					<div class="col-lg-10 mx-auto text-center">
						<nav class="d-flex justify-content-center" aria-label="breadcrumb">
							<ol class="breadcrumb mb-3">
								<li class="breadcrumb-item"><a href="#!">Home</a></li>
								<li class="breadcrumb-item active">Mypage</li>
								<li class="breadcrumb-item active">Setting</li>
							</ol>
						</nav>
						<h1 class="mb-0 display-3">Setting</h1>
					</div>
				</div>
				<!--/.row-->
			</div>
		</section>

		<section class="position-relative">
			<div class="container position-relative">
				<div class="overflow-hidden">
					<!--Profile info header-->
					<div class="position-relative pt-5 pb-1">
						<div class="row">
							<div class="col-lg-9 mx-auto">
								<div class="pt-5 d-flex flex-column h-100">
									<div class="card shadow p-3 mb-3">
										<h5 class="mb-4">Edit Profile</h5>
										<!-- 비밀번호 수정 -->
										<form action="/customer/customerUpdateInfo.do" autocomplete="false" method="get">
											<div class="row align-items-center">
												
												<!--이름-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_name">Name</label> <input
														class="form-control" id="profile_name"
														name="customer_name" type="text" value="<%=userName%>" required="required">
												</div>
												<!--아이디-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Id</label> <input
														type="text" class="form-control" id="profile_com"
														name="customer_id" value="<%=userId%>" readonly="readonly" required="required">
												</div>

												<!--전화번호-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_phon">Phone</label>
													<input type="text" id="profile_phon" name="customer_ph"
														value="<%=userPh%>" class="form-control" required="required">
												</div>
												<!--이메일-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_email">Email
														address</label> <input class="form-control" type="email"
														id="profile_email" name="customer_email"
														value="<%=userEmail%>" required="required">
												</div>
												<!--성별-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_gender">Gender</label>
													<input class="form-control" type="text"
														name="customer_gender" id="profile_email"
														value="<%=userGender%>" required="required">
												</div>
												<!--나이-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_dob">Date of
														Age</label> <input type="text" id="profile_dob"
														class="form-control" name="customer_age" data-flatpickr
														value="<%=userAge%>" required="required">
												</div>

											</div>
											<hr class="mt-3 mb-3">
											<!--저장 버튼-->
											<div class="text-end">
												<button type="submit" class="btn btn-primary">Save
													Profile</button>
											</div>

										</form>

									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Profile info header-->

					<!--Profile info header-->
					<div class="position-relative pt-1 pb-5">
						<div class="row">
							<div class="col-lg-9 mx-auto"> 
								<div class="pt-2 d-flex flex-column h-100">
									<div class="card shadow p-3 mb-7">
										<h5 class="mb-4">Delete Profile</h5>
										<!-- 약관동의 : 계정삭제 -->
										<div class="position-relative">
											<div class="contents">
												<form action="/customer/customerTotalDelete.do" autocomplete="false" method="post">
												
											
												
													<div id="form__wrap">
															<label class="text-primary mb-2"> Fiennale 계정을 삭제하실 건가요 ... ? </label>
<!-- 															<label class="text-primary mb-2"> Fiennale 계정 탈퇴 전 꼭 확인해 주세요!</label> -->

																	<!-- 체크박스 JS 히든 input -->
																	<input type="text" class="checkAll" name="checkAll" id="checkAll" hidden="hidden" />	

														<ul class="terms__list p-0">
															<li class="terms__box">
																<div class="input__check">
																	<input type="checkbox" name="agreement" id="privacyPolicy" value="privacyPolicy" required />
																	<label for="privacyPolicy" class="required">Fiennale 계정삭제에 대한 동의</label>
																</div>
																<div class="terms__content">- 회원탈퇴 처리 후에는 회원님의 개인정보를 복원할 수 없으며, 회원탈퇴 진행 시 해당 아이디는 영구적으로 삭제됩니다.<br>
																- 탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가하오니 신중하게 선택하시기 바랍니다.<br>
																- 소속된 회사가 존재할 경우, '탈퇴'회원으로 조회됩니다.<br>
																- 회사가 Fiennale 내에 존재하는 경우, 회사에 귀속된 데이터에 대해서는 보관됩니다.</div>
															</li>
															<li class="terms__box">
																<div class="input__check">
																	<input type="checkbox" name="agreement" id="termsOfService" value="termsOfService" required />
																	<label for="termsOfService" class="required">Fiennale 정보삭제에 대한 동의</label>
																</div>
																<div class="terms__content">회원탈퇴 시 개인정보 및 Fiennale에서 만들어진 모든 데이터는 삭제됩니다.<br>
																(단, 아래 항목은 표기된 법률에 따라 특정 기간 동안 보관됩니다.)<br><br>
																1. 계약 또는 청약철회 등에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존기간 : 5년<br>
																2. 대금결제 및 재화 등의 공급에 관한 기록 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존기간 : 5년<br>
																3. 전자금융 거래에 관한 기록 보존 이유 / 전자금융거래법 보존기간 : 5년<br>
																4. 소비자의 불만 또는 분쟁처리에 관한 기록 보존 이유 : 신용정보의 이용 및 보호에 관한 법률 / 보존기간 : 3년<br>
																5. 신용정보의 수집/처리 및 이용 등에 관한 기록 보존 이유 : 신용정보의 이용 및 보호에 관한 법률 / 보존기간 : 3년</div>
															</li>
														</ul>

														<!-- 아이디&비밀번호 확인  -->
														<div class="row align-items-center">
															<div class="col-md-12">
																<div class="row"></div>
															</div>
															<!--아이디-->
															<div class="col-md-6 mb-3">
																<label class="form-label" for="profile_com">Id</label> 
																<input value="<%=userId%>" type="text" class="form-control"
																	id="profile_com" name="customer_id" readonly="readonly" required="required">
															</div>

															<!--비밀번호-->
															<div class="col-md-6 mb-3">
																<label class="form-label" for="profile_com">Password</label>
																<input type="text" class="form-control" id="profile_com"
																	name="customer_password" required="required">
															</div>
														</div>
														<hr class="mt-3 mb-3">
														<!--저장 버튼-->
														<div class="text-end">
															<button type="submit" id="btn-primary"
																class="btn btn-primary" disabled="disabled">Delete Profile</button>
														</div>
													</div>
												</form>

											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- ./Profile info header-->
					
				</div>
			</div>
		</section>


	</main>

	<jsp:include page="../Common/footer.jsp" />

	<!-- :Back to top -->
	<!--cursor-->
	


</body>


<!-- 약관동의 : 계정삭제   -->
<script src="/resources/vendor/node_modules/js/delete.js"></script>

<!--Page scripts-->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js"></script>

<!--Profile photo upload-->
<script
	src="https://unpkg.com/filepond-plugin-image-preview/dist/filepond-plugin-image-preview.js"></script>
<script
	src="https://unpkg.com/filepond-plugin-file-poster/dist/filepond-plugin-file-poster.js"></script>
<script src="https://unpkg.com/filepond/dist/filepond.js"></script>


</html>
