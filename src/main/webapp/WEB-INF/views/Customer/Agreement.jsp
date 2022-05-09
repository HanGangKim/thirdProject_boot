<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
// LogOut.jsp로 이동
// 약관동의는 세션이 있으면 못들어가게 Redirect
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
	
<!--Agreement css-->
<link rel="stylesheet" href="/resources/css/agreement.css?ver=1">

<!-- Main CSS -->
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">


<title>Member Sign Up</title>

</head>

<body>

	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<jsp:include page="../Common/header.jsp" />

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">

					<div class="col-xl-4 col-11 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Terms & Conditions</h2>
						<p class="mb-4 text-muted">To get started member, Please signup with
							details...</p>

						<div class="position-relative">
							<div class="contents">
								<div id="form__wrap">
									<div class="terms__check__all">
										<input type="checkbox" name="checkAll" id="checkAll" /> <label
											for="checkAll">Fiennale 이용약관, 개인정보 수집 및 이용, 프로모션 정보
											수신에 모두 동의합니다.
										</label>
									</div>
									<ul class="terms__list" style="padding: 0;">
										<li class="terms__box">
											<div class="input__check">
												<input type="checkbox" name="agreement" id="termsOfService"
													value="termsOfService" required /> <label
													for="termsOfService" class="required">Fiennale 이용약관 동의</label>
											</div>
											<div class="terms__content">여러분을 환영합니다. Fiennale 서비스 및 제품(이하
												‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은 다양한 Fiennale 서비스의 이용과 관련하여 Fiennale 서비스를
												제공하는 Fiennale 주식회사(이하 ‘Fiennale’)와 이를 이용하는 Fiennale 서비스 회원(이하 ‘회원’) 또는
												비회원과의 관계를 설명하며, 아울러 여러분의 Fiennale 서비스 이용에 도움이 될 수 있는 유익한 정보를 포함하고
												있습니다. Fiennale 서비스를 이용하시거나 Fiennale 서비스 회원으로 가입하실 경우 여러분은 본 약관 및 관련 운영
												정책을 확인하거나 동의하게 되므로, 잠시 시간을 내시어 주의 깊게 살펴봐 주시기 바랍니다.</div>
										</li>
										<li class="terms__box">
											<div class="input__check">
												<input type="checkbox" name="agreement" id="privacyPolicy"
													value="privacyPolicy" required /> <label
													for="privacyPolicy" class="required">개인정보 수집 및 이용
													동의</label>
											</div>
											<div class="terms__content">개인정보보호법에 따라 Fiennale에 회원가입 신청하시는
												분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및
												동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다. 수집하는
												개인정보 이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 네이버 서비스를 회원과 동일하게
												이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기
												위해 회원가입을 할 경우, 네이버는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</div>
										</li>
										<li class="terms__box">
											<div class="input__check">
												<input type="checkbox" name="agreement" id="allowPromotions"
													value="allowPromotions" /> <label for="allowPromotions">프로모션
													정보 수신 동의</label>
											</div>
											<div class="terms__content">Fiennale에서 제공하는 이벤트/혜택 등 다양한 정보를
												휴대전화(Fiennale앱 알림 또는 문자), 이메일로 받아보실 수 있습니다. 일부 서비스(별도 회원 체계로
												운영하거나 Fiennale 가입 이후 추가 가입하여 이용하는 서비스 등)의 경우, 개별 서비스에 대해 별도 수신
												동의를 받을 수 있으며, 이때에도 수신 동의에 대해 별도로 안내하고 동의를 받습니다.</div>
										</li>
									</ul>
									<button type="submit" class="next-button btn btn-primary"
										onclick="location.href='CustomerSignUp.do'" disabled>Next</button>
								</div>
								
								<!-- 로그인 버튼 -->
								<p class="pt-3 small text-muted">
									Already have an account? <a href="CustomerLogin.do"
										class="ms-2 text-dark fw-semibold link-decoration">Sign in</a>
								</p>
							</div>
						</div>

					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="../Common/footer.jsp" />



</body>

<!-- 약관동의 스크립트 -->
<script src="/resources/vendor/node_modules/js/agreement.js"></script>

<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js?ver=2"></script>
<script>
    var cSelect = document.querySelectorAll("[data-choices]");
    cSelect.forEach(el => {
      const t = {
        ...el.dataset.choices ? JSON.parse(el.dataset.choices) : {}, ...{
          classNames: {
            containerInner: el.className,
            input: "form-control",
            inputCloned: "form-control-sm",
            listDropdown: "dropdown-menu",
            itemChoice: "dropdown-item",
            activeState: "show",
            selectedState: "active"
          }
        }
      }
      new Choices(el, t)
    }
    );
  </script>

</html>
