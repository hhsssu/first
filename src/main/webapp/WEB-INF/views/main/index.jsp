<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <%@ include file="../include/static-head.jsp" %>
    <title>The dishes Mall</title>
</head>

<body>
    <div class="wrap">
        <!-- header -->
        <%@ include file="../include/header.jsp" %>
        <!-- //header -->

        <!-- section content container -->
        <div class="container">

            <!-- section content > main banner -->
            <!-- 메인 배너 자리 -->
            <section id="main-banner-container">
                <div class="main-banner-img">
                    <a href="#">
                        <img src="/image/banner1.png" alt="메인배너이미지1">
                        <div class="banner-text">
                            <p>banner title1</p>
                        </div>
                    </a>
                </div>
                <div class="main-banner-img">
                    <a href="#">
                        <img src="/image/banner2.png" alt="메인배너이미지2">
                        <div class="banner-text">
                            <p>banner title2</p>
                        </div>
                    </a>
                </div>
                <div class="click-next-pre">
                    <a href="#">Next</a>
                    <p>&nbsp;&nbsp;|&nbsp;&nbsp;</p>
                    <a href="#">Previous</a>
                </div>
            </section>
            <!-- //section content > main banner -->



            <!-- section content > category -->
            <!-- 카테고리 이미지 영역 -->
            <section id="category" class="common-style">
                <div class="section-title">Category</div>
                <div class="products">
                    <a href="#" class="category-link one">
                        <img src="/image/Cate_Cutlery.jpg" alt="카테고리1 Premium Quality Cutlery">
                        <div class="box-info">
                            <span class="pq-text">Premium Quality</span>
                            <span class="category-nm">Cutlery</span>
                        </div>
                    </a>
                    <a href="#" class="category-link two">
                        <img src="/image/Cate_bowl.jpg" alt="카테고리2 Premium Quality Bowl">
                        <div class="box-info">
                            <span class="pq-text">Premium Quality</span>
                            <span class="category-nm">Bowl</span>
                        </div>
                    </a>
                    <a href="#" class="category-link three">
                        <img src="/image/Cate_Cup.jpg" alt="카테고리3 Premium Quality Cup">
                        <div class="box-info">
                            <span class="pq-text">Premium Quality</span>
                            <span class="category-nm">Cup</span>
                        </div>
                    </a>
                    <a href="#" class="category-link four">
                        <img src="/image/Cate_Plate.jpg" alt="카테고리4 Premium Quality Plate">
                        <div class="box-info">
                            <span class="pq-text">Premium Quality</span>
                            <span class="category-nm">Plate</span>
                        </div>
                    </a>
                </div>
            </section>
            <!-- //section content > category -->


            <!-- section content > new product -->
            <!-- 새 상품 정렬 (4개상품 한 줄로 노출) -->
            <section id="new-products" class="common-style product-list-section">
                <div class="section-title">New Products</div>
                <div class="click-more">
                    <a href="#">Next</a>&ensp; | &ensp;<a href="#">Previous</a>
                </div>
                <ul class="products-list">
                    <c:forEach var="a" items="${articles}">
                        <li class="product">
                            <a href="/product/info?prCode=${a.prCode}">
                                <img src="/product/list/${a.prThumb}" alt="상품1">
                                <div class="box-info">
                                    <span class="pd_nm">${a.prName}</span>
                                    <span class="pd_price">
                                        <fmt:formatNumber value="${a.prPrice}" pattern="#,###" />원</span>
                                </div>
                            </a>
                        </li>
                    </c:forEach>
                    <!--  <li class="product">
                        <a href="/product/info?prCode=${a.prCode}">
                            <img src="/product/list/${a.prThumb}" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">${a.prName}</span>
                                <span class="pd_price">${a.prPrice}</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="/product/info?prCode=${a.prCode}">
                            <img src="/product/list/${a.prThumb}" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">${a.prName}</span>
                                <span class="pd_price">${a.prPrice}</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="/product/info?prCode=${a.prCode}">
                            <img src="/product/list/${a.prThumb}" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">${a.prName}</span>
                                <span class="pd_price">${a.prPrice}</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="/product/info?prCode=${a.prCode}">
                            <img src="http://via.placeholder.com/230" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">product4</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">product4</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li> -->
                </ul>
            </section>
            <!-- //section content > new product -->


            <!-- section content > best product -->
            <!-- 베스트 상품 정렬 (8개 상품 2줄로 노출) -->
            <section id="best-products" class="common-style product-list-section">
                <div class="section-title">Best Products</div>
                <div class="click-more">
                    <a href="#">Next</a> &ensp; | &ensp;<a href="#">Previous</a>
                </div>
                <ul class="products-list">
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">product4</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">product4</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/230" alt="상품4">
                            <div class="box-info">
                                <span class="pd_nm">product4</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                </ul>
            </section>
            <!-- //section content > best product -->


            <!-- section content > labels -->
            <section id="labels" class="common-style">

                <ul>
                    <li><img src="http://via.placeholder.com/150" alt=""></li>
                    <li><img src="http://via.placeholder.com/150" alt=""></li>
                    <li><img src="http://via.placeholder.com/150" alt=""></li>
                    <li><img src="http://via.placeholder.com/150" alt=""></li>
                    <li><img src="http://via.placeholder.com/150" alt=""></li>
                </ul>
            </section>
            <!-- //section content > labels -->
        </div>
        <!-- //section content container -->


        <!-- section login popUp container -->
        <section id="login-popup-container" class="hide__">
            <div class="login-popup-box">
                <div class="login-join-box">
                    <div>
                        <i class="fas fa-times"></i>
                    </div>
                    <div class="login-text">
                        <p>로그인</p>
                    </div>
                    <form class="idpw-input" action="/customer/login" method="post" autocomplete="off" id="loginForm">
                        <input type="text" name="csId" placeholder="아이디" id="inputId" class="id-pw">
                        <input type="password" name="csPw" placeholder="비밀번호" id="inputPw" class="id-pw">

                        <div class="login-id-remember">
                            <input type="checkbox" checked name="id-remember" class="id-rem">
                            <p>아이디 저장</p>
                        </div>
                        <div class="login-submit-btn">
                            <input type="button" value="로그인" id="loginBtn" class="login-btn">
                        </div>
                        <div class="mem-search-join">
                            <a href="#">아이디/비밀번호 찾기</a>
                            <a href="#">회원가입</a>
                        </div>

                        <div class="sns-join">
                            <button class="login-btn">카카오로 시작하기</button>
                            <button class="login-btn">네이버로 시작하기</button>
                            <button class="login-btn">트위터로 시작하기</button>
                            <button class="login-btn">페이스북으로 시작하기</button>
                        </div>
                </div>
                </form>
            </div>
        </section>
        <!-- //section login popUp container -->


        <!-- modal -->
        <div class="modal fade" tabindex="-1" id="myModal" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">게시글 등록 완료</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>게시판 메인 페이지로 이동합니다.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary" onclick="location.href='/board'">확인</button>
                    </div>
                </div>
            </div>
        </div>
        <!--  //modal -->

        <!-- footer -->
        <%@ include file="../include/footer.jsp" %>
        <!-- //footer -->
    </div>


    <script>
        function doDisplay() {
            document.getElementById("login-popup-container").style.display = "block";
            document.querySelector(".login-popup-box").style.display = "block";
        }



        //enter 누를 때 이벤트
        $('input[type="text"]').keydown(function() {
              if (event.keyCode === 13) {
             event.preventDefault();
             if( $('#inputId').val() === '' || $('#inputId').val() === null ) {

                    //$("#inputId").attr("placeholder", "아이디를 입력하세요");
                    //$("#inputId").css("background", "#00B261");
                    alert("아이디를 입력하세요");
                }
            }
        });


        $('input[type="password"]').keydown(function () {
            if (event.keyCode === 13) {
                event.preventDefault();
                if ($('#inputPw').val() === '' || $('#inputPw').val() === null) {
                    //$("#inputPw").attr("placeholder", "비밀번호를 입력하세요");
                    // $("#inputPw").css("background", "#00B261");
                    alert("비밀번호를 입력하세요");
                } else {
                    $("#loginForm").submit();
                }
            }
        });



        //로그인 클릭 
        $('#loginBtn').click(function() {
             if( $('#inputId').val() === '' || $('#inputId').val() === null ) {
                    alert("아이디를 입력하세요");
                } else if( $('#inputPw').val() === '' || $('#inputPw').val() === null ) {
                    
                   alert("비밀번호를 입력하세요");
                } else {
                    $("#loginForm").submit();
                }
        });


        
        function cartList(target) {
            if(target) {
                location.href = "/cart/list";
            } else {
                alert("로그인 후 이용해주세요 :)");
            }
        }
      
    </script>

</body>

</html>