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
       
<h2>강의등록</h2>
<form action="uploading" method="post"
	enctype="multipart/form-data" commandName="subjectCommand">
	<table id="tableForm">
		<tr>
			<td colspan="2" style="text-align:right;">
			<a href="/hotelProject/lecture">강좌목록</a>
			</td>
		</tr>
		<tr>
			<td>과목분류</td>
			<td>
			<select name="subjGroup">
				<option value="">분류 선택</option>
				<option value="필수">필수강좌</option>
				<option value="선택">선택강좌</option>
			</select>
			</td>
		</tr>
		<tr>
			<td>강사번호</td>
			<td><input type="text" name="tchNo" placeholder="강사번호를 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의명</td>
			<td><input type="text" name="subjName" placeholder="강의명을 입력하시오"/></td>
		</tr>
		<tr>
			<td>강의 동영상</td>
			<td>
				<input type="hidden" id="fullTime" name="fullTime" value=""/>
				<input type="file" id="videoUp" accept="video/*" name="subjVideo" /><br/>
				<div id="videoContent"></div>
			</td>
		</tr>
		<tr>
			<td>수강기간</td>
			<td><input type="number" name="subjDay" id="dayLong" min="7" max="30">일<div id="error"></div></td>
		</tr>
		<tr>
			<td>강의내용</td>
			<td><textarea name="subjCnt" placeholder="강의 목차 및 간략한 소개를 입력하시오"></textarea></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="등록하기">
			<input type="reset" value="초기화">
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
  <script type="text/javascript">
//동영상
  function aboutVideo(){
  	function fileUpload(e){
  		var file = e.target.flies;
  		var reader = new FileReader();
  		document.getElementById("videoContent").innerHTML = "<video src='' width='300px' height='auto' id='video' type='video/mp4'>";
  		video.src = e.target.result;
  		reader.readAsDataURL(f);
  	}

  	//재생 시간 산출
  	function getTime(){
  		if(videoUp!=null){
  			var totalTime = Math.floor(Player.currentMedia.duration); // 총 재생시간 추출
  			document.getElementById("fullTime").value = changeTimeType(totalTime);
  			document.getElementById("subjTime").value = changeTimeType(totalTime);
  		}
  		console.log("재생시간 "+totalTime);
  	}
  	videoUp.addEventListener("change",fileUpload,false);
  	//video.addEventListener("change",getTime,false);
  	videoUp.addEventListener("load",getTime,false);
}
  </script>
</body>
</html>