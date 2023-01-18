<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/92e616dfba.js" crossorigin="anonymous"></script>
<link href="../resources/css/memberJoin.css" type="text/css" rel="stylesheet">
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/resources/js/memberJoin.js"></script>
<title>회원가입</title>
<style type="text/css">
.pwRe_ok {
	color: #008000;
	display: none;
}

.pwRe_rewrite {
	color: #ff0000;
	display: none;
}

.pwRe_null {
	color: #ff0000;
	display: none;
}
</style>
</head>
<body>
<script type="text/javascript">
function checkPwRe(){
	var mem_pwRe = document.getElementById('mem_pwRe').value; //id값이 "id"인 입력란의 값을 저장
	console.log(mem_pwRe);
	$.ajax({
		url:'/mem/pwCheckRe', //Controller에서 요청 받을 주소
		type:'post', //POST 방식으로 전달
		data:{mem_pwRe:mem_pwRe},
		success:function(isOk){ //컨트롤러에서 넘어온 isOK값을 받는다 
			if(isOk == 'pwRe_ok'){ //ok이면 가입 가능
				$('.pwRe_ok').css("display","inline-block"); 
				$('.pwRe_rewrite').css("display", "none"); //정규식 어긋나면
				$('.pwRe_null').css("display", "none");
			}else if(isOk =='pwRe_null'){//input이 null값임. 입력 요청
				$('.pwRe_ok').css("display","none"); 
				$('.pwRe_rewrite').css("display", "none");
				$('.pwRe_null').css("display", "inline-block");
			} 
			else { //중복일 경우
				$('.pwRe_ok').css("display", "none");
				$('.pwRe_rewrite').css("display","inline-block");
				$('.pwRe_null').css("display", "none");
				// alert("아이디를 다시 입력해주세요");
				$('#mem_pwRe').val('');
			}
		},
		error:function(request,status,error){
		console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}	

	});
	};	
</script>
	<form action="/mem/join" method="post">
		<div class="join-container">
			<div class="logo">
				<a href="/"><img src="../resources/img/logo.jpg" alt="로고"></a><br>
			</div>
			<lable for="mem_id">ID</lable>
			<br> <input type="text" class="join-input" name="mem_id" id="mem_id" placeholder="아이디" onchange="checkId()" required> <span class="id_ok"><i class="fa-solid fa-check"></i></span> <span class="id_duplicate"><i class="fa-solid fa-x"></i></span> <span class="id_null"><i class="fa-solid fa-x"></i></span> <Br>
			<lable for="mem_pw">PW</lable>
			<br> <input type="password" class="join-input" name="mem_pw" id="mem_pw" placeholder="영문(대소문자 구분), 숫자, 특수문자 조합, 9~12자리" onchange="checkPw()" required> <span class="pw_ok"><i class="fa-solid fa-check"></i></span> <span class="pw_rewrite"><i class="fa-solid fa-x"></i></span> <span class="pw_null"><i class="fa-solid fa-x"></i></span><br>

			<lable for="mem_pwRe">PW Re</lable>
			<br> <input type="password" class="join-input" name="mem_pwRe" id="mem_pwRe" placeholder="비밀번호 확인을 위해 한번 더 입력해주세요" onchange="checkPwRe()" required> <span class="pwRe_ok"><i class="fa-solid fa-check"></i></span> <span class="pwRe_rewrite"><i class="fa-solid fa-x"></i></span> <span class="pwRe_null"><i class="fa-solid fa-x"></i></span> <br>

			<lable for="mem_name">NAME</lable>
			<br> <input type="text" class="join-input" name="mem_name" placeholder="이름" required> <br>
			<lable for="mem_postzip">ADDRESS</lable>
			<br> <input type="text" class="join-input zip" id="postcode" name="mem_postzip" placeholder="우편번호" required> <input type="button" class="join-input zip btn btn-outline-primary" onclick="execDaumPostcode()" value="우편번호 찾기"> <br> <input type="text" class="join-input" id="address" name="address" placeholder="주소" required> <br> <input type="text" class="join-input" id="detailAddress" name="detailAddress" placeholder="상세주소" required> <input type="text" class="join-input" id="extraAddress" name="extraAddress" placeholder="참고항목" readonly="readonly"> <br>
			<lable for="mem_age">AGE</lable>
			<br> <input type="text" class="join-input" name="mem_age" placeholder="나이" required> <br>
			<lable for="mem_gender">GENDER</lable>
			<br> <select class="join-input" name="mem_gender">

				<option value="0">남자</option>
				<option value="1">여자</option>
			</select> <br>
			<lable for="mem_cell_num">PHONE</lable>
			<br> <input type="text" class="join-input" name="mem_cell_num" id="mem_cell_num" placeholder="숫자만 써주세요" onchange="checkCellNum()" required> <span class="cellNum_ok"><i class="fa-solid fa-check"></i></span> <span class="cellNum_duplicate"><i class="fa-solid fa-x"></i></span> <span class="cellNum_null"><i class="fa-solid fa-x"></i></span> <br>
			<lable for="mno_cno">FAVORITE</lable>
			<br> <select class="join-input" name="mno_cno">

				<option value="novel">소설</option>
				<option value="essay">에세이</option>
				<option value="life">건강/취미</option>
				<option value="computer">컴퓨터/모바일</option>
				<option value="problem">문제집</option>
			</select> <Br>
			<button type=submit " class="btn btn-outline-secondary btn-submit">가입하기</button>

		</div>
	</form>

	<div>
		<p>
			이미 가입되어 있으신가요? <a href="/mem/loginPage">로그인하기</a>
		</p>
	</div>

</body>
</html>