<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
 //   String name = (String)request.getAttribute("name");
 //   String email = (String)request.getAttribute("email");
 //  String phone = (String)request.getAttribute("phone");
 //  String address = (String)request.getAttribute("address");
  //  int totalPrice = (int)request.getAttribute("totalPrice");
   
     String name = "1";
  
     String phone = "1";
    
    //String stotalPrice = (String)request.getAttribute("totalPrice");
    //int totalPrice = Integer.parseInt(stotalPrice);
   
 
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>kakao</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  <link rel="icon" type="image/png" href="images/favicon.png" />
  <script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
    <script>
    $(function(){
        var IMP = window.IMP; // 생략가능
        IMP.init('imp23418340'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '호텔 델루나 결제',
            amount : ${totalPrice},
            buyer_name : '<%=name%>',
            buyer_tel : '<%=phone%>',
     
            buyer_postcode : '123-456',
            //m_redirect_url : 'http://www.naver.com'
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
                //성공시 이동할 페이지
               $("#kakaoSubmit").submit();
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
               location.href='main' 
                alert(msg);
            }
        });
        
    });
    </script> 
    					<form action="diningResSuccess" method="POST" name="kakaoSubmit" id="kakaoSubmit">
    						<!-- 결제내역 전달하는 값 -->
 							<input type="hidden" id="rstNo" name="rstNo" value="${ res3.rstNo }">
							<input type="hidden" id="fromdate" name="fromdate" value="${ res3.fromdate }">
							<input type="hidden" id="resTime" name="resTime" value="${ res3.resTime }">
							<input type="hidden" id="resMans" name="resMans" value="${ res3.resMans }">
							<input type="hidden" id="resName" name="resName" value="${ res3.resName }">
							<input type="hidden" id="resTel" name="resTel" value="${ res3.resTel }">
							<input type="hidden" id="emailVal1" name="emailVal1" value="${ res3.emailVal1 }">
							<input type="hidden" id="emailVal2" name="emailVal2" value="${ res3.emailVal2 }">
							<input type="hidden" id="resCnt" name="resCnt" value="${ res3.resCnt }">
							<input type="hidden" id="menuName" name="menuName" value="${ res3.menuName }">
							<input type="hidden" id="menuPrice" name="menuPrice" value="${ pay.payPrice }">
							<input type="hidden" id="rstTbl" name="rstTbl" value="${ res3.rstTbl }">
						</form>
</body>
</html>