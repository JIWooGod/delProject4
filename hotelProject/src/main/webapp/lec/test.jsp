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
<script type="text/javascript" src="js/testQuestion.js"></script>
</head>
<body>
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
</body>
</html>