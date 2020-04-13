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

 <script type="text/javascript" src="/hotelProject/js/contractSign.js"></script>
</head>

<body id="page-top">
	
  <!-- Page Wrapper -->
  <div id="wrapper">
 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
		<!-- 메인 내용 작성 구역 --> 
       
       
<h2>계약서</h2>
<form action="empContracting" method="post" commandName="empContractCommand">
<table id="tableForm">
	<tr>
		<td>사원번호</td>
		<td><input type="text" name="empNo" value="${applier.empNo }" readonly="readonly"/></td>
	</tr>
	<tr>
		<td>성명</td>
		<td><input type="text" name="name" value="${applier.empName }" readonly="readonly"/></td>
	</tr>
	<tr>
		<td>직급</td>
		<td>
			<select name="position">
				<option value="">직급선택</option>
				<c:forEach items="${job }" var="job">
				<option value="${job.positNo }">${job.employmentPosi }</option>
				</c:forEach>
			</select>
		</td>
	</tr>
	<tr>
		<td>서명</td>
		<td>* 아래 서명란에 서명하시오 <input type="button" onclick="javascript:onClear();" value="다시하기"/><br/>
			<canvas id="drawCanvas" width="300" height="150" style=" position: relative; border: 1px solid #000;"></canvas>
    		<img id="myImage" style="display:none" name="myImage"/>
			<input type="button" id="id_copy" value="서명확인" />
		</td>
	</tr>
</table>
	<input type="submit" value="계약하기">
</form>


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