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

 <script type="text/javascript" src="/hotelProject/js/error.js"></script>
 <script type="text/javascript">
$(document).ready(function(){
	$(function(){
		$("#delBtn").click(function(){
			if($("#delBtn").attr("value")=="파일삭제"){
	           $("#delBtn").attr("value","삭제취소");
	           $("#original_file").html("");
	           $("#view").html("새 동영상파일: <input type='file' id='video' accept='video/mp4' name='subjVideo'/>");
	        }else{
	           $("#delBtn").attr("value","삭제");
	           $("#view").html("");
	           $("#original_file").html("<video src='/hotelProject/manager/lec/video/${list.subjStore }' width='300px' height='auto'></video>");
       		}
		});
	});
});
</script>
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
       
<h2>강의 내용 수정</h2>
<form action="modifying" method="post" enctype="multipart/form-data">
	<input type="hidden" name="subjNum" value="${list.subjNo }" readonly/>
	<table id="tableForm">
		<tr>
			<td>과목분류</td>
			<td>${list.subjGroup }</td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td><input type="text" name="teachNo" value="${list.teachNo }" readonly="readonly"/></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><input type="text" name="subjName" placeholder="강의명을 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의 동영상</td>
			<td>
				<input type="button" id="delBtn" value="파일삭제">
				<div id="original_file">
				<video src="/hotelProject/manager/lec/video/${list.subjStore }" 
					width="300px" height="auto"></video>
				</div>
				<div id="view"></div>
			</td>
		</tr>
		<tr>
			<td>수강기간</td>
			<td><input type="number" name="subjDay" id="dayLong" max="30" min="7" ${list.subjDay } placeholder="수강가능 기간을 기입하세요"/>일<div id="error"></div></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><textarea name="subjCnt"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정하기">
				<input type="button" onclick="location.href='/hotelProject/lecture/teacher/deleting?num=${list.subjNo}'" value="삭제"/>
				<input type="button" onclick="location.href='/hotelProject/lecture/class/${list.subjNo}'" value="취소"/>
			</td>
		</tr>
	</table>
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