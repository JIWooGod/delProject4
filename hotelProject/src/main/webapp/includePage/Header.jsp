<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/hotelProject/css/style.css">
<title>Insert title here</title>
</head>
<body>
	<div id='head_wrapper'>
		<div class='box'>
			<a href='/hotelProject/main'>
				<div class='logo'>
					<img src='/hotelProject/img/t_logo.png'>
				</div>
			</a>
			<div id="navmenu">
				<ul id="navmenu_ul">
					<li class='navmenu_ul_li1'><a href='about'>ABOUT</a>
						<ul class='navmenu_ul_ul1'>
							<li class='navmenu_ul_ul_li1'><a href='about'>인사말</a></li>
							<li class='navmenu_ul_ul_li1'><a href='about2'>오시는 길</a></li>
							<li class='navmenu_ul_ul_li1'><a href='notice'>채용공고</a></li>
						</ul></li>
					<li class='navmenu_ul_li2'><a
						href='standard'>ROOM</a>
						<ul class='navmenu_ul_ul2'>
							<li class='navmenu_ul_ul_li2'><a href='standard'>스탠다드</a></li>
							<li class='navmenu_ul_ul_li2'><a href='deluxe'>디럭스</a></li>
							<li class='navmenu_ul_ul_li2'><a href='deluxeSuite'>디럭스
									스위트</a></li>
							<li class='navmenu_ul_ul_li2'><a href='royalSuite'>로열
									스위트</a></li>
							<li class='navmenu_ul_ul_li2'><a href='preSuite'>프리미어
									스위트</a></li>
						</ul></li>
					<li class='navmenu_ul_li3'><a href='dining1'>Dining&Bar</a>
						<ul class='navmenu_ul_ul3'>
							<li class='navmenu_ul_ul_li3'><a href='dining1'>궁궐</a></li>
							<li class='navmenu_ul_ul_li3'><a href='dining2'>황룡</a></li>
							<li class='navmenu_ul_ul_li3'><a href='dining3'>더 델루나</a></li>
							<li class='navmenu_ul_ul_li3'><a href='dining4'>보나베띠</a></li>
							<li class='navmenu_ul_ul_li3'><a href='dining5'>슈크르 앤 미엘</a></li>
							<li class='navmenu_ul_ul_li3'><a href='dining6'>더 블루</a></li>
							<li class='navmenu_ul_ul_li3'><a href='tblList'>좌석관리</a></li>
							<li class='navmenu_ul_ul_li3'><a href='mgMenuList'>메뉴관리</a></li>
						</ul></li>
					
					<li class='navmenu_ul_li5'><a href='delshop/main'>Shopping
							Mall</a>
						<ul class='navmenu_ul_ul5'>
							<li class='navmenu_ul_ul_li5'><a href='delshop/main'>쇼핑몰</a></li>
						</ul></li>
					<c:if test="${ empty authInfo }">
						<li class='navmenu_ul_li3'><a href='signInForm'>Sign In</a></li>
					</c:if>
					<c:if test="${ !empty authInfo }">
						<li class='navmenu_ul_li3'><a href='javascript:memModal();'>Member</a>
							<ul class='navmenu_ul_ul3'>
								<li class='navmenu_ul_ul_li3'><a href='memberDetail?id=${authInfo.id }'>회원정보</a></li>
								<li class='navmenu_ul_ul_li3'><a href='memResInfo'>레스토랑 예약 내역</a></li>
								<li class='navmenu_ul_ul_li3'><a href='roomReservation?id=${authInfo.id }'>객실 예약 내역</a></li>
								<li class='navmenu_ul_ul_li3'><a href='logout'>로그아웃</a></li>
							</ul></li>
					</c:if>
				</ul>

			</div>
		</div>
	</div>
</body>
</html>