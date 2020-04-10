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

 <script type="text/javascript" src="js/testQuestion.js"></script>
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
       
<h2>시험지 등록</h2>
<p>
※시험시간은 총 30분입니다.<br/>
※시간 초과 시 점수 무관 불합격입니다.<br/>
※점수는 60점 이상이 되어야 합니다.<br/>
※시험 종료 시 강의평가를 수행하여야 수료 완료됩니다.<br/>
※모든 문제는 객관식이며 문항 당 선지는 4개입니다.<br/>
※최대 문항 수는 10개입니다.
</p>
<form action="teacherWho" id="frm1">
강사번호<input type="text" name="tchNo"/> | 과목번호<input type="text" name="subjNo"/><input type="submit" value="입력"/>
</form>
<form action="examUploading" id="frm2">
<table id="tableForm">
	<tr>
		<td>Q1</td>
		<td colspan="3"><textarea name="q1" id="q1"></textarea></td>
	</tr>
	<tr>
		<td>A1</td>
		<td>
			1) <input type="text" name="q1a1" id="q1a1"/><br/>
			2) <input type="text" name="q1a2" id="q2a2"/><br/>
			3) <input type="text" name="q1a3" id="q3a3"/><br/>
			4) <input type="text" name="q1a4" id="q4a4"/>
		</td>
	</tr>
	<tr>
		<td>Q2</td>
		<td colspan="3"><textarea name="q2" id="q2"></textarea></td>
	</tr>
	<tr>
		<td>A2</td>
		<td>
			1) <input type="text" name="q2a1" id="q2a1"/><br/>
			2) <input type="text" name="q2a2" id="q2a2"/><br/>
			3) <input type="text" name="q2a3" id="q2a3"/><br/>
			4) <input type="text" name="q2a4" id="q2a4"/>
		</td>
	</tr>
	<tr>
		<td>Q3</td>
		<td colspan="3"><textarea name="q3" id="q3"></textarea></td>
	</tr>
	<tr>
		<td>A3</td>
		<td>
			1) <input type="text" name="q3a1" id="q3a1"/><br/>
			2) <input type="text" name="q3a2" id="q3a2"/><br/>
			3) <input type="text" name="q3a3" id="q3a3"/><br/>
			4) <input type="text" name="q3a4" id="q3a4"/>
		</td>
	</tr>
	<tr>
		<td>Q4</td>
		<td colspan="3"><textarea name="q4" id="q4"></textarea></td>
	</tr>
	<tr>
		<td>A4</td>
		<td>
			1) <input type="text" name="q4a1" id="q4a1"/><br/>
			2) <input type="text" name="q4a2" id="q4a2"/><br/>
			3) <input type="text" name="q4a3" id="q4a3"/><br/>
			4) <input type="text" name="q4a4" id="q4a4"/>
		</td>
	</tr>
	<tr>
		<td>Q5</td>
		<td colspan="3"><textarea name="q5" id="q5"></textarea></td>
	</tr>
	<tr>
		<td>A5</td>
		<td>
			1) <input type="text" name="q5a1" id="q5a1"/><br/>
			2) <input type="text" name="q5a2" id="q5a2"/><br/>
			3) <input type="text" name="q5a3" id="q5a3"/><br/>
			4) <input type="text" name="q5a4" id="q5a4"/>
		</td>
	</tr>
</table>
<button id="addBtn">문항추가</button>
<input type="submit" value="작성완료">
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