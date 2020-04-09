<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/hotelProject/js/contractSign.js"></script>
<script type="text/javascript" src="/hotelProject/js/error.js"></script>
</head>
<body>
<h2>계약서</h2>
<form action="signing" method="post" enctype="multipart/form-data">
<table id="tableForm">
	<tr>
		<td>분류</td>
		<td>
			<select name="code">
				<option value="">과목분류</option>
				<option value="5100">필수강좌</option>
				<option value="5500">선택강좌</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>과목분류</td>
		<td>
			<select>
				<option value="">과목 선택</option>
				<option value="2100">고객응대교육</option>
				<option value="2200">안전대처훈련</option>
				
				<option value="3100">영어</option>
				<option value="3200">중국어</option>
				<option value="3300">일본어</option>
				<option value="3400">스피치</option>
				<option value="3500">자기PR</option>
			</select>
		</td>
	</tr>
	<tr>
		<td>강사번호</td>
		<td></td>
	</tr>
	<tr>
		<td>성명</td>
		<td></td>
	</tr>
	<tr>
		<td>급여</td>
		<td>
			<input type="number" id="pay" min="0"/>원
			<div id="error"></div>
		</td>
	</tr>
	<tr>
		<td>단위일수</td>
		<td>
			<input type="number" min="1" max="7" id="unitNum"/>일
			<div id="error">* 1~7 사이의 숫자를 입력하시오</div>
		</td>
	</tr>
	<tr>
		<td>계약일자</td>
		<td></td>
	</tr>
	<tr>
		<td>서명</td>
		<td>* 아래 서명란에 서명하시오 <button onclick="javascript:onClear();">다시하기</button><br/>
			<canvas id="drawCanvas" width="300" height="150" style=" position: relative; border: 1px solid #000;"></canvas>
		</td>
	</tr>
</table>
<input type="button" onclick="javascript:canvasToImage()" value="계약하기"/>
<input type="button" onclick="javascript:cancel()">취소</button>
</form>

<script type="text/javascript">
function canvasToImage(){
	var canvas = document.getElementById("drawCanvas");
	var image = canvas.toDateURL("image/png");
	var blobBin = atob(image);
	var file = new Blob([new Uint8Array(blobBin)], {type: 'image/png'});
	var formdata = new FormData();	// formData 생성
	formdata.append("file", file);
	
	submit();
}
</script>
</body>
</html>