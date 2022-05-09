<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
Object companyId = session.getAttribute("companyId");
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
<!--리뷰작성-->

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

<!--Choices css-->
<link rel="stylesheet"
	href="/resources/vendor/node_modules/css/choices.min.css">

<title>Insert Exhibition</title>

<style>
#youna-box-size {
	height: 100px;
}

.choices__list--single {
	padding: 0px;
}

input.form-control[readonly] {
	background-color: white;
}
</style>
</head>

<body>

		<!--Preloader Spinner-->
	<div class="spinner-loader bg-tint-primary">
		<div class="spinner-border text-primary" role="status"></div>
		<span class="small d-block ms-2">Loading...</span>
	</div>


	<jsp:include page="../Common/headerCompany.jsp" />


	<main>
		<!-- 페이지 헤더 -->
		<section id="page-header" class="position-relative bg-dark text-white overflow-hidden">
			<div class="container col-11 pt-12 pb-10">
				<div class="row pt-lg-7">
					<div class="col-lg-7">
						<h1 class="mb-2 display-4">Insert Exhibition</h1>
						<p class="lead mb-0 text-muted"><%=companyName %></p>
					</div>
				</div>
			</div>
		</section>
		<!-- ./페이지 헤더 -->
		
		<!-- 내용 -->
		<section class="position-relative">
			<div class="container position-relative">
				<div class="overflow-hidden">
					<div class="position-relative pt-5 pb-9 pb-lg-11">
						<div class="row">
							<div class="col-lg-9 mx-auto">
								<div class="pt-5 d-flex flex-column h-100">
									<div class="card shadow p-3 mb-3">
										<h5 class="mb-4">Insert Exhibition Info</h5>

										<!-- form 태그시작  -->
										<form name="exhibitionForm" onsubmit="return nullCheck()" action="/company/companyExhibitionWrite.do" method="post" enctype="multipart/form-data">
											<div class="row align-items-center">
												<!--아이디-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Company</label> 
													<input name="company_id" value="<%=companyId%>" type="hidden" class="form-control" id="profile_com" readonly>
													<input value="<%=companyName%>" style="background-color: #f9f9f9;" type="text" class="form-control" readonly>
												</div>
											
												<!--등록 전시회 제목-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Exhibition Title</label> 
													<input name="exhibition_title" type="text"
														class="form-control" id="profile_com"
														placeholder="전시 제목을 입력해주세요." required="required">
												</div>

												<!--시작날짜-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Start Date</label> 
													<input name="exhibition_start_date" type="date" class="form-control" id="start_date"
														placeholder="전시 시작일을 입력해주세요." required="required" data-flatpickr>
												</div>
												
												
												<!--종료날짜-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">End Date</label> 
													<input name="exhibition_end_date" type="date" class="form-control" id="end_date"
														placeholder="전시 종료일을 입력해주세요." required="required" data-flatpickr>
												</div>
												
												
												<!--전체날짜-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Total Date</label> 
														<input name="exhibition_total_date" type="date" class="form-control" id="total_date"
														placeholder="전시 기간을 입력해주세요." required="required" data-flatpickr='{"mode":"range"}'>
												</div>		
												
												<!--금액-->
												<div class="col-md-6 mb-3">
													<label class="form-label" for="profile_com">Price</label> 
													<input name="exhibition_price" type="number"
														class="form-control" id="profile_com"
														placeholder="전시 금액을 입력해주세요." required="required">
												</div>
												<!-- 금액 끝 -->
												
												<!--지역-->
												<div class="d-flex col-md-12 mb-3" style="justify-content: space-between;">
													<div class="col-md-10 me-4">
														<label class="form-label" for="profile_com">Location</label> 
														<input name="exhibition_location" type="text" class="form-control" id="sample2_address" placeholder="전시 장소를 검색해주세요." required="required" readonly="readonly">
														
														<!-- 주소 모달창 -->
														<!-- iOS에서는 position:fixed 버그가 있음, 적용하는 사이트에 맞게 position:absolute 등을 이용하여 top,left값 조정 필요 -->
														<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
														<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
														</div>
														
														<!-- 삭제할 경우 JS 고장 / JS 수정또는 hidden 유지  -->
														<input type="text" id="sample2_postcode" placeholder="우편번호" hidden>
														<input type="text" id="sample2_detailAddress" placeholder="상세주소" hidden>
														<input type="text" id="sample2_extraAddress" placeholder="참고항목" hidden>
													</div>
													<!--주소 검색 버튼-->
													<div class="mt-5">
<!-- 															<label class="form-label" for="profile_com"></label>  -->
														<a onclick="sample2_execDaumPostcode()" class="d-block btn btn-dark">Search</a>
													</div>
												</div>
												<!-- 지역 끝 -->	
												<!-- 공백 예외처리  -->
												<script type="text/javascript">
												function nullCheck() {
													if(!document.exhibitionForm.exhibition_location.value){
														alert("주소를 입력해주세요!")
														document.exhibitionForm.exhibition_location.focus();
														return false;
													}
													if(!document.exhibitionForm.exhibition_total_date.value){
														alert("날짜를 입력해주세요!")
														document.exhibitionForm.exhibition_total_date.focus();
														return false;
													}
													if(!document.exhibitionForm.exhibition_end_date.value){
														alert("날짜를 입력해주세요!")
														document.exhibitionForm.exhibition_end_date.focus();
														return false;
													}
													if(!document.exhibitionForm.exhibition_start_date.value){
														alert("날짜를 입력해주세요!")
														document.exhibitionForm.exhibition_start_date.focus();
														return false;
													}
												}
												</script>
													
															
												<!--내용-->
												<div class="col-12 mb-3">
													<label for="profile_address" class="form-label">Memo</label>
													<input name="exhibition_memo" type="text"
														class="form-control" placeholder="간단한 내용을 입력해주세요."
														required="required" >
												</div>
												
												<!--대표사진 첨부파일-->
												<div class="col-12 mb-3">
													<label for="profile_address" class="form-label">Main Image</label>
													<!-- 이미지 업로드전까지 DEFAULT_IMG 벨류 부여 -->
													<!-- 이미지 업로드 전까지 file->text 변경  -->
													<input name="file" value="DEFAULT_IMG" type="file"
														id="file" class="form-control" accept="image/*" required="required">
												</div>
												
												<!--상세사진 첨부파일-->
												<div class="col-12">
													<label for="profile_address" class="form-label">Sub Image</label>
													<!-- 이미지 업로드전까지 DEFAULT_IMG 벨류 부여 -->
													<!-- 이미지 업로드 전까지 file->text 변경  -->
													<input name="file_sub" value="DEFAULT_IMG" type="file"
														id="file_sub" class="form-control" accept="image/*" required="required">
												</div>
											</div>
											<hr class="mt-5 mb-3">
											
											
											<!--저장 버튼-->
											<div class="text-end">
												<button type="submit" onclick="loadClick()" class="btn btn-primary">
													<span id="loadingBar" class="spinner-border spinner-border-sm me-2 d-none" role="status" aria-hidden="false"></span> Insert Exhibition 
												</button>
												<!-- 이미지 업로드 로딩 스크립트 -->
												<script type="text/javascript">
													function loadClick() {
														var loadingBar = document.getElementById("loadingBar");
														
														loadingBar.classList.remove('d-none');
													}
												</script>
											</div>
										</form>
										<!-- form 태그 종료 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	
	<jsp:include page="../Common/footerCompany.jsp" />
	
		

</body>
	
<!-- 주소 찾기 api -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   // 우편번호 찾기 화면을 넣을 element
   var element_layer = document.getElementById('layer');

   function closeDaumPostcode() {
       // iframe을 넣은 element를 안보이게 한다.
       element_layer.style.display = 'none';
   }

   function sample2_execDaumPostcode() {
       new daum.Postcode({
           oncomplete: function(data) {
               // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var addr = ''; // 주소 변수
               var extraAddr = ''; // 참고항목 변수

               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                   addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                   addr = data.jibunAddress;
               }

               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               if(data.userSelectedType === 'R'){
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraAddr !== ''){
                       extraAddr = ' (' + extraAddr + ')';
                   }
                   // 조합된 참고항목을 해당 필드에 넣는다.
                   document.getElementById("sample2_extraAddress").value = extraAddr;
               
               } else {
                   document.getElementById("sample2_extraAddress").value = '';
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('sample2_postcode').value = data.zonecode;
               document.getElementById("sample2_address").value = addr;
               // 커서를 상세주소 필드로 이동한다.
               document.getElementById("sample2_detailAddress").focus();

               // iframe을 넣은 element를 안보이게 한다.
               // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
               element_layer.style.display = 'none';
           },
           width : '100%',
           height : '100%',
           maxSuggestItems : 5
       }).embed(element_layer);

       // iframe을 넣은 element를 보이게 한다.
       element_layer.style.display = 'block';

       // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
       initLayerPosition();
   }

   // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
   // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
   // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
   function initLayerPosition(){
       var width = 300; //우편번호서비스가 들어갈 element의 width
       var height = 400; //우편번호서비스가 들어갈 element의 height
       var borderWidth = 5; //샘플에서 사용하는 border의 두께

       // 위에서 선언한 값들을 실제 element에 넣는다.
       element_layer.style.width = width + 'px';
       element_layer.style.height = height + 'px';
       element_layer.style.border = borderWidth;
       // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
       element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
       element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
   }
</script>




<!--Page scripts-->
<script src="/resources/vendor/node_modules/js/flatpickr.min.js"></script>
<script>
   let fpickr = document.querySelectorAll("[data-flatpickr]");
   fpickr.forEach(el => {
     const t = {
       ...el.dataset.flatpickr ? JSON.parse(el.dataset.flatpickr) : {},
     }
     new flatpickr(el, t)
   }
   );
 </script>
 
 
<!-- 오늘날짜 뽑는 스크립트 -->
<script type="text/javascript">

	window.onload = function(){
		var date = new Date();
		var date1 = date.toISOString().substring(0, 10)
		var date2 = new Date(date.setDate(date.getDate()+91)).toISOString().substring(0, 10);
											
		document.getElementById('total_date').value = date1 + '~' + date2	
		
		document.getElementById('start_date').value = date1
		document.getElementById('end_date').value = date2
		
	}
	
</script>

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