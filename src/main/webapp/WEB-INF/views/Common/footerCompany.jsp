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

<title>FOOTER</title>

</head>

<body>

	<!--Footer Start-->
	<footer id="footer" class="bg-dark">
	    <div class="container col-11 pt-9 pt-lg-11 pb-5">
	        <div class="row text-light">
	            <div class="col-sm-7 mb-4 mb-sm-0">
	                <!--Address-->
	                <div class="col-md-2 mb-5 mb-md-0 text-md-center order-md-2">
					<!-- 로고 -->
					<a href="/company/CompanyMain.do"><img src="/resources/img/logo/white-logo.png"
							class="width-10x d-block h-auto mx-md-auto" alt=""></a>
				</div>
	            </div>
	            <div class="col-sm-5 text-sm-end">
	                <!--Phone-->
	                <a href="#!" class="fs-6 link-hover-underline">+82 010-8673-3972</a><br><br>
	                <!--Email-->
	                <a href="mailto:mail@domain.agency" class="fs-6 link-hover-underline">Fiennale@gmail.com</a>
	            </div>
	        </div>
	        <hr class="my-4 my-md-5 text-light">
	        <div class="row text-light">
	            <div class="col-sm-7">
	                <!--Social List-->
	                <ul class="list-inline">
	                
	                <!-- Session != null일 경우  -->
	                <c:choose>
					<c:when test="${sessionScope.companyId != null}">
	                    <li class="list-inline-item">
	                        <a class="link-hover-underline" href="/company/CompanyMain.do">Home</a>
	                    </li>
	                    
	                    <li class="list-inline-item">
	                    	<!-- Hidden Form start -->
	                        <a class="link-hover-underline" onclick="companyExhibitionListHiddenFormSubmit()">Exhibition</a>
	                   		<form id="companyExhibitionListHiddenForm" name="companyExhibitionListHiddenForm" action="/company/companyExhibitionList.do" method="post">
							<input type="hidden" name="company_id" value="<%=companyId%>">
							</form>
							<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>             
							<script type="text/javascript">
							function companyExhibitionListHiddenFormSubmit(){
							$("#companyExhibitionListHiddenForm").submit(); 
							}
							</script>
							<!-- Hidden Form end -->
	                    </li>


	                    <li class="list-inline-item">
	                    	<!-- Hidden Form start -->
	                        <a class="link-hover-underline" onclick="companyConfirmPassHiddenFormSubmit()">Setting</a>
	                    	<form id="companyConfirmPassHiddenForm" name="companyConfirmPassHiddenForm" action="/company/CompanyConfirmPass.do" method="post">
							<input type="hidden" name="company_id" value="<%=companyId%>">
							</form>
							<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>             
							<script type="text/javascript">
							function companyConfirmPassHiddenFormSubmit(){
							$("#companyConfirmPassHiddenForm").submit(); 
							}
							</script>
							<!-- Hidden Form end -->
	                    </li>
	                    </c:when>
	                    </c:choose>
	                    
	                </ul>
	            </div>
	            <div class="col-sm-5 text-sm-end">
	                <!--Copyright Text-->
	                <span class="d-block lh-sm small text-muted">© Copyright
	                    <script>
	                      document.write(new Date().getFullYear())
	                    </script>. Fiennale
	                  </span>
	            </div>
	        </div>
	    </div>
	</footer>
	
	<!-- :Back to top -->
	<a href="#top"
		class="position-fixed toTop d-none d-sm-flex btn btn-light rounded-circle p-0 flex-center width-4x height-4x z-index-fixed end-0 bottom-0 mb-6 me-6">
		<i class="bx bxs-up-arrow align-middle lh-1"></i>
	</a>
	
	<!--cursor-->
	<div class="cursor">
		<div class="cursor__inner"></div>
	</div>

</body>

<!-- 검색버튼 모달 스크립트 -->
<script src="/resources/js/theme.bundle.js"></script>
<script src="/resources/vendor/node_modules/js/gsap.min.js"></script>

<!-- 커서 스크립트 -->
<script src="/resources/vendor/node_modules/js/cursor.js"></script>

</html>