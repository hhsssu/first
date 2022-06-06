<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link rel="stylesheet" href="/css/main.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
                <img src="/image/basket.png" alt="카테고리 배너 이미지">
            </div>
        </section>
        <!-- //section content > page banner -->

        <!-- section content > basket list -->
        <section id="basket-list-container">
            <div class="basket-list-title">
                <ul class="basket-select-all">
                    <li><input type="checkbox" id="check_all" name="basket" onclick="checkAll();" checked></li>
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
                    <c:forEach var="p" items="${product}">
                    <tr class="basket-pd-info">
                       
                        <td>
                            <input type="checkbox" value='${p.prCode}' name="cartChecked" onclick="calcGoodsPrice('${p.prPrice}', this)"  id="input_check" checked>
                        </td>
                        <td class="basket-pd-img">
                            <img src="/product/list/${p.prThumb}" alt="상품 이미지">
                        </td>
                        
                        
                        <td>
                            <p>${p.prName}</p>
                            <p>색상: 메이플</p>
                        </td>
                       
                        <td>
                            <span id="prPrice"><fmt:formatNumber value="${p.prPrice}" pattern="#,###"/></span>
                            <span>원</span>
                            
                        </td>
                        <td>
                            <input type="number" name="cartAmount"  id="cart_Amount" value="1">
                            <button type="submit">변경</button>
                        </td>
                        <td>
                            <i class="fas fa-times"></i>
                        </td>
                       
                    </tr>
                    </c:forEach>
                
                      <!--
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
                    </tr> -->
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
                            <span class="orderPrice"><fmt:formatNumber value="0" pattern="#,###"/></span>
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

    <script>


        let totalPrice = 0;
        let total = document.querySelector(".orderPrice").textContent;
        let amount = document.getElementById('cart_Amount').value;
        let price = document.getElementById('prPrice').textContent;
        let input = document.getElementById('input_check');
        let plus_btn = document.getElementById('plus');


        console.log(total);
        console.log(amount);
        console.log(price);
        console.log(input);

         // 체크박스 개별선택, 전체해제 


         function calcGoodsPrice(prPrice, obj) {

            if (obj.checked == true) {
                //alert("체크가 되었어요! :) ")

                totalPrice += Number(amount) * Number(prPrice);

                console.log("obj: ", obj);



            } else {
                totalPrice -= amount * prPrice;

            }
            total = totalPrice;
            }

            /* 체크박스 전체선택, 전체해제 */

            let fSum = 0;
            let sSum = 0;

            function checkAll() {
            if ($("#check_all").is(':checked')) {
                $("input[name=cartChecked]").prop("checked", true);

                let arr = new Array();
                let chks = document.getElementsByName("cartChecked");
                let cart = document.getElementsByName("cartAmount");

                console.log("chks" , chks);
                console.log("cart" , cart);

                for (let i = 0; i < chks.length; i++) {
                    arr[i] = parseInt(chks[i].value);

                     console.log("==== 전체체크 ==== ");
                     console.log("arr: ",arr);
                     console.log("arr" +[i]+ arr[i]);
                     console.log("cart: ", cart);
                     console.log("cart" +[i]+ cart[i].value);
                    fSum = arr[i] * cart[i].value;
                    sSum += fSum

                }

            } else {
                $("input[name=cartChecked]").prop("checked", false);
                sSum = 0;
            }
            total = sSum;
            }


    </script>

</body>

</html>