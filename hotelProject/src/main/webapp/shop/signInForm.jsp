<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="/hotelProject/member/memberCss/memberCss.css">
<title>Insert title here</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	
	function createBtn(){
		$(".register-form").submit();
	}
	
	function loginBtn(){
		$(".login-form").submit();
	}
	
	//id, pw 미입력 && id, pw 다를 시 출력
	function dMoreBtn(){
		$.ajax({
			type : "POST",
			url : "",
			datatype : "html",
			success : function(data1){
				$("#div1").html(data1);
			}
		});
	}
	
	/*
	function loginBtn(){
		if(!doubleSubmitCheck() && validateInputField()) {
			$(".login-form").submit(function(event) {
				event.preventDefault();
			});
		} else {
			return false;
		}
	}
	
	
	function validateInputField() {
		let id = $('#id').val();
		if(id == null) {
			$('#id-validate').text('id가 비어있습니다.');
			return false;
		}
		return true;
	}
	
	var doubleSubmitFlag = false;
    function doubleSubmitCheck(){
        if(doubleSubmitFlag){
            return doubleSubmitFlag;
        }else{
            doubleSubmitFlag = true;
            return false;
        }
    }
	*/
	
	// 주소 팝업
	function goPopup(){
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("/hotelProject/popup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
		
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}

	function jusoCallBack(roadFullAddr){
			// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.	
			//document.form.userAddr.value = roadFullAddr;	
			$('#userAddr').val(roadFullAddr);
	}
</script>
<body>
	<div class="login-page">
		<div class="form">
		<!-- 회원가입 form -->
			
			
			<!-- 로그인 form -->
			<form action="loginAction" id="login" name="login" method="post" class="login-form">
				<input type="text" placeholder="id" id="id" name="id" /> <div id="id-validate" style="color: red">${ error }</div> 
				<input type="password" placeholder="password" name="pw" />
				<button onclick="loginBtn(); return false;">login</button>
				<p class="message">
					Not registered? <a href="#">Create an account</a>
				</p>
			</form>
		</div>
	</div>
</body>
</html>