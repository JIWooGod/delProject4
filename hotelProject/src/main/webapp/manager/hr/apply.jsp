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
 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
		<!-- 메인 내용 작성 구역 --> 
       
      <h2>직원 채용 신청</h2>
<form:form action="appling" id="frm" commandName="applyCommand">
<table class="tableForm">
	<tr>
		<td>아이디 *</td>
		<td>
			<form:input path="id" id="id" placeholder="아이디를 입력하시오"/>
			<form:errors path="id" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 *</td>
		<td>
			<form:password path="pw" id="pw" placeholder="비밀번호를 입력하시오"/>
			<form:errors path="pw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인 *</td>
		<td>
			<form:password path="rePw" id="rePw" placeholder="비밀번호를 다시 입력하시오"/>
			<form:errors path="rePw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>이름 *</td>
		<td>
			<form:input path="name" id="name" placeholder="이름을 입력하시오"/>
			<form:errors path="name" class="error"/>
		</td>
	</tr>
	<tr>
		<td>연락처 *</td>
		<td>
			<form:input path="tel" id="tel" placeholder="-를 제외한 숫자를 입력하시오"/>
			<form:errors path="tel" class="error"/>
		</td>
	</tr>
	<tr>
		<td>이메일 *</td>
		<td>
			<form:input path="email" id="email" placeholder="이메일을 입력하시오"/>
			<form:errors path="email" class="error"/>
		</td>
	</tr>
	<tr>
		<td>주소 *</td>
		<td>
			<form:input path="addr" id="addr" placeholder="주소를 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>지원 부서</td>
		<td>
			<input type="hidden" name="job" value="staff"/>
			<form:select path="deptNo">
				<option value="100">인사</option>
				<option value="110">교육</option>
				<option value="120">객실관리</option>
				<option value="130">레스토랑</option>
				<option value="140">쇼핑몰</option>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>
			<form:textarea path="certi" placeholder="직군 관련 자격증을 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>경력사항</td>
		<td><form:textarea path="career" placeholder="경력사항을 자세히 입력하시오"/></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" id="send" value="지원하기">
		<input type="reset" value="초기화">
		<input type="button" onclick='location.href="/hotelProject/notice"' value="취소"/>
		</td>
	</tr>
</table>
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