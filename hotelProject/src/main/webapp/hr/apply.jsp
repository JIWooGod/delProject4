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
<style type="text/css">

</style>
</head>
<body>
<h2>직원 채용 신청</h2>
<form:form action="appling" id="frm" commandName="applyCommand">
<table class="tableForm">
	<tr>
		<td>아이디 *</td>
		<td>
			<form:input path="id" id="id" placeholder="아이디를 입력하시오"/>
			<form:errors path="id" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 *</td>
		<td>
			<form:password path="pw" placeholder="비밀번호를 입력하시오"/>
			<form:errors path="pw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>비밀번호 확인 *</td>
		<td>
			<form:password path="rePw" placeholder="비밀번호를 다시 입력하시오"/>
			<form:errors path="rePw" class="error"/>
		</td>
	</tr>
	<tr>
		<td>이름 *</td>
		<td>
			<form:input path="name" placeholder="이름을 입력하시오"/>
			<form:errors path="name" class="error"/>
		</td>
	</tr>
	<tr>
		<td>연락처 *</td>
		<td>
			<form:input path="tel" placeholder="-를 제외한 숫자를 입력하시오"/>
			<form:errors path="tel" class="error"/>
		</td>
	</tr>
	<tr>
		<td>이메일 *</td>
		<td>
			<form:input path="email" id="email" placeholder="이메일을 입력하시오"/>
			<form:errors path="email" class="error"/>
		</td>
	</tr>
	<tr>
		<td>주소 *</td>
		<td>
			<form:input path="addr" placeholder="주소를 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>지원 부서</td>
		<td>
			<input type="hidden" name="job" value="staff"/>
			<form:select path="deptNo">
				<option value="100">인사</option>
				<option value="110">교육</option>
				<option value="120">객실관리</option>
				<option value="130">레스토랑</option>
				<option value="140">쇼핑몰</option>
			</form:select>
		</td>
	</tr>
	<tr>
		<td>자격증</td>
		<td>
			<form:textarea path="certi" placeholder="직군 관련 자격증을 입력하시오"/>
		</td>
	</tr>
	<tr>
		<td>경력사항</td>
		<td><form:textarea path="career" placeholder="경력사항을 자세히 입력하시오"/></td>
	</tr>
</table>
<input type="submit" id="send" value="지원하기">
<input type="reset" value="초기화">
</form:form>
<button onclick="location.href='../personnel'">취소</button>
</body>
</html>