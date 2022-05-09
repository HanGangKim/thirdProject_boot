<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("companyId");
Object companyName = session.getAttribute("companyName");
// 세션 연결
if (session.getAttribute("companyId") == null) {
   // 세션 연결에 실패하면 null   
   System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
   System.out.println("세션연결 실패:" + companyId);
   System.out.println("세션연결 실패:" + companyName);
   System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

} else {
   System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
   System.out.println("세션연결 성공:" + companyId);
   System.out.println("세션연결 성공:" + companyName);
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

</head>

<body>

	<!--Preloader Spinner-->
	<div class="spinner-loader bg-gradient-secondary text-white">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>
	
	<!-- header -->
	<header class="z-index-fixed header-transparent header-absolute-top">
		<div class="container col-11">
			<nav class="navbar navbar-expand-lg navbar-light navbar-link-white">
				<div class="container px-0 position-relative navbar-no-collapse-items">
					<a class="navbar-brand nav-item" href="/company/CompanyMain.do" style="margin: 0;"> 
						<img src="/resources/img/logo/white-logo.png" class="img-fluid">
					</a>
					
					<div class="d-flex align-items-center navbar-no-collapse-items order-lg-last">
                       <div class="nav-item me-0 me-lg-0">
                           <a href="../LogOut.do" class="btn btn-success btn-sm rounded-pill">Sign Out</a>
                       </div>
                    </div>
				</div>
			</nav>
		</div>
	</header>


</body>

<!-- 검색버튼 모달 스크립트 -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>


<script type="text/javascript">
	function navClick() {
		var navElement = document.getElementsByClassName("nav-link");
		Array.from(navElement).forEach(v =>{
			v.classList.remove('active');
		})
	}
	
	window.onload = function(){	
		var ul = document.querySelector('#mainNavbarTheme > ul')
		
		ul.addEventListener("click",function(e){
			navClick()
			console.log(e.target)
			e.target.classList.add('active')
			
		})
	}
</script>



</html>