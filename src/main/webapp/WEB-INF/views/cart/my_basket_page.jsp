<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The dishes Mall - 장바구니</title>
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
        <section id="page-banner-container" class="basket-bn">
            <div class="page-banner-img">
                <div class="page-banner-text">
                    <p>장바구니</p>
                    <p>Shopping basket</p>
                </div>
                <img src="./image/basket.png" alt="카테고리 배너 이미지">
            </div>
        </section>
        <!-- //section content > page banner -->

        <!-- section content > basket list -->
        <section id="basket-list-container">
            <div class="basket-list-title">
                <ul class="basket-select-all">
                    <li><input type="checkbox" name="basket" checked></li>
                    <li>전체선택</li>
                </ul>
                <ul class="basket-delete">
                    <li class="basket-delete-btn">
                        <button type="submit">전체삭제</button>
                    </li>
                    <li>
                        &nbsp;
                    </li>
                    <li class="basket-delete-btn">
                        <button type="submit">선택삭제</button>
                    </li>
                </ul>
            </div>
            <table class="basket-list">
                <tbody class="basket-list-pd">
                    <tr class="basket-pd-info">
                        <td>
                            <input type="checkbox" name="basket" checked>
                        </td>
                        <td class="basket-pd-img">
                            <img src="./image/basket.png" alt="상품 이미지">
                        </td>
                        <td>
                            <p>대나무 손잡이 바구니</p>
                            <p>색상: 메이플</p>
                        </td>
                        <td>
                            <p>10,000원</p>
                        </td>
                        <td>
                            <input type="number" name="basket" value="1">
                            <button type="submit">변경</button>
                        </td>
                        <td>
                            <i class="fas fa-times"></i>
                        </td>
                    </tr>
                    <tr class="basket-pd-info">
                        <td>
                            <input type="checkbox" name="basket" checked>
                        </td>
                        <td class="basket-pd-img">
                            <img src="./image/dishes3.png" alt="상품 이미지">
                        </td>
                        <td>
                            <p>도트무늬 공기</p>
                            <p>색상: 블루 도트</p>
                        </td>
                        <td>
                            <p>10,000원</p>
                        </td>
                        <td>
                            <input type="number" name="basket" value="1">
                            <button type="submit">변경</button>
                        </td>
                        <td>
                            <i class="fas fa-times"></i>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="basket-sum">
            </div>
        </section>
        <!-- //section content > basket list -->

        <!-- section content > basket total -->
        <section id="basket-total-container">
            <div>
            <table class="basket-total-box">
                <tbody class="basket-total">
                    <tr>
                        <th>
                            상품금액
                        </th>
                        <td>
                            <span class="">20,000</span>
                            <span>원</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            배송비
                        </th>
                        <td>
                            <span class="">+3,000</span>
                            <span>원</span>
                        </td>
                    </tr>
                    <tr class="bk-total">
                        <th>
                            결제예정금액
                        </th>
                        <td>
                            <span class="">23,000</span>
                            <span>원</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="bk-btn-box">
                <button type="submit" class="bk-btn">전체주문</button>
                <button type="submit" class="bk-btn">선택주문</button>
            </div>
            
        </div>
        </section>
        <!-- //section content > basket total -->

        <!-- footer -->
        <footer style="clear: both;">
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