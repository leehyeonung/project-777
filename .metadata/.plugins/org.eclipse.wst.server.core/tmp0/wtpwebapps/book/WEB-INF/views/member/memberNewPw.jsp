<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<title>Insert title here</title>
<style type="text/css">
body {
	text-align: center;
	margin: 0 auto;
	width: 100%;
	padding-top: 150px;
}

.logo>a>img {
	width: 150px;
	height: 150px;
}

.login-container {
	border: 1px solid gray;
	width: 500px;
	height: 100%;
	margin: 30px auto;
}

.Mem-search>a>button {
	text-decoration: none;
	background-color: white;
	font-size: 15px;
	width: 100px;
	height: 43.5px;
	color: gray;
}
</style>
</head>
<body>
	<h1>새로운 비밀번호 입력</h1>
	<div class="login-container">
		<div class="logo">
			<a href="/"><img src="../resources/logo.jpg" alt="로고"></a><br>
		</div>
		<div class="login">
			<form action="/mem/newPwUpdate" method="post">
				<input type="text" name="mem_id" value=${mvo.mem_id}>
				<input type="text" placeholder="새로운 비밀번호" name="mem_pw"><Br>
				<input type="text" placeholder="새로운 비밀번호 재확인" name="mem_pwRe">
				<br>
				<br> <a><button type="submit"
						class="btn btn-outline-secondary" >확인</button></a> <br>
				<br>
			</form>
		</div>
	</div>


</body>
</html>