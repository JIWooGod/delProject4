<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>델루나 쇼핑몰 - 관리자</title>

</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
$(function(){
	   $(document).ready(function readURL(input){
	      if (input.files && input.files[0]) {
	           var reader = new FileReader();
	           reader.onload = function (e) {
	            $('#image_section').attr('src', e.target.result);  
	           }
	           reader.readAsDataURL(input.files[0]);
	           }
	      $("#imgInput").change(function(){
	            readURL(this);
	         });
	   });
	});
</script>
<body>
 <jsp:include page="./shopInclude/shopHeader.jsp" flush="true" /> 


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
				<option value="Male">남성의류</option>
				<option value="Female">여성의류</option>
				<option value="Accesories">악세사리</option>
				<option value="Tour">여행상품</option>
				
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
</body>
</html>