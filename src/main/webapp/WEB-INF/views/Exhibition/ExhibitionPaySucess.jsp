<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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

<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<title>Welcome!</title>

</head>

<body>

	<jsp:include page="../Common/header.jsp" />

	<!--Main content-->
	<main class="main-content " id="main-content">
		<section class="position-relative ">
			<div class="container col-11 pt-12 pb-lg-16 ">
				<div class="row pt-lg-5 pb-5 justify-content-center text-center">
					<div class="col-xl-6 ">
						<div class="width-8x height-8x rounded-circle position-relative bg-success text-white flex-center mb-5">
							<i class="bx bx-check lh-1 display-5 fw-normal"></i>
						</div>
						<h4 class="display-4 mb-3">Ticketing Success</h4>
						<p class="mb-5 lead mx-auto"><%=userName%>님, 예매가 완료되었습니다.</p>
						<div class="col-md-6 mx-auto">
						<!-- Hidden Form  -->
							<a onclick="hiddenFormSubmit()" class="btn btn-primary d-grid mb-2">My Ticket</a>
								<form id="hiddenForm" name="hiddenForm" action="/exhibition/ExhibitionTicketingSelect.do" method="post">
								<input type="hidden" id="id" name="id" value="<%=userId%>">
							</form>
						    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
						    <script type="text/javascript">
						    function hiddenFormSubmit(){
						       document.hiddenForm.submit();
						    }
						    </script>
							<a href="/exhibition/ExhibitionDate.do" class="btn btn-outline-secondary mb-2 d-grid">Search Exhibition</a>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>

<input type="hidden" id="uploadState" name = "uploadState" value="1" />


	<jsp:include page="../Common/footer.jsp" />

</body>

<script type="text/javascript">
function noEvent() { // 새로 고침 방지
	 
    if ($("#uploadState").val() == "1") {
        if (event.keyCode == 116) {
            alert("새로고침을 할 수 없습니다.");
            event.keyCode = 2;
            return false;
        } else if (event.ctrlKey
                && (event.keyCode == 78 || event.keyCode == 82)) {
            return false;
        }
    }
}
document.onkeydown = noEvent;
</script>

</html>
