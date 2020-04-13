<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       
      
<form action="InsertPro" method="post"  
	name="goodsform" enctype="multipart/form-data">
<table cellpadding="0" cellspacing="0">
	<tr align="center" valign="middle">
		<td colspan="5">상품등록</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">판매가격</div>
		</td>
		<td>
			<input name="goodsPrice" type="text" size="20" maxlength="20" 
				value=""/>
		</td>
	</tr>	
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">카테고리</div>
		</td>
		<td>
				<select name="goodsCategory" id="goodsCategory">
				<option value="null">필수선택</option>
				<option value="Outer">Outer</option>
				<option value="Top">Top</option>
				<option value="Bottom">Bottom</option>
				<option value="Shoes">Shoes</option>
				<option value="ACC">고급</option>
				<option value="승합">승합</option>
				
		</td>
		
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품코드</div>
		</td>
		<td>
			<input name="goodsCode" type="text" size="20" maxlength="30" 
				value=""/>
		</td>
	</tr>
	<tr>
		<td style="font-family:돋음; font-size:12" height="16">
			<div align="center">상품명</div>
		</td>
		<td>
			<input name="goodsName" type="text" size="50" maxlength="100" value="" required="required" />
		</td>
	</tr>
	
	<tr>
		<td style="font-family:돋음; font-size:12">
			<div align="center">상품설명</div>
		</td>
		<td>
			<textarea name="goodsOpt" cols="67" rows="15"></textarea>
		</td>
	</tr>
	<tr>
			<td style="font-family:돋음; font-size:12">
				<div align="center">상품 이미지</div>
			</td>
			<td>
				<input type="file" name="goodsPic" id="imgInput" multiple = "multiple" />
				<div ><img id="image_section" src="#" alt="" style="width: 500px; height: 500px" /></div>
			</td>	
	</tr>
	<tr bgcolor="cccccc">
		<td colspan="2" style="height:1px;">
		</td>
	</tr>
	<tr><td colspan="2">&nbsp;</td></tr>
	<tr align="center" valign="middle">
		<td colspan="5">
			<a href="javascript:goodsform.submit();">[등록]</a>&nbsp;&nbsp;

			<a href="javascript:history.go(-1)">[뒤로]</a>
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
