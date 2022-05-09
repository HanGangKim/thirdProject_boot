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
// 회원가입은 세션이 있으면 못들어가게 Redirect 
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
<link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@100..700&family=Source+Serif+Pro:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400&display=swap"
	rel="stylesheet">

<!-- Main CSS -->
<link href="/resources/css/theme.min.css" rel="stylesheet">
<link href="/resources/css/theme-shop.min.css" rel="stylesheet">

<!--Flatpickr-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/flatpickr.min.css">

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<title>Member Sign Up</title>

<style>
.choices__list--single {
	padding: 0px;
/* 	color: lightgray ; */
}

.choices {
	position: unset;
	overflow: hidden;
	margin-bottom: 24px;
	font-size: 16px;
	margin-bottom: 24px;
}

div.input-icon-group input::placeholder {
	color: lightgray ;
}

div.choices__list--single select option:disabled {
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

						<h2 class="mb-1 display-6">Member Sign Up</h2>
						<p class="mb-4 text-muted">To get started, Please signup with
							details...</p>

						<div class="position-relative">
							<form action="/customer/customerInsert.do" method="post" id="loginForm">
							
								<!-- 아이디 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassageId" id="errorMassageId"> <i class="bx bx-id-card"></i>
									</span> <input type="text" class="form-control" required id="signUpid" autofocus
										name="customer_id" placeholder="Member login id">
								</div>

								<!-- 비밀번호 입력 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassagePw" id="errorMassagePw"> <i class="bx bx-lock-open"></i>
									</span> <input type="password" class="form-control" required name="customer_password" id="signUpPassword"
										placeholder="Enter password" maxlength="10">
								</div>

								 <!-- 비밀번호 확인 -->
								 <div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassagePwc" id="errorMassagePwc"> <i class="bx bx-lock-open"></i>
									</span><input type="password" class="form-control" required
										id="signUpConfirmPassword" placeholder="Confirm password" name="customer_password_confirm">
								</div>

								<!-- 이름 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassageName" id="errorMassageName"> <i class="bx bx-user"></i>
									</span> <input type="text" class="form-control" required
										name="customer_name" id="signUpName" 
										placeholder="Your full name">
								</div>

								<!-- 전화번호 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassagePh" id="errorMassagePh"> <i class="bx bx-mobile"></i>
									</span> <input type="text" class="form-control" required
										id="signUpph" name="customer_ph" 
										placeholder="Your phone number ex)010-1234-5678">
								</div>

								<!-- 이메일 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassageMail" id="errorMassageMail"> <i class="bx bx-envelope"></i>
									</span> <input type="email" class="form-control" required
										name="customer_email" id="signUpMail"
										placeholder="Your email address">
								</div>
								
								<!-- 성별 -->
								<div class="input-icon-group mb-3">
									<span class="input-icon" name="errorMassageGender" id="errorMassageGender"> <i class="bx bx-male-female"></i>
									</span> <select autocomplete="false" id="profile_gender"
										name="customer_gender" class="form-control" required
										data-choices='{"searchEnabled":false}'>
										<option selected disabled style="color: lightgray;">Gender</option>
										<option>Male</Option>
										<option>Female</Option>
									</select>
								</div>
								
								<!-- 나이 -->
								 <div class="input-icon-group mb-0">
									<span class="input-icon" name="errorMassageAge" id="errorMassageAge"> <i class="bx bx-calendar"></i>
									</span> <input type="number" class="form-control" required
										id="signUpage" name="customer_age" autofocus
										placeholder="Your age">
								</div> 
								
								<!-- 회원속성  -->
								<div class="input-icon-group mb-0" style="display:none">
									<span class="input-icon"> <i class="bx bx-envelope"></i>
									</span> <select autocomplete="false" id="flag" class="form-control"
										name="customer_flag" data-choices='{"searchEnabled":false}' >
										<Option selected>C</Option>
										<Option>M</Option>
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
								<a href="CustomerLogin.do" class="ms-2 text-dark fw-semibold link-decoration">Sign in</a>
							</p>
						</div>
					</div>
				</div>
			</div>


		</section>
	</main>


	<jsp:include page="../Common/footer.jsp" />
</body>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!--Select scripts-->
<script src="/resources/vendor/node_modules/js/choices.min.js?ver=2"></script>
<script type="text/javascript">
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

<script>
 // 로그인 유효성 검사
    var form = document.getElementById('loginForm');
    var next = document.getElementById("next");

    form.addEventListener('input', () => {
    	if (!(input_ok())){
    		next.disabled = true;
    	} else{
    		
    		next.disabled = false;
    		$('#errorMassagePw').html('✓');
    		$('#errorMassagePwc').html('✓');
    		$('#errorMassageMail').html('✓');
    		$('#errorMassageGender').html('✓');
    		$('#errorMassagePh').html('✓');
    		$('#errorMassageAge').html('✓');
    		$('#errorMassageName').html('✓');
    	}
//     	next.disabled = !(input_ok());

		$('#signUpid').focusout(function(){
        	let userId = $('#signUpid').val();
        	
        	$.ajax({
        		
        		url:"/customer/checkId.do",
        		type:"post",
        		data:{'userId':userId},
        		success : function(result) {

    				if(result == 1){
    					$('#errorMassageId').html('✕');
    					$('#errorMassageId').attr('color','red');
    					next.disabled = true;
    				} else{
    					$('#errorMassageId').html('✓');
    					$('#errorMassageId').attr('color','green');
    					
    					if (pwd&&mail&&gender&&ph){
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

    	const id = checkID(loginForm.customer_id_value);
		const pwd = checkPassword(loginForm.customer_id.value, form.customer_password.value, form.customer_password_confirm.value);
		const mail = checkMail(loginForm.customer_email.value);
		const gender = checkGender(loginForm.customer_gender.value);
		const ph = checkph(loginForm.customer_ph.value);
		const name = checkname(loginForm.customer_name.value);
		const age = checkage(loginForm.customer_age.value);
		
		if (id&&pwd&&mail&&gender&&ph&&age&&name){
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
			if(!(gender)) {
				$('#errorMassageGender').html('✕');
				$('#errorMassageGender').attr('color','red');
				}else{
					$('#errorMassageGender').html('✓');
					$('#errorMassageGender').attr('color','red');
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
    
    function checkID(id){
    	if (!checkExistData(id, "아이디를")){
    		$('#errorMassageId').html('✕');
			$('#errorMassageId').attr('color','red');
			  return false;
		  } else{
			  return true;
		  }
    }
    
    function checkage(age){
    	if (!checkExistData(age, "나이를")){
    		$('#errorMassageAge').html('✕');
			$('#errorMassageAge').attr('color','red');
			  return false;
		  } else{
			  $('#errorMassageAge').html('✓');
			  $('#errorMassageAge').attr('color','red');
			  return true;
		  }
    }
    
    function checkname(name){
		  if (!checkExistData(name, "이름을")){
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
//                 alert("두 비밀번호가 맞지 않습니다.");
//                 form.password1.value = "";
//                 form.password2.value = "";
//                 form.password2.focus();
                return false;
            }
     
            
            return true; //확인이 완료되었을 때
        }    

        function checkph(ph){
        	var phRegExp = /^01([0|1|6|7|8|9])-?([0-9]{4})-?([0-9]{4})$/;
            if (!phRegExp.test(ph)) {
//                 alert("전화번호 형식이 올바르지 않습니다!");
//                 form.ph.value = "";
//                 form.ph.focus();
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
//                 alert("이메일 형식이 올바르지 않습니다!");
//                 form.mail.value = "";
//                 form.mail.focus();
                return false;
            }
            return true; //확인이 완료되었을 때
        }

    	function checkGender(gender){
    		if(gender=="Gender"){
//     			alert("성별을 선택하세요");
				$('#errorMassageGender').html('✕');
				$('#errorMassageGender').attr('color','red');
    			return false;
    		}else{
    			$('#errorMassageGender').html('✓');
				$('#errorMassageGender').attr('color','red');
    			return true;
    		}
    	}

        function checkExistData(value, dataName) {
            if (value == "") {
//                 alert(dataName + " 입력해주세요!");
                return false;
            }
            return true;
        }

    	
        

  </script>
</html>
