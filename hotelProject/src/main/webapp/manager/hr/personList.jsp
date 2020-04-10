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
       
    <h2>사원목록</h2>
<table class="tableList">
	<tr>
		<th>사원번호</th>
		<th>사원명</th>
		<th>연락처</th>
		<th>이메일</th>
		<th>소속부서</th>
		<th>채용상태</th>
		<th>입사일</th>
	</tr>
	<c:forEach items="${emp }" var="emp">
	<tr>
		<td><a href="./personnel/detail/${emp.empNo }">${emp.empNo}</a></td>
		<td><a href="./personnel/detail/${emp.empNo }">${emp.empName }</a></td>
		<td>${emp.empTel }</td>
		<td>${emp.empEmail }</td>
		<td>${emp.deptNo }</td>
		<td id="pass">${emp.passState } 
		<c:choose>
			<c:when test="${empty emp.passState || emp.passState == '지원대기자' }">
				<button id="applierBtn" onclick="location.href='./personnel/detail/${emp.empNo }'">지원서 조회</button>
			</c:when>
			<c:when test='${emp.passState == "서류합격자" }'>
				<button id="interviewBtn" onclick="location.href='./personnel/interview/${emp.empNo }'">면접보기</button>
			</c:when>
			<c:when test='${emp.passState == "면접합격자" }'>
				<button id="contractBtn" onclick="location.href='./personnel/contract/${emp.empNo }'">계약하기</button>
			</c:when>
		</c:choose>
		</td>
		<td>${emp.empDate }</td>
	</tr>
	</c:forEach>
</table>
<br/>

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