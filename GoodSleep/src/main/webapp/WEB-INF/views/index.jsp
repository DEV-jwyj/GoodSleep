<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Bruce">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">
<link href="resources/css/main.css" rel="stylesheet" />
<link rel="shortcut icon" href="resources/img/favicon.ico" type="image/x-icon">
<title>Good Night - 수면 커뮤니티 </title>
</head>
<body>
	<header>
		<div class="headerMenu">
			<a href="">로그인</a>
			<a href="">회원가입</a>
		</div>
	</header>
	<section>
		<img src="resources/img/logo.png" class="logo" />
		<div class="mainMenu">
			<a href="">
					<i class="fas fa-book"></i> 꿈일기
			</a> | 
			<a href="">
					<i class="far fa-comments"></i> 게시판
			</a>
		</div>
		<h1>당신에게 맞는 적절한 수면시간을 찾아 드립니다.</h1>
		<div class="sleepCal">
			<form method="get" action="sleepCal">
				<select name="sleepHour">
					<c:forEach var="hour" begin="1" end="12">
						<option value="${hour}">${hour}</option>
					</c:forEach>
				</select>
				<select name="sleepMin">
					<c:forEach var="min" begin="0" end="55" step="5">
						<c:choose>
							<c:when test="${min < 10}">
								<option value="${min }">0${min }</option>
							</c:when>
							<c:otherwise>
								<option value="${min }">${min}</option>
							</c:otherwise>
						</c:choose>
					</c:forEach>
				</select>
				<select name="sleepType">
					<option value="AM">AM</option>
					<option value="PM">PM</option>
				</select>
				<input type="submit" value="계산하기" id="sleepTime">
			</form>
		</div>
	</section>
</body>
</html>