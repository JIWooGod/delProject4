<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>DelLuna Manager</title>

  <!-- Custom fonts for this template-->
  <link href="/hotelProject/manager/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
 <link href="/hotelProject/manager/css/sb-admin-2.min.css" rel="stylesheet">
 <link rel="stylesheet" href="/hotelProject/css/hoteladmin.css"/>
</head>

<body id="page-top">
	
  <!-- Page Wrapper -->
  <div id="wrapper">
	<jsp:include page="../managerInclude/mSidebar.jsp" flush="true" /> 
 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
		<!-- 메인 내용 작성 구역 --> 
       
<h2>내 정보 수정</h2>
<form:form action="modifying2" commandName="apply2Command">
<table class="tableForm">
	<tr>
		<td>아이디 *</td>
		<td>
			<form:input path="id" placeholder="아이디를 입력하시오"/>
			<form:errors path="id" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 *</td>
		<td>
			<form:password path="pw" placeholder="비밀번호를 입력하시오"/>
			<form:errors path="pw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인 *</td>
		<td>
			<form:password path="rePw" placeholder="비밀번호를 다시 입력하시오"/>
			<form:errors path="rePw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>이름 *</td>
		<td>
			<form:input path="name" placeholder="이름을 입력하시오"/>
			<form:errors path="name" class="error"/>
		</td>
	</tr>
	<tr>
		<td>연락처 *</td>
		<td>
			<form:input path="tel" placeholder="전화번호를 입력하시오"/>
			<form:errors path="tel" class="error"/>
			<br/>* '-'를 제외한 숫자만 입력하시오.
		</td>
	</tr>
	<tr>
		<td>이메일 *</td>
		<td>
			<form:input path="email" placeholder="이메일을 입력하시오"/>
			<form:errors path="email" class="error"/>
		</td>
	</tr>
	<tr>
		<td>주소 *</td>
		<td>
			<form:input path="addr" placeholder="주소를 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>
			<form:textarea path="certi" placeholder="강사 자격증을 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>경력사항</td>
		<td><form:textarea path="career" placeholder="경력사항을 자세히 입력하시오"/></td>
	</tr>
	<tr>
		<td>법적결함사항</td>
		<td>
			<form:radiobutton path="violate" value="no" label="없음"/>
			<form:radiobutton path="violate" value="yes" label="있음"/>
		</td>
	</tr>
</table>
<input type="submit" value="수정하기">
<input type="reset" value="초기화">
</form:form>

       <!-- 메인 내용 작성 구역 --> 
       <!-- Sidebar Toggle (Topbar) -->
      	<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            	<i class="fa fa-bars"></i>
     	</button>
     	
      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <jsp:include page="../managerInclude/mFooter.jsp" flush="true" /> 
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Bootstrap core JavaScript-->
  <script src="/hotelProject/manager/vendor/jquery/jquery.min.js"></script>
  <script src="/hotelProject/manager/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/hotelProject/manager/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/hotelProject/manager/js/sb-admin-2.min.js"></script>
</body>
</html>