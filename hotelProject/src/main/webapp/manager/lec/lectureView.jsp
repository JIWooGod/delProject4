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
       
<h2>${subject.subjName }</h2>
<div id="basicInfo">
<table style="float:left;">
	<tr>
		<td>${list.subjGroup }과목</td>
		<td><b>${teach.teachName }</b> 강사(${teach.teachNo })</td>
		<td>강사연락처(${teach.teachTel }, ${teach.teachEmail })</td>
	</tr>
	<tr>
		<td colspan="3">본 강의는 <b>${list.subjDay }</b>일 이내로 수강하여야 합니다.</td>
	</tr>
</table>
<br/>
</div>
<br/>
<hr/>
<div id="videoView">
!강의시간 이내로 재생한 후 종료하면 수료되지 않습니다.
	<video id="video" width="100%" height="auto" controls="controls"
	controlsList="nodownload" ontimeupdate="javascript:moved(this)">
		<source src="/hotelProject/manager/lec/video/${list.subjStore }" type="video/mp4">
	</video>
	<div id="fullTime"></div>
	<p>${list.subjCnt }</p>
</div>
<div id="hidden">
<form action="timeSend" id="frm1">
	<input type="hidden" name="subjTime" id="totalTime"/>
</form>
<form action="playedTime" id="frm2">
	<input type="hidden" name="mineTime" id="mineTime"/>
	<input type="hidden" name="mineLoc" id="mineLoc"/>
</form>
</div>
<button onclick="location.href='/hotelProject/lecture/teacher/modify?num=${list.subjNo }'">강의내용 수정</button>
<button onclick="location.href='/hotelProject/lecture/teacher/deleting?num=${list.subjNo }'">강의 삭제하기</button>
<button onclick="location.href='/hotelProject/lecture'">강좌목록</button>

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
var totalTime; //총 재생시간
var mine; //내 재생시간
var current; //현재 재생시간
var mineTime = document.getElementById("mineTime");
var mineLoc = document.getElementById("mineLoc");
var frm1 = document.getElementById("frm1");
var frm1 = document.getElementById("frm2");

function getTime(){
	console.log("재생시간 "+videoUp);
	if(videoUp!=null){
		totalTime = Math.floor(Player.currentMedia.duration);
		document.getElementById("fullTime").innerHTML = "강의시간 "+changeTimeType(totalTime);
		document.getElementById("totalTime").value = changeTimeType(totalTime);
		frm1.submit();
	}
}
function checkTime(){
	var ok = confirm("내 재생시간은 "+mine+"입니다. 정말 종료하시겠습니까?");
	if(ok==true){
		mineTime.value = mine;
		mineLoc.value = current;
		frm2.submit();
		window.close();
	}else{
		videoUp.attr.autoplay = "autoplay";
	}
}
function finished(){
	document.getElementById("mineTime").value = mine;
}
function moved(){
	current = event.currentTime;
	document.getElementById("mineLoc").value = current;
}
//videoUp.addEventListener("play",setTime,false);
//videoUp.addEventListener("load",getTime,false);
//videoUp.addEventListener("ended",finished,false);

//window.addEventListener("close",checkTime,false);
</script>
</body>
</html>