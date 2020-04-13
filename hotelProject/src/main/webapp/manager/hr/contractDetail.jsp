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
	<jsp:include page="../managerInclude/mSidebar.jsp" flush="true" /> 
 

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
		<!-- 메인 내용 작성 구역 --> 
       
 <h2>${emp.empName } 계약서</h2>
<table id="tableForm">
	<tr>
		<td>계약번호</td>
		<td>${sign.employmentNo }</td>
	</tr>
	<tr>
		<td>사원번호</td>
		<td>${emp.empNo }</td>
	</tr>
	<tr>
		<td>성명</td>
		<td>${emp.empName }</td>
	</tr>
	<tr>
		<td>급여</td>
		<td>${job.employmentSal }원</td>
	</tr>
	<tr>
		<td>직급</td>
		<td>${job.employmentPosi }</td>
	</tr>
	<tr>
		<td>계약일자</td>
		<td>${sign.employmentDate }</td>
	</tr>
	<tr>
		<td>서명</td>
		<td><img id="myImage" src="/hotelProject/manager/hr/upload/${sign.employmentSign }" /></td>
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
<script>
$(document).ready(function(){
    var canvas = document.getElementById('canvas');
    //canvas.width = screen.width;
    var context = canvas.getContext('2d');
    context.lineWidth=10;
    context.lineCap="round";

    $(canvas).bind({"touchstart mousedown": function(event){
     
     event.preventDefault();
     
     if(event.type == 'touchstart'){
      event = event.originalEvent.targetTouches[0];
     }
     
     $(this).data("flag", "1");
     var position = $(this).offset();
     var x = event.pageX - position.left;
     var y = event.pageY - position.top;
     console.log("start x: " + x + ", y: " + y);
     context.beginPath();
     context.moveTo(x,y);

    }, "mousemove touchmove" : function(event) {
     
     event.preventDefault();
     
     if(event.type == 'touchmove'){
      event = event.originalEvent.targetTouches[0];
     }  

     var flag = $(this).data("flag");
     if(flag == 1){
      var position = $(this).offset();
      var x = event.pageX - position.left;
      var y = event.pageY - position.top; 
      
      //console.log("move x: " + x + ", y: " + y);
     }
     context.lineTo(x, y);
     context.stroke();
    }, "mouseup touchend mouseleave" : function(event) {
     
     event.preventDefault();

     console.log("type: " + event.type);
     if(event.type == 'touchend'){
      event = event.originalEvent.changedTouches[0];   
     }   

     $(this).data("flag", "0");
     var position = $(this).offset();
     
     var x = event.pageX - position.left;
     var y = event.pageY - position.top; 
     
     console.log("end: " + x + ", y: " + y);

   //  context.lineTo(x, y);
   //  context.stroke();
    }
    
    });

    $("#id_clear").click(function(){
     canvas.width = canvas.width;
     context.lineWidth=10;
     context.lineCap="round";
    });

    $("#id_copy").click(function(){
     //var imageData = context.getImageData(0,0,canvas.width, canvas.height);
           //var data = imageData.data;

     console.log(canvas.width + ": " + canvas.height);

     var canvasCopy = document.createElement("canvas");
     var copyContext = canvasCopy.getContext("2d");
     
     var w = 80;
     var h = 50;
     canvasCopy.width = w;
     canvasCopy.height = h;

     copyContext.drawImage(canvas, 0, 0, w, h);


     var pngUrl = canvas.toDataURL();
     var copyPngUrl = canvasCopy.toDataURL();
     $("#please").val(canvas.toDataURL());
     console.log("원본이미지 사이즈: " + pngUrl.length);
     console.log("스몰이미지 사이즈: " + copyPngUrl.length);

     console.log("url type: " + typeof(copyPngUrl));
     console.log("스몰이미지 url: " + copyPngUrl);
     console.log("스몰이미지 url: " + copyPngUrl.replace("data:image/png;base64,", ""));

   //  $("<img>", {

   //   src: pngUrl

   //  }).appendTo("#copyarea");

     $("<img>", {

      src: copyPngUrl,
      onload: function(){console.log("img loaded..");}

     }).appendTo("#copyarea");
 
     delete canvasCopy;
    });
   });
</script>
</body>
</html>