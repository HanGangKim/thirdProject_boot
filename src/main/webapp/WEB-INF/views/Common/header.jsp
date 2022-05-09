<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
response.sendRedirect("NoneMemberMain.do");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+userId);
System.out.println("세션연결 성공:"+userName);
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

<title>HEADER</title>

<style type="text/css">

.navbar-no-collapse-items .nav-link.active{
   color:rgba(0,0,0,.7)
}

</style>

</head>

<body>

	<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>

	<!-- 헤더 시작 -->
	<header class="z-index-fixed header-transparent header-boxed">

		<div class="navbar-boxed">
			<div class="container col-11">
				<nav class="navbar navbar-expand-lg navbar-light rounded-lg-4">
					<!-- 로고 -->
					<a class="navbar-brand" href="/start/NoneMemberMain.do"> 
						<img src="/resources/img/logo/black-logo.png" alt="" class="img-fluid">	
					</a>
					<!-- 검색버튼 -->
					<div class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
						<!-- 햄버거 메뉴 -->
						<button class="navbar-toggler order-last collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#mainNavbarTheme" aria-controls="mainNavbarTheme" aria-expanded="false" aria-label="Toggle navigation">
                               <span class="navbar-toggler-icon">
                                   <i></i>
                               </span>
                           </button>
						<div class="nav-item me-3">
							<c:choose>
								<c:when test="${sessionScope.userId == null}">
									<a href="/Information.do" class="lh-1 position-relative text-dark">Hello :)</a>
								</c:when>
								<c:when test="${sessionScope.userId != null}">
									<a href="/Information.do" class="lh-1 position-relative text-dark">Welcome !</a>
								</c:when>
							</c:choose>
						</div>
						<div class="nav-item me-3 me-lg-0">
							<a href="#" data-bs-target="#modal-search-bar-2" data-bs-toggle="modal" class="nav-link lh-1 active"> 
								<i class="bx bx-search fs-4"></i>
							</a>
						</div>
					</div>
					<!-- 메뉴 -->
					<div class="collapse navbar-collapse" id="mainNavbarTheme">
						<ul class="navbar-nav mx-auto">
							<!--홈-->
							<li class="nav-item position-lg-static me-lg-3"><a
								class="nav-link nav-over" href="/start/NoneMemberMain.do" role="button"
								aria-haspopup="false" aria-expanded="false"> Home </a></li>
							<!--전시회-->
							<li class="nav-item position-lg-static me-lg-3"><a
								class="nav-link nav-over" href="/exhibition/ExhibitionDate.do"
								role="button" aria-haspopup="true" aria-expanded="false">
									Exhibition </a></li>
							<!--리뷰-->
							<li class="nav-item position-static me-lg-3"><a
								class="nav-link nav-over" href="/exhibition/getReviewList.do"
								role="button" aria-haspopup="true" aria-expanded="false">
									Review </a></li>
							<c:choose>
								<c:when test="${sessionScope.userId == null}">
									<!-- 회원가입 -->
									<li class="nav-item position-lg-static me-lg-3"><a
										class="nav-link nav-over" href="/landing/LandingSignUp.do" role="button"
										aria-haspopup="true" aria-expanded="false">Sign Up </a></li>
									<!-- 로그인 -->
									<li class="nav-item position-lg-static me-lg-3"><a
										class="nav-link nav-over" href="/landing/LandingLogin.do" role="button"
										aria-haspopup="true" aria-expanded="false"> Sign In </a></li>
								</c:when>
								<c:when test="${sessionScope.userId != null}">
									<!--마이페이지-->
									<li class="nav-item dropdown me-lg-3">
										<a class="nav-link nav-over dropdown-toggle" role="button" data-bs-toggle="dropdown" aria-haspopup="false" aria-expanded="false">Mypage </a> 
										<!--마이페이지 드롭다운-->
										<div class="dropdown-menu p-lg-3">
											<a href="#" class="dropdown-item" onclick="selectHiddenFormSubmit()">My Wishlist</a> 
											<a href="#" class="dropdown-item" onclick="ticketingSelectHiddenFormSubmit()">My Ticket</a> 
											<a href="#" class="dropdown-item" onclick="myReviewListHiddenFormSubmit()">My Review</a>
											
											
											<!-- hidden form  -->
											<form id="selectHiddenForm" name="selectHiddenForm" action="/customer/customerWishSelectList.do" method="post">
											<input type="hidden" name="id" value="<%=userId%>">
											</form>
											
											<form id="ticketingSelectHiddenForm" name="ticketingSelectHiddenForm" action="/exhibition/ExhibitionTicketingSelect.do" method="post">
											<input type="hidden" name="id" value="<%=userId%>">
											</form>
											
											<form id="myReviewListHiddenForm" name="myReviewListHiddenForm" action="/exhibition/getMyReviewList.do" method="post">
											<input type="hidden" name="id" value="<%=userId%>">
											</form>
												
											<!-- hidden form JS  -->       
											<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>             
											<script type="text/javascript">
											function selectHiddenFormSubmit(){
											$("#selectHiddenForm").submit(); 
											}
											</script>

											<script type="text/javascript">
											function ticketingSelectHiddenFormSubmit(){
											$("#ticketingSelectHiddenForm").submit(); 
											}
											</script>
											
											<script type="text/javascript">
											function myReviewListHiddenFormSubmit(){
											$("#myReviewListHiddenForm").submit(); 
											}
											</script>
											
											
											
											
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="/customer/CustomerConfirmPass.do">Setting</a>
										</div>
									</li>
									<!--로그아웃-->
									<li class="nav-item"><a class="nav-link nav-over" href="/LogOut.do">
											Sign Out </a></li>
								</c:when>
							</c:choose>


						</ul>
					</div>
				</nav>
			</div>
		</div>
	</header>
	<!-- 헤더 끝 -->

	<!-- 검색버튼 모달 시작 -->
	<div id="modal-search-bar-2" class="modal fade" tabindex="-1"
		aria-labelledby="modal-search-bar-2" aria-hidden="true">
		<div class="modal-dialog modal-dialog-top modal-md">
			<div class="modal-content position-relative border-0">
				<div class="position-relative px-4">
					<div
						class="position-absolute end-0 width-7x top-0 d-flex me-4 align-items-center h-100 justify-content-center">
						<button type="button" class="btn-close w-auto small"
							data-bs-dismiss="modal" aria-label="Close">Cancel</button>
					</div>
					
					<!-- 전시회 검색 시작  -->
					<form class="mb-0" name="searchForm" onkeyup="enterkey()" action="/exhibition/ExSearchTitle.do" method="post">
						<div class="d-flex align-items-center">
							<div class="d-flex flex-grow-1 align-items-center">
								<i class="bx bx-search fs-4">
								</i> 
								<input type="text" placeholder="Exhibition Search Here !" name = "exhibition_title"
								 id="searchInputBox" onkeydown="characterCheck()"  onkeyup="characterCheck()"
								class="form-control shadow-none border-0 flex-grow-1 form-control-lg">
							</div>
						</div>
					</form>
					<!-- 전시회 검색 끝  -->
					
				</div>
			</div>
		</div>
	</div>
	<!-- 검색버튼 모달 끝 -->
	<!-- 전시회 검색 끝  -->
	<script type="text/javascript">
					function characterCheck() {
			            var RegExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/g; //정규식 구문
			            var obj = document.getElementById("searchInputBox")
			            if (RegExp.test(obj.value)) {
			                alert("특수문자는 입력하실 수 없습니다.");
			                obj.value = obj.value.substring(0, obj.value.length - 1);//특수문자를 지우는 구문
			            }
			        }
	</script>


</body>

<!-- 검색버튼 모달 스크립트 -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

<!-- 검색모달 기능 JS  -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
function enterkey() {
if (window.event.keyCode == 13) {

	document.searchForm.submit();
 }
}
</script>



<script type="text/javascript">
	function navClick() {
		var navElement = document.getElementsByClassName("nav-over");
		Array.from(navElement).forEach(v =>{
			v.classList.remove('active');
		})
	}
	
	function navSetting(){
		var navElement = document.getElementsByClassName("nav-over");
		Array.from(navElement).forEach(v =>{
			v.classList.add('active');
		})
	}
	
	window.onload = function(){	
		navSetting();
		
		var ul = document.querySelector('#mainNavbarTheme > ul')
		
		ul.addEventListener("mouseover",function(e){
			navClick()
// 			console.log(e.target)
			if (e.target.classList.contains('nav-over')){
				
				e.target.classList.add('active')
			}
			
		})
		
		ul.addEventListener("mouseout", function(e) {
			
			navSetting()
		})
	}
</script>
</html>