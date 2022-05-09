<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("=companyId");
Object companyName = session.getAttribute("companyName");
// 세션 연결
if (session.getAttribute("companyId") == null) {
// 세션 연결에 실패하면 null	
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 실패:"+companyId);
System.out.println("세션연결 실패:"+companyName);
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");

}else{
System.out.println("$$$$$$$$$$$$$$$$$$$$$$$$$$");
System.out.println("세션연결 성공:"+companyId);
System.out.println("세션연결 성공:"+companyName);
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
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&family=Source+Serif+Pro:ital@0;1&display=swap"
	rel="stylesheet">
	
<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">


<title>Company Sign Up</title>

<style>

div.input-icon-group input::placeholder {
	color: lightgray ;
}

</style>
</head>

<body>

	<jsp:include page="../Common/header.jsp" />

	<!--Main content-->
	<main>
		<!--page-hero-->
		<section class="bg-white position-relative">
			<div class="container pt-11 pt-lg-14 pb-9 pb-lg-11 position-relative z-index-1">
				<div class="row align-items-center justify-content-center">
					<div class="col-11 col-xl-4 col-lg-5 col-md-6 col-sm-8 z-index-2">

						<h2 class="mb-1 display-6">Company Sign Up</h2>
						<p class="mb-4 text-muted">To get started, Please signup with
							details...</p>
							
						<div class="position-relative">
							<form action="/company/companyInsert.do" method="get" id="loginForm">
							
								<!-- 회사 아이디 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassageId"> <i class="bx bx-id-card"></i> </span> 
									<input type="text" class="form-control" required autofocus
										id="signUpid" placeholder="Company login id" name="company_id">
								</div>
								
								<!-- 비밀번호 입력 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassagePw"> <i class="bx bx-lock-open"></i> </span>
									<input type="password" class="form-control" required
										id="signUpPassword" placeholder="Enter password" name="company_password">
								</div>
								
								<!-- 비밀번호 확인 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassagePwc"> <i class="bx bx-lock-open"></i> </span> 
									<input type="password" class="form-control" required
										id="signUpConfirmPassword" placeholder="Confirm password" name="company_password_confirm">
								</div>
								
								<!-- 회사 이름 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassageName"> <i class="bx bx-user"></i>
									</span> <input type="text" class="form-control" required
										id="signUpName" placeholder="Company name" name="company_name">
								</div>
								
								<!-- 회사 연락처 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassagePh"> <i class="bx bx-mobile"></i> </span> 
									<input type="text" class="form-control" required
										id="signUpPH" placeholder="Company phone number ex)010-1234-5678" name="company_ph">
								</div>
								
								<!-- 회사 이메일 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassage" id="errorMassageMail"> <i class="bx bx-envelope"></i> </span>
									<input type="email" class="form-control" required
										id="signUpMail" placeholder="Company email address" name="company_email">
								</div>

								<!-- 사업자 번호 -->
								<div class="input-icon-group mb-0">
									<span class="input-icon" name="errorMassage" id="errorMassageRegnum"> <i class="bx bx-credit-card-front"></i></span> 
									<input type="text" class="form-control" required
										id="signUpCRN"
										placeholder="Registration Number ex)000-00-00000" name="company_regnum">
								</div>

								<!-- 업체속성 -->
								<div class="input-icon-group mb-0" style="display:none">
									<span class="input-icon"> <i class="bx bx-envelope"></i> </span> 
									<select autocomplete="false" id="flag" class="form-control"
										data-choices='{"searchEnabled":false}'>
										<Option>R</Option>
										<Option>D</Option>
										<Option selected>W</Option>
									</select>
								</div>
								
								<div class="d-flex align-items-center py-3">
									<span class="flex-grow-1 border-bottom pt-1"></span>
								</div>
								
								<!-- 회원가입 마치기 -->
								<div class="d-grid">
									<input class="btn btn-primary" type="submit" id="next" disabled="disabled" value="Sign Up">
								</div>
							</form>

							<!-- 로그인 버튼 -->
							<p class="pt-3 small text-muted">Already have an account? 
								<a href="CompanyLogin.do" class="ms-2 text-dark fw-semibold link-decoration">Sign in</a>
							</p>
						</div>
						
					</div>
				</div>
			</div>
		</section>
	</main>


	<jsp:include page="../Common/footer.jsp" />



</body>

<!-- scripts -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	
	var form = document.getElementById('loginForm');
	var next = document.getElementById('next');
	
	 form.addEventListener('input', () => {
	    	if (!(input_ok())){
	    		next.disabled = true;
	    	} else{
	    		next.disabled = false;
	    		$('#errorMassagePw').html('✓');
	    		$('#errorMassagePwc').html('✓');
	    		$('#errorMassageMail').html('✓');
	    		$('#errorMassageRegnum').html('✓');
	    		$('#errorMassagePh').html('✓');
	    		$('#errorMassageName').html('✓');
	    	}
//	     	next.disabled = !(input_ok());


			$('#signUpid').focusout(function(){
	        	let userId = $('#signUpid').val();
	        	
	        	$.ajax({
	        		url:"/company/checkId.do",
	        		type:"post",
	        		data:{'userId':userId},
	        		success : function(result) {

	    				if(result == 1){
	    					$('#errorMassageId').html('✕');
	    					$('#errorMassageId').attr('color','red');
	    					next.disabled = true;
	    					$('#errorMassageId').style.display="inline-block";
	    				} else{
	    					$('#errorMassageId').html('✓');
	    					$('#errorMassageId').attr('color','green');
	    					if (pwd&&mail&&regnum&&ph){
	    						next.disabled = false;
	    					}
	    				}

	    			},
	    			error : function() {
	    				alert("서버요청 실패");
	    			}
	        	})
	        	
	        })
	        
	 })
	 function input_ok(){

		const id = checkID(loginForm.company_id_value);
		const pwd = checkPassword(loginForm.company_id.value, form.company_password.value, form.company_password_confirm.value);
		const mail = checkMail(loginForm.company_email.value);
		const regnum = checkRegnum(loginForm.company_regnum.value);
		const ph = checkph(loginForm.company_ph.value);
		const name = checkname(loginForm.company_name.value);
		
		if (id&&pwd&&mail&&regnum&&ph&&name){
			return true;
		} else {
			if(!(pwd)) {
				$('#errorMassagePw').html('✕');
				$('#errorMassagePw').attr('color','red');
				$('#errorMassagePwc').html('✕');
				$('#errorMassagePwc').attr('color','red');
				}else{
					$('#errorMassagePw').html('✓');
					$('#errorMassagePw').attr('color','green');
					$('#errorMassagePwc').html('✓');
					$('#errorMassagePwc').attr('color','green');
				}
			if(!(mail)) {
				$('#errorMassageMail').html('✕');
				$('#errorMassageMail').attr('color','red');
				}else{
					$('#errorMassageMail').html('✓');
					$('#errorMassageMail').attr('color','red');
				}
			if(!(regnum)) {
				$('#errorMassageRegnum').html('✕');
				$('#errorMassageRegnum').attr('color','red');
				}else{
					$('#errorMassageRegnum').html('✓');
					$('#errorMassageRegnum').attr('color','red');
				}
			if(!(ph)) {
				$('#errorMassagePh').html('✕');
				$('#errorMassagePh').attr('color','red');
				}else{
					$('#errorMassagePh').html('✓');
					$('#errorMassagePh').attr('color','red');
				}
			if(!(name)){
				$('#errorMassageName').html('✕');
				$('#errorMassageName').attr('color','red');
				}else{
					$('#errorMassageName').html('✓');
					$('#errorMassageName').attr('color','red');
				}
			return false;
			
		}
		

        }
	 
	 function checkID(name){
		  if (!checkExistData(name, "아이디를")){
			  return false;
		  } else{
			  return true;
		  }
	  }
	 
	  function checkname(name){
		  if (!checkExistData(name, "회사이름을")){
			  return false;
		  } else{
			  return true;
		  }
	  }
	 
      function checkPassword(id, password1, password2) {
            //비밀번호가 입력되었는지 확인하기
            if (!checkExistData(password1, "비밀번호를"))
                return false;
            //비밀번호 확인이 입력되었는지 확인하기
            if (!checkExistData(password2, "비밀번호 확인을"))
                return false;
     
            
            //비밀번호와 비밀번호 확인이 맞지 않다면..
            if (password1 != password2) {

                return false;
            }      
            return true; //확인이 완료되었을 때
        }    

        function checkph(ph){
        	var phRegExp =  /^01([0|1|6|7|8|9])-?([0-9]{4})-?([0-9]{4})$/;
            if (!phRegExp.test(ph)) {

                return false;
            }
            return true;
        }
      
        function checkMail(mail) {
            //mail이 입력되었는지 확인하기
            if (!checkExistData(mail, "이메일을"))
                return false;
     
            var emailRegExp = /^[A-Za-z0-9_]+[A-Za-z0-9]*[@]{1}[A-Za-z0-9]+[A-Za-z0-9]*[.]{1}[A-Za-z]{1,3}$/;
            if (!emailRegExp.test(mail)) {

                return false;
            }
            return true; //확인이 완료되었을 때
        }

    	function checkRegnum(regnum){
    		if (!checkExistData(regnum, "사업자등록번호를"))
                return false;
     
            var regnumExp = /([0-9]{3})-?([0-9]{2})-?([0-9]{5})$/;
            if (!regnumExp.test(regnum)) {

                return false;
            }
            return true; //확인이 완료되었을 때
    	}

        function checkExistData(value, dataName) {
            if (value == "") {
                return false;
            }
            return true;
        }
	
</script>
</html>
