<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="hs_reservat" id = "room${roomLoc}" style="padding: 0 20px 0 50px;">
	<h3 class="hs_reservation_title">&nbsp;&nbsp;&nbsp;${roomLoc}F</h3>
	<br/><br/><br/><br/><br/><br/>
		<div id = "selectRomm" align =center>
			<c:set var="i" value="0" />
			<c:forEach items="${rooms }" var="room" varStatus="status" >
				<c:if test="${roomLoc == fn:substring(room.roomNo , 0, fn:length(room.roomNo)-2) }" >
					<c:if test="${room.roomView == 'oceanView'}">
						 <c:if test="${i == 0}" >
							<br /><br /><br /><br/><br/>
						    <c:set var="i" value="1" />
						</c:if> 
					</c:if>
  					<label for="male">${room.roomNo }</label><input type="radio" id="roomSelect" name="roomSelect" value="${room.roomNo }">&nbsp;&nbsp;&nbsp;&nbsp;
				</c:if>
  			</c:forEach>
		</div>
</div>
</body>
</html>