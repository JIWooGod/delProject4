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
       
<h2>${applier.empName } 님 면접표</h2>
<table>
	<tr>
		<td>면접관 정보</td>
		<td><input type="text" name="empNo" id="empNo" placeholder="사원번호를 입력하시오"></td>
		<td colspan="3" id="div1">
		</td>
	</tr>
	<tr>
		<td>면접자 번호</td>
		<td>${applier.empNo }</td>
		<td>부서명</td>
		<td>${applier.deptNo }</td>
		<td>면접자 이름</td>
		<td><b>${applier.empName }</b></td>
	</tr>
	<tr>
		<td>면접일</td>
		<td colspan="3" id="dayView"></td>
	</tr>
</table>
<hr/>
<form action="scoring" method="post" id="frm2">
<input type="hidden" name="applierNo" value="${applier.empNo }"/>
<input type="hidden" name="empNo" value="${emp.empNo }"/>
<table id="tableForm">
	<tr>
		<th>문항</th>
		<th>1점</th>
		<th>2점</th>
		<th>3점</th>
		<th>4점</th>
		<th>5점</th>
	</tr>
	<tr>
		<td>언어능력</td>
		<td><input type="radio" name="q1st" value="1"></td>
		<td><input type="radio" name="q1st" value="2"></td>
		<td><input type="radio" name="q1st" value="3"></td>
		<td><input type="radio" name="q1st" value="4"></td>
		<td><input type="radio" name="q1st" value="5"></td>
	</tr>
		<tr>
		<td>응대능력</td>
		<td><input type="radio" name="q2nd" value="1"></td>
		<td><input type="radio" name="q2nd" value="2"></td>
		<td><input type="radio" name="q2nd" value="3"></td>
		<td><input type="radio" name="q2nd" value="4"></td>
		<td><input type="radio" name="q2nd" value="5"></td>
	</tr>
		<tr>
		<td>사회성</td>
		<td><input type="radio" name="q3rd" value="1"></td>
		<td><input type="radio" name="q3rd" value="2"></td>
		<td><input type="radio" name="q3rd" value="3"></td>
		<td><input type="radio" name="q3rd" value="4"></td>
		<td><input type="radio" name="q3rd" value="5"></td>
	</tr>
		<tr>
		<td>문제해결력</td>
		<td><input type="radio" name="q4th" value="1"></td>
		<td><input type="radio" name="q4th" value="2"></td>
		<td><input type="radio" name="q4th" value="3"></td>
		<td><input type="radio" name="q4th" value="4"></td>
		<td><input type="radio" name="q4th" value="5"></td>
	</tr>
	<tr>
		<td>업무능력</td>
		<td><input type="radio" name="q5th" value="1"></td>
		<td><input type="radio" name="q5th" value="2"></td>
		<td><input type="radio" name="q5th" value="3"></td>
		<td><input type="radio" name="q5th" value="4"></td>
		<td><input type="radio" name="q5th" value="5"></td>
	</tr>
</table>
<input type="submit" value="채점완료"/>
<input type="reset" value="초기화"/>
<input type="button" onclick="javascript:toMain()" value="취소"/>
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
  <script type="text/javascript">
$("#empNo").blur(function(){
 	$.ajax({
		type:"POST",
		url:"./interviewer?empNo="+$("#empNo").val(),
		dataType:"html",
		success:function(data){
			$("#div1").html(data);
		},
		error:function(){
			alert("정확한 사원번호를 입력하시오");
			return false;
		}
	}); 
});

function exposeDate(){
	var today = new Date();
	console.log(today.getFullYear()+"/"+(today.getMonth()+1)+"/"+today.getDate());
	$("#dayView").html = today.getFullYear()+"/"+(today.getMonth()+1)+"/"+today.getDate();
}
function toMain(){
	location.href='../personnel';
}
document.getElementById("dayView").addEventListener("load",exposeDate,false);
</script>
</body>
</html>