<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The dishes Mall - 전체 상품</title>

    <!-- reset css -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">

    <!-- fontawesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css">

    <!-- custom css -->
    <link rel="stylesheet" href="/main.css">
</head>

<body>
    <div class="wrap">
        <!-- header -->
        <header class="">
            <div class="inner-header">
                <h1 class="logo">
                    <a href="#">
                        <img src="/image/Title_ex.png" alt="메인 로고 이미지">
                    </a>
                </h1>

                <!-- 메인 네비게이션바 -->
                <nav class="gnb">
                    <a href="#">신상품</a>
                    <a href="#">베스트</a>
                    <a href="#">카테고리</a>
                </nav>

                <!-- 검색/찜/장바구니 -->
                <nav class="tnb">
                    <a href="#">
                        <form action="/search" class="search">
                            <label>
                                <span class="lnr lnr-magnifier"></span>
                                <input type="text" placeholder="검색어를 입력하세요" id="search">
                                <i class="fas fa-search"></i>
                            </label>
                        </form>
                    </a>
                    <a href="#" class="sign-in-up">
                        <span>로그인</span>
                    </a>
                    <a href="#" class="sign-in-up">
                        <span>회원가입</span>
                    </a>
                    <a href="#"><i class="far fa-heart"></i></a>
                    <a href="#"><i class="fas fa-cart-plus"></i></a>
                    </ul>
                </nav>
            </div>
        </header>
        <!-- //header -->

        <!-- section content > page banner -->
        <!-- 배너 자리 -->
        <section id="page-banner-container">
            <div class="page-banner-img">
                <div class="page-banner-text">
                    <p>카테고리</p>
                    <p>Shop Category</p>
                </div>
                <img src="./image/dishes3.png" alt="카테고리 배너 이미지">
            </div>
        </section>
        <!-- //section content > page banner -->


        <section class="product-container common-style">

            <!-- section content > category list -->

            <div class="category-list-sidebar-wrap">

                <!-- 카테고리 타이틀 텍스트 - 선택된 카테고리 이름이 들어가는 자리 -->
                <h2 class="category-list-title">
                    <a href="#1">전체</a>
                </h2>

                <!-- 카테고리 목록 나열 -->
                <ul>
                    <li class="category-list-branch-title">
                        <div>
                            <a href="#">수저 / 커트러리</a>
                            <button></button>
                        </div>
                        <div>
                            <ul>
                                <li>
                                    <div>
                                        <a href="#">포크</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">나이프</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">스푼</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">젓가락</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">세트</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="category-list-branch-title">
                        <div>
                            <a href="#">식기</a>
                            <button></button>
                        </div>
                        <div>
                            <ul>
                                <li>
                                    <div>
                                        <a href="#">공기</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">대접</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">면기</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">접시</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                    <li class="category-list-branch-title">
                        <div>
                            <a href="#">컵</a>
                            <button></button>
                        </div>
                        <div>
                            <ul>
                                <li>
                                    <div>
                                        <a href="#">유리컵</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">머그컵</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">플라스틱 / 스테인리스</a>
                                    </div>
                                </li>
                                <li>
                                    <div>
                                        <a href="#">커피잔 / 찻잔</a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- //section content > category list//  -->

            <!-- section content > ad banner -->
            <!-- 광고 배너 자리 -->
            <!-- //section content > ad banner -->


            <!-- section content > product -->
            <!-- 상품 정렬 (4개상품 한 줄로 노출) -->
            <section id="products" class="product-list-section">
                <!-- 카테고리 경로 -->
                <p class="category-text">
                    <a href="#">전체</a>
                    <!-- &nbsp;&gt;&nbsp;<a href="#">컵</a>
                    &nbsp;&gt;&nbsp;<a href="#">유리컵</a> -->
                </p>
                <ul class="products-list">
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/220" alt="상품1">
                            <div class="box-info">
                                <span class="pd_nm">product1</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/220" alt="상품2">
                            <div class="box-info">
                                <span class="pd_nm" class="pd_nm">product2</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/220" alt="상품3">
                            <div class="box-info">
                                <span class="pd_nm">product3</span>
                                <span class="pd_price">10,000원</span>
                            </div>
                        </a>
                    </li>
                    <li class="product">
                        <a href="#">
                            <img src="http://via.placeholder.com/220" alt="상품4">
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
            <!-- //section content > new product -->
        </section>
        <!-- //section product container fin -->

        <!-- footer -->
        <footer>
            <div id="site-map">
                <div>
                    <span>회사 소개</span>
                    <span>이용약관</span>
                    <span>개인정보 처리방침</span>
                    <span>공지사항</span>
                    <span>고객센터</span>
                </div>
            </div>
            <div id="copyright">
                <div>Copyright ⓒ2022 All rights reserved │ </div>
            </div>
            <p class="goTop">
                ▲ <br> TOP
            </p>
        </footer>
        <!-- //footer -->
    </div>
</body>

</html>