<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세희제 시작!</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="resources/common.js"></script>
    <link rel="stylesheet" href="resources/style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body onload="pageInit('${param.message}')">
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="snowflake"></div>
    <div class="content">
        <div class="header">
            <span>세희 국제 고등학교</span>
            <div class="now-clock">
				2012년 12월 5일
            </div>
            <div class="header-right">
                <span class="material-symbols-outlined">
                    remove
                </span>
                <span class="material-symbols-outlined">
                    open_in_new
                </span>
                <span class="material-symbols-outlined">
                    close
                </span>
            </div>
        </div>
        <div class="container">
            <div class="commnu-box">
                <h5>잠깐!</h5>
                <div class="who">본교의 학생이신가요?</div>
                <input type="text" name="userId" maxlength="15" placeholder="이름을 입력하세요."
                    onfocus="this.placeholder='한글로 입력 (일본 인명의 경우 띄어쓰기 필수)'" onblur="this.placeholder='이름을 입력하세요.'" />
                <input type="text" name="userPw" maxlength="6" placeholder="생일을 입력하세요."
                    onfocus="this.placeholder='ex. 940101'" onblur="this.placeholder='생일을 입력하세요.'" />
            </div>
            <div class="welcome-btn">
                <input type="button" value="입장하기" onclick="welcomeUser()" class="button btnPush btnLightBlue" />
            </div>
        </div>
    </div>
</body>
<script>
function welcomeUser(){
	let userData = [];
	const commnuBox = document.querySelector(".commnu-box");
	
	const form = createForm("", "Welcome", "post");
	userData.push(document.getElementsByName("userId")[0]);
	userData.push(document.getElementsByName("userPw")[0]);
	
	for(let i = 0; i < userData.length; i++){
		form.appendChild(userData[i]);
	}
	
	commnuBox.appendChild(form);
	form.submit();	
}
</script>
</html>