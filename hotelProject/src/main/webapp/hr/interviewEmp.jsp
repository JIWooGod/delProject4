<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<h2>${applier.empName } 님 면접표</h2>
<table>
	<tr>
		<td>면접관 정보</td>
		<td><input type="text" name="empNo" id="empNo" placeholder="사원번호를 입력하시오"></td>
		<td colspan="3" id="div1">
		</td>
	</tr>
	<tr>
		<td>면접자 번호</td>
		<td>${applier.empNo }</td>
		<td>부서명</td>
		<td>${applier.deptNo }</td>
		<td>면접자 이름</td>
		<td><b>${applier.empName }</b></td>
	</tr>
	<tr>
		<td>면접일</td>
		<td colspan="3" id="dayView"></td>
	</tr>
</table>
<hr/>
<form action="scoring" method="post" id="frm2">
<input type="hidden" name="applierNo" value="${applier.empNo }"/>
<input type="hidden" name="empNo" value="${emp.empNo }"/>
<table id="tableForm">
	<tr>
		<th>문항</th>
		<th>1점</th>
		<th>2점</th>
		<th>3점</th>
		<th>4점</th>
		<th>5점</th>
	</tr>
	<tr>
		<td>언어능력</td>
		<td><input type="radio" name="q1st" value="1"></td>
		<td><input type="radio" name="q1st" value="2"></td>
		<td><input type="radio" name="q1st" value="3"></td>
		<td><input type="radio" name="q1st" value="4"></td>
		<td><input type="radio" name="q1st" value="5"></td>
	</tr>
		<tr>
		<td>응대능력</td>
		<td><input type="radio" name="q2nd" value="1"></td>
		<td><input type="radio" name="q2nd" value="2"></td>
		<td><input type="radio" name="q2nd" value="3"></td>
		<td><input type="radio" name="q2nd" value="4"></td>
		<td><input type="radio" name="q2nd" value="5"></td>
	</tr>
		<tr>
		<td>사회성</td>
		<td><input type="radio" name="q3rd" value="1"></td>
		<td><input type="radio" name="q3rd" value="2"></td>
		<td><input type="radio" name="q3rd" value="3"></td>
		<td><input type="radio" name="q3rd" value="4"></td>
		<td><input type="radio" name="q3rd" value="5"></td>
	</tr>
		<tr>
		<td>문제해결력</td>
		<td><input type="radio" name="q4th" value="1"></td>
		<td><input type="radio" name="q4th" value="2"></td>
		<td><input type="radio" name="q4th" value="3"></td>
		<td><input type="radio" name="q4th" value="4"></td>
		<td><input type="radio" name="q4th" value="5"></td>
	</tr>
	<tr>
		<td>업무능력</td>
		<td><input type="radio" name="q5th" value="1"></td>
		<td><input type="radio" name="q5th" value="2"></td>
		<td><input type="radio" name="q5th" value="3"></td>
		<td><input type="radio" name="q5th" value="4"></td>
		<td><input type="radio" name="q5th" value="5"></td>
	</tr>
</table>
<input type="submit" value="채점완료"/>
<input type="reset" value="초기화"/>
<input type="button" onclick="javascript:toMain()" value="취소"/>
</form>

<script type="text/javascript">
$("#empNo").blur(function(){
 	$.ajax({
		type:"POST",
		url:"./interviewer?empNo="+$("#empNo").val(),
		dataType:"html",
		success:function(data){
			$("#div1").html(data);
		},
		error:function(){
			alert("정확한 사원번호를 입력하시오");
			return false;
		}
	}); 
});

function exposeDate(){
	var today = new Date();
	console.log(today.getFullYear()+"/"+(today.getMonth()+1)+"/"+today.getDate());
	$("#dayView").html = today.getFullYear()+"/"+(today.getMonth()+1)+"/"+today.getDate();
}
function toMain(){
	location.href='../personnel';
}
document.getElementById("dayView").addEventListener("load",exposeDate,false);
</script>
</body>
</html>