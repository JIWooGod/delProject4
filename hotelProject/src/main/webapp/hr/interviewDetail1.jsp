<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<tr>
		<td>지원자번호</td>
		<td>${job.empNo }</td>
		<td>지원자이름</td>
		<td>${job.empName }
	</tr>
	<tr>
		<td>면접관번호</td>
		<td>${job.jobintvViewer }</td>
		<td>면접관이름</td>
		<td></td>
	</tr>
	<tr>
		<td>면접번호</td>
		<td>${job.jobintvNo }</td>
		<td>면접일자</td>
		<td>${job.jobintvRegdate }</td>
	</tr>
</table>
<table>
	<tr>
		<td>언어능력</td>
		<td>${job.jobintvLang }점</td>
	</tr>
	<tr>
		<td>응대능력</td>
		<td>${job.jobintvServ }점</td>
	</tr>
	<tr>
		<td>사회성</td>
		<td>${job.jobintvSocial }점</td>
	</tr>
		<tr>
		<td>문제해결력</td>
		<td>${job.jobintvSolve }점</td>
	</tr>
		<tr>
		<td>업무능력</td>
		<td>${job.jobintvLang }점</td>
	</tr>
</table>
총점 ${score}점
</body>
</html>