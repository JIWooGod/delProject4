<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="./css/style.css">
<link rel="stylesheet" href="./js/rolling.css" media="screen">
<link rel="stylesheet" href="./css/slide.css" media="screen">
<script src="./js/jquery-1.8.3.min.js"></script>
<script src="./js/jquery.rolling.js"></script>
<script src="./js/jquery.flexslider.js"></script>
<script>

</script>
<body>
	<jsp:include page="../includePage/Header.jsp" flush="true" />

	<div id='content_wrapper'>

		<div id='sub_slide'>
			<li class='slide6'>&nbsp;</li>
		</div>

		<div class='sub_menu'>


			<div class='tl'>
				<div class='line'></div>
				<div class='title'>회원 정보</div>
				<div class='line'></div>
			</div>
		</div>

		<div class='content_box'>

			<div class='line_height30'></div>

			<div class='sub_reservation'>
				<!-- 객실 정보 시작 -->

				<br/><br/>
					<div class='tl' align = center>${detail.memName }님의 정보입니다.</div>
				
			



				<div class='con'>
				<div class="hs_reservation">
					<div class="hs_reservation_section hs_reservation_box1" float = right >
					
					<div class="hs_reservation_left" >
							<ul class="hs_reservation_litt">
									<li><strong>성명:</strong> 
										  ${detail.memName}
									</li>
									<li><strong>연락처:</strong> 
										 ${detail.memTel}
									</li>
									
									<li><strong>주소:</strong> 
										 ${detail.memAddr}
									</li>
									<li><strong>이메일:</strong> 
										 ${detail.memEmail}
									</li>
									
									<li><strong>가입일:</strong> 
										 <fmt:formatDate value="${detail.memRegDt }" type = "date" pattern="yyyy년MM월dd일 hh시"/>
									</li>
								</ul>
						</div>
						
							
						
				</div>
				
				</div>
			
				</div>
				
				<!-- 객실 정보 끝 -->
				<div class='line_height50'></div>
				<div class='line_box'></div>
				<div class='line_height30'></div>
				<script language="javascript">
				<!--
					function goNext() {
						var frm = document.writeF;
						frm.submit();
					}
				//-->
				</script>
				<div class="hs_reservation_btn_set">
							<a href="main" class="hs_reservation_btn_poin"
								style="color: #FFFFFF;">메인으로</a>
						</div>
			
				
				</div>
	
			</div>
			<div class='line_height50'></div>
		</div>
	</div>

	<jsp:include page="../includePage/Footer.jsp" flush="true" />
</body>
</html>