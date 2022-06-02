<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- header -->
<header>
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