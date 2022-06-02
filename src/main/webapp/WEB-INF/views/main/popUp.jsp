<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The dishes Mall</title>

    <!-- reset css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

    <!-- custom css -->
    <link rel="stylesheet" href="/css/main.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body>
  <!-- section login popUp container -->
  <section id="login-popup-container" class="hide__">
    <div class="login-popup-box">
        <div class="login-join-box">
            <div class="login-text">
                <p>로그인</p>
            </div>
            <form class="idpw-input" action="/customer/login" method="post" autocomplete="off" enctype="multipart/form-data">
                <input type="text" name="csId" placeholder="아이디" id="inputId">
                <input type="password" name="csPw" placeholder="비밀번호" id="inputPw">
            
            <div class="login-id-remember">
                <input type="checkbox" checked name="id-remember">
                <p>아이디 저장</p>
            </div>
            <div class="login-sumit-btn"> 
                <input type="button" value="로그인" onclick="go_login()" id="loginBtn">
            </div>
            <div class="mem-search-join">
                <a href="#">아이디/비밀번호 찾기</a>
                <a href="#">회원가입</a>
            </div>

            <div class="sns-join">
                <button>카카오로 시작하기</button>
                <button>네이버로 시작하기</button>
                <button>트위터로 시작하기</button>
                <button>페이스북으로 시작하기</button>
            </div>
        </div>
        </form>
    </div>
</section>
<!-- //section login popUp container -->

<script>
    
    $('#inputId').on('keypress', function(e){
        if(e.keyCode == '13'){
            if( $('#inputId').val() === '' || $('#inputId').val() === null ) {
                //$('#loginBtn').click();
                $("#inputId").attr("placeholder", "아이디를 입력하세요");
            }
        }
        });

    $('#inputPw').on('keypress', function(e){
    if(e.keyCode == '13'){
        if( $('#inputPw').val() !== '' || $('#inputPw').val() !== null ) {
                $('#loginBtn').click();
            }
    }
    });
    
    function go_login() {
        if( $('#inputId').val() === '' || $('#inputId').val() === null ) {
            $("#inputId").attr("placeholder", "아이디를 입력하세요");
            $(".login-popup-box").attr("display","block");
            $(".login-popup-box").attr("position","fixed");
            
            $('#inputId').focus();
            return;
        } else if( $('#inputPw').val() === '' || $('#inputPw').val() === null) {
            $("#inputPw").attr("placeholder", "비밀번호를 입력하세요");
            $('#inputPw').focus();
            return;
        } else {
            $('#inputPw').on('keypress', function(e){
            if(e.keyCode == '13'){
                $('#loginBtn').click();
            }
            });
        }
    }

</script>

</body>

</html>