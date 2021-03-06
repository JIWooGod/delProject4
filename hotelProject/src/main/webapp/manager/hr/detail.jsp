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
       
<h2>사원정보</h2>
<form action="paperPass" id="frm1" method="post">
	<input type="hidden" name="passState" value="서류합격자"/>
	<input type="hidden" name="empNo" value="${applier.empNo }"/>
</form>
<table class="tableForm">
	<tr>
		<td>사원번호</td>
		<td>${applier.empNo }</td>
	</tr>
	<tr>
		<td>부서번호</td>
		<td>${applier.deptNo }</td>
	</tr>
	<tr>
		<td>사원명</td>
		<td>${applier.empName }</td>
	</tr>
	<tr>
		<td>연락처</td>
		<td>${applier.empTel }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${applier.empEmail }</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td>${applier.empId }</td>
	</tr>
	<tr>
		<td>주소</td>
		<td>${applier.empAddr }</td>
	</tr>
	<tr>
		<td>입사일</td>
		<td>${applier.empDate }</td>
	</tr>
	<c:if test="${empty applier.passState }">
	<tr>
		<td>경력사항</td>
		<td>${applier.empCarr }</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>${applier.empCerti }</td>
	</tr>
	</c:if>
	<tr>
		<td colspan="2">
		<button onclick="location.href='../modify?empNo=${applier.empNo }'">정보수정</button>
		<button onclick="location.href='/hotelProject/personnel'">메인으로</button>
		<c:choose>
	<c:when test="${empty applier.passState || applier.passState == '지원대기자'}">
		<button onclick="javascript:pass1st()">서류합격</button>
	</c:when>
	<c:when test='${applier.passState == "서류합격자"}'>
		<button onclick="location.href='../interview/${applier.empNo}'">면접보기</button>
	</c:when>
	<c:when test='${applier.passState == "면접합격자" }'>
		<button onclick="location.href='../contract/${applier.empNo }'">계약하기</button>
	</c:when>
</c:choose>
		</td>
	</tr>
</table>

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
  <script type="text/javascript">
	function pass1st(){
		var frm = document.getElementById("frm1");
		var conVal = confirm("${applier.empName } 지원자를 1차 합격합니다.");
		if(conVal == true){
			frm.submit();
		}
	}
  </script>
</body>
</html>