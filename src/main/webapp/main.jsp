<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="eventBean.UserInfo"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>세희제 시작!</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <script src="resources/common.js"></script>
    <link rel="stylesheet" href="resources/style.css">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
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
        <div class="content-box">
            <div class="content-left">
                <div class="image-box">
                    <img src="resources/images/logo.png" />
                </div>
                <div class="text-box">
                    <span>수고했어, 실행위원회~!</span>
                    <span>ⓒ 연결고리는 한겨울 아름드리나무</span>
                    <div class="roll-box">
                        <button><span class="material-symbols-outlined"> edit_square <a>롤링페이퍼 쓰러 가기</a></span></button>
                    </div>
                </div>
            </div>
            <div class="content-right">
                <div class="info-zone">
                    <div class="user-img"><img src="<%= ((UserInfo)session.getAttribute("userInfo")).getImage() %>"/></div>
                    <div class="user-info">
                        <span><%= ((UserInfo)session.getAttribute("userInfo")).getUserId() %></span>
                        <span><%= ((UserInfo)session.getAttribute("userInfo")).getUserPw() %></span>
                    </div>
                    <div class="heart"></div>
                </div>
                <div class="content-body">
                    <span class="material-symbols-outlined game-btn">
                        stadia_controller
                    </span>
                    <span class="material-symbols-outlined notice-btn">
                        gesture
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="game-modal">
        <div class="game-head">
            <span>부스 구경하기</span>
            <div class="game-head-right">
                <span class="material-symbols-outlined">
                    close
                </span>
            </div>
        </div>
        <div class="game-body">
            <ul>
                <li>
                    <a href="https://vidkidz.tistory.com/85" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/c4i6p0/btqIAPIBayX/VPF5h41TBiVIuAoTozelkk/img.png"></a>
                    <h3>고군분투</h3>
                </li>
                <li>
                    <a href="https://vidkidz.tistory.com/36" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/bLoaHp/btqG62DoUbH/6vc9NaDdkdze6yuG8LV6M0/img.png"></a>
                    <h3>슈의 라면 끓이기</h3>
                </li>
                <li>
                    <a href="https://vidkidz.tistory.com/155" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/bBBlDd/btqJzs1tZfd/JJVRVSEdxCdJGDLSGHMG00/img.png"></a>
                    <h3>감옥 탈출</h3>
                </li>
                <li>
                    <a href="https://vidkidz.tistory.com/431" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/dLycVW/btqL38eXxGJ/OZjDztwlYS0HWZ6ibTKoCK/img.png"></a>
                    <h3>뮤직톡톡</h3>
                </li>
                <li>
                    <a href="https://vidkidz.tistory.com/1514" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/w2o71/btqRxZioDAq/67TKir8bihKkpfzdjlniP1/img.png"></a>
                    <h3>버블슈터</h3>
                </li>
                <li>
                    <a href="https://vidkidz.tistory.com/3939" target='_blank'><img src="https://i1.daumcdn.net/thumb/C276x260/?fname=https://k.kakaocdn.net/dn/pxaz2/btraXRZd36q/yVFHgHka3jJUeXUK7tu810/img.png"></a>
                    <h3>테트리스 하트</h3>
                </li>
            </ul>
        </div>
    </div>
    <div class="comment-modal">
        <div class="comment-head">
            <span>실행위원회에게♥</span>
            <div class="comment-head-right">
                <span class="material-symbols-outlined">
                    close
                </span>
            </div>
        </div>
        <div class="comment-body">
            <div class="comment-title">
                <span class="material-symbols-outlined">
                    mail
                </span>
                <h3>올 한 해도 수고한 <span>나와 친구들을 위해</span> 방명록을 남기자!</h3>
            </div>
            <div class="comment-box">
                <textarea name="commentBody" maxlength="500" placeholder="최대 500글자"
                onfocus="this.placeholder=''" onblur="this.placeholder='최대 500글자'" ></textarea>
                <div class="btn-center">
                    <input type="button" value="작성 완료하기" onclick="RollingPaper('<%= ((UserInfo)session.getAttribute("userInfo")).getUserId() %>')">
                </div>
            </div>
        </div>
    </div>
    <div class="notice-modal">
        <div class="notice-head">
            <span>공지</span>
            <div class="notice-head-right">
                <span class="material-symbols-outlined">
                    close
                </span>
            </div>
        </div>
        <div class="notice-body">
            <span>❄ 드래그하여 위치를 조정하거나 아이콘을 눌러 종료할 수 있습니다. 창이 열리지 않을 경우 연달아 클릭해 주세요. ❄</span>
        </div>
    </div>
</body>
<script>
function RollingPaper(userId){
	let rollingPaper = [];
	const commnuBox = document.querySelector(".comment-box");
	
	const form = createForm("", "RollingPaper", "post");
	rollingPaper.push(createInput("hidden", "userId", userId, ""));
	rollingPaper.push(document.getElementsByName("commentBody")[0]);
	
	for(let i = 0; i < rollingPaper.length; i++){
		form.appendChild(rollingPaper[i]);
	}
	
	commnuBox.appendChild(form);
	form.submit();
}

const wrap = document.querySelector(".game-modal");
const openGame = document.querySelector(".game-btn");
const closeGame = document.querySelector(".game-head-right>span");
const commentWrap = document.querySelector(".comment-modal");
const openComment = document.querySelector(".roll-box>button>span>a");
const closeComment = document.querySelector(".comment-head-right>span");
const gachaWrap = document.querySelector(".notice-modal");
const openGacha = document.querySelector(".notice-btn");
const closeGacha = document.querySelector(".notice-head-right>span");
    
$(function() {
   	$( ".game-modal" ).draggable();
});

$(function() {
    $( ".comment-modal" ).draggable();
});
    
$(function() {
    $( ".notice-modal" ).draggable();
});

openGame.addEventListener("click", e => {
    wrap.style.display = "block";
})

closeGame.addEventListener("click", e => {
    wrap.style.display = "none";
})

openComment.addEventListener("click", e => {
    commentWrap.style.display = "block";
})

closeComment.addEventListener("click", e => {
    commentWrap.style.display = "none";
})

openGacha.addEventListener("click", e => {
    gachaWrap.style.display = "block";
})

closeGacha.addEventListener("click", e => {
    gachaWrap.style.display = "none";
})
</script>

</html>