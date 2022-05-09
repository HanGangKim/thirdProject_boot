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

<%
String exhibition_id = (String) request.getParameter("exhibition_id");
String customer_id = (String) request.getParameter("customer_id");
String consumer_name = (String) request.getParameter("consumer_name");
String title = (String) request.getParameter("title");
String consumer_ph = (String) request.getParameter("consumer_ph");
String ticketing_date = (String) request.getParameter("ticketing_date");
String stotalPrice = (String) request.getParameter("totalPrice");
int totalPrice = Integer.parseInt(stotalPrice);
int totalCustomer = Integer.parseInt(request.getParameter("totalCustomer"));
String ticketing_month = (String) request.getParameter("ticketing_date").split("-")[1];

System.out.println("customer_id: " + customer_id);
System.out.println("consumer_name: " + consumer_name);
System.out.println("title: " + title);
System.out.println("consumer_ph: " + consumer_ph);
System.out.println("ticketing_date: " + ticketing_date);
System.out.println("exhibition_id: " + exhibition_id);
System.out.println("stotalPrice: " + stotalPrice);
System.out.println("totalPrice: " + totalPrice);
System.out.println("totalCustomer: " + totalCustomer);
System.out.println("ticketing_month: " + ticketing_month);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao</title>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>

<body style="background-color: gray;">

	<!-- 차후 히든타입으로 바뀔 예정 -->
	<form name="hiddenForm" action="/exhibition/ExhibitionTicketing.do"
		method="post">
<!-- 		회원ID: -->
		<input type="hidden" value="<%=customer_id%>" name="customer_id">
		<br><br> 
<!-- 		예약자이름: -->
		<input type="hidden" value="<%=consumer_name%>"
			name="consumer_name"> <br>
		<br><br> 
<!-- 		예약일자: -->
		<input type="hidden" value="<%=ticketing_date%>"
			name="ticketing_date"> <br>
		<br><br>  
<!-- 		예약자번호: -->
		<input type="hidden" value="<%=consumer_ph%>"
			name="consumer_ph"> <br>
		<br><br>  
<!-- 		전시회ID: -->
		<input type="hidden" value="<%=exhibition_id%>"
			name="exhibition_id"> <br>
		<br><br> 
		<input type="hidden" value="<%=totalPrice%>"
		name="ticketing_money"> <br>
		<br><br> 
		<input type="hidden" value="<%=totalCustomer%>"
		name="ticketing_people"> <br>
		    <!-- 예약 month  -->
       <input type="hidden" value="<%=ticketing_month%>"
         name="ticketing_month"> <br>
       <br><br>  
	</form>


</body>

<script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp95654053'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
        	 pg : 'kakaopay',
             pay_method : 'card',
             merchant_uid : 'merchant_' + new Date().getTime(),
             name : '<%=title%>',
             amount : <%=totalPrice%>,
             buyer_date : '<%=ticketing_date%>', 
             buyer_name : '<%=userId%>',
             buyer_tel : '<%=consumer_ph%>',
             buyer_postcode : '123-456'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                        imp_uid : rsp.imp_uid
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        alert(msg);
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 컨트롤러 이동
              <%--  location.href='<%=request.getContextPath()%>/order/paySuccess?msg='+msg;  --%>
             document.hiddenForm.submit();
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="ExhibitionPayFail.do";
                alert(msg);
            }
        });
        
    });
</script>
    
</html>