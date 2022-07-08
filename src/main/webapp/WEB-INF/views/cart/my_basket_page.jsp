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


                  <!-- 
                      <section class="search">
                    <form action="/board/list" method="get">
                    <select id="search-type" class="form-select" name="type">
                        <option value="title">제목</option>
                        <option value="content">내용</option>
                        <option value="writer">작성자</option>
                        <option value="titleContent">제목+내용</option>
                    </select>

                    <input class="form-control" type="text" name="keyword" value="${pageInfo.page.keyword}">

                    <button class="btn btn-primary" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
            </section>

                   -->

                <!-- 검색/찜/장바구니 -->
                <nav class="tnb">
                    <a href="#">
                        <form action="/cart/list" method="get" class="search">
                            <label>
                                <span class="lnr lnr-magnifier"></span>
                                <input type="text" placeholder="검색어를 입력하세요" id="search">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fas fa-search"></i>
                                </button>
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
                    <li><input type="checkbox" class="allCheck" id="check_all" onclick="checkAll();"></li>
                    <li>전체선택</li>
                </ul>
                <ul class="basket-delete">
                    <li class="basket-delete-btn">
                        <button type="button" onclick="allDelete()">전체삭제</button>
                    </li>
                    <li>
                        &nbsp;
                    </li>
                    <li class="basket-delete-btn">
                        <button type="button" class="checkDel" onclick="checkDelete()">선택삭제</button>
                    </li>
                </ul>
            </div>
            <table class="basket-list">
                <tbody class="basket-list-pd">
                    <c:forEach var="c" items="${cart}" varStatus="status">
                        
                    <tr class="basket-pd-info">
                       
                        <td>
                            <input type="checkbox" value="${c.cartCode}" name="cartChecked" onclick="calcGoodsPrice('${product[status.index].prPrice}', this, '${c.cartAmount}')"  id="input_check">
                        </td>
                        <td class="basket-pd-img">
                            <img src="/product/list/${product[status.index].prThumb}" alt="상품 이미지">
                        </td>
                        
                        
                        <td>
                            <p>${product[status.index].prName}</p>
                            <p><span>색상:</span> <span>${c.prColor}</span></p>
                            <p><span>사이즈:</span> <span>${c.prSize}</span></p>
                        </td>
                       
                        <td>
                            <span id="prPrice"><fmt:formatNumber value="${product[status.index].prPrice}" pattern="#,###"/></span>
                            <span>원</span>
                            
                        </td>
                        <td>
                            <form action="/cart/modify" method="post">

                                <input type="hidden" name="cartCode" value="${c.cartCode}">  
                                <input type="hidden" name="csId" value="${loginCustomer.csId}"> 
                            

                                <input type="number" name="cartAmount" id="cart_Amount" value="${c.cartAmount}" min="1">
                                <button type="submit" class="modCart">변경</button>
                             </form>
                        </td>
                        <td>
                            <a href="/cart/delete?cartCode=${c.cartCode}" onclick="return confirm('정말 삭제하시겠습니까?');"><i class="fas fa-times"></i></a>
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
                            <span class="pr_Price">0</span>
                            <span>원</span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            배송비
                        </th>
                        <td>
                            <span class="delivery">0</span>
                            <span>원</span>
                        </td>
                    </tr>
                    <tr class="bk-total">
                        <th>
                            결제예정금액
                        </th>
                        <td>
                            <span class="orderPrice">0</span>
                            <span>원</span>
                        </td>
                    </tr>
                </tbody>
            </table>
            <div class="bk-btn-box">
                <form action="/order/add" method="post">
                    <c:forEach var="c" items="${cart}">
                    
                        <input type="hidden" name="cartCode" value="" id="hiddenCartCode" >  
                        <input type="hidden" name="orderAmount" value="" id="hiddenOrderAmount">  
                        <input type="hidden" name="prName" value="" id="hiddenPrName">  
                        <input type="hidden" name="prColor" value="" id="hiddenPrColor">  
                        <input type="hidden" name="prSize" value="" id="hiddenPrSize">  
                        <input type="hidden" name="orderTotalPrice" value="">  
                        <input type="hidden" name="deliPrice" value="">  
                    </c:forEach>

                        <input type="hidden" name="csId" value="${loginCustomer.csId}"> 
                        <input type="hidden" name="csName" value="${loginCustomer.csName}"> 
                        <input type="hidden" name="csPhone" value="${loginCustomer.csPhone}"> 
                        <input type="hidden" name="postCode" value="${loginCustomer.postCode}"> 
                        <input type="hidden" name="roadAddr" value="${loginCustomer.roadAddr}"> 
                        <input type="hidden" name="lotNumAddr" value="${loginCustomer.lotNumAddr}"> 
                        <input type="hidden" name="extraAddr" value="${loginCustomer.extraAddr}"> 


                    <button type="button" id="allOrder" class="bk-btn">전체주문</button> 
                    <button type="submit" id="checkOrder" class="bk-btn">선택주문</button>
                </form>
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
            </div>cart_Amount
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
        let sum = 0;
        let total = document.querySelector(".orderPrice").textContent;
        let amount = document.getElementById('cart_Amount').value;
        let price = document.querySelector('#prPrice').textContent;
        let input = document.getElementById('input_check');
        let plus_btn = document.getElementById('plus');

        function delivery() {
             /* 배송비 결정 */
             if(sum == 0){
                dv = 0;
                $(".delivery").text("+"+dv.toString());
            } else if(sum >= 30000){
                dv = 0;
                $(".delivery").text("+"+dv.toString());
            } else {
                dv = 3000;	
                $(".delivery").text("+"+dv.toString());
            }

        }

         // 체크박스 개별선택, 해제 
         function calcGoodsPrice(prPrice, obj, cartAm) {

            let result = Number(cartAm) * Number(prPrice);
            let chks = document.getElementsByName("cartChecked");
            
            if(chks.length == 0) sum = 0; dv =0;

            let count = 1; //전체선택 해지 설정할 임의의 변수 설정


            if (obj.checked == true) {
                $('#hiddenCartCode').attr('value', obj.value);

                let color = obj.parentElement.nextElementSibling.nextElementSibling.firstElementChild.
                nextElementSibling.lastElementChild.textContent;

                let size = obj.parentElement.nextElementSibling.nextElementSibling.firstElementChild.
                nextElementSibling.nextElementSibling.lastElementChild.textContent;

                let amount = obj.parentElement.nextElementSibling.nextElementSibling.nextElementSibling.nextElementSibling
                .firstElementChild.firstElementChild.nextElementSibling.nextElementSibling.value;
                
                console.log("amount : " + amount);

                console.log("c+s : " + color + size);

                $('#hiddenPrColor').attr('value', color);
                $('#hiddenPrSize').attr('value', size);
                $('#hiddenOrderAmount').attr('value', amount);

                sum += result;
                let len = $("[type=checkbox][name=cartChecked]").not(".allCheck").length; //3-2
                let ckLen = $("[type=checkbox][name=cartChecked]:checked").not(".allCheck").length; //3-2
                console.log(len);
                if(len == ckLen) {
                    $("input[id=check_all]").prop("checked", true); //전체 선택 설정 //3-3
                }   
            } else {
                sum -= result;
                count--; //체크 해제되고 count가 0이 된다면
                $("input[id=check_all]").prop("checked", false); //전체 선택 해제
            }

            delivery();
            totalPrice = sum + dv;
            $(".pr_Price").text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));  
            $(".orderPrice").text(totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));  

            $('input[name=orderTotalPrice]').attr('value',totalPrice);
            if(dv == 0) {
                $('input[name=deliPrice]').attr('value', 0);
            } else {
                $('input[name=deliPrice]').attr('value', 3000);
            }

        }

        /* 참고 블로그 https://myhappyman.tistory.com/180
          3-2. 페이지에 노출된 체크 박스의 개수와 체크된 개수가 같은지 확인을 하기 위해 값을 가져옵니다.
         여기서 .not()메소드를 사용하여 전체 체크박스는 제외하였습니다.
        3-3. 가져온 개수가 서로 같다면 전체가 이미 선택된 것이므로 전체체크박스에도 선택처리를 합니다.
        */
            
        /* 체크박스 전체선택, 해제 */
        let fSum = 0;
        function checkAll() {
            if($("#check_all").is(":checked")) {
                $("input[name=cartChecked]").prop("checked", true);
                let arr = new Array();
                let chks = document.getElementsByName("cartChecked");
                let cart = document.getElementsByName("cartAmount");
                sum = 0; //다시 0으로 초기화
                for(let i = 0; i< chks.length; i++) {
                    str = chks[i].parentElement.nextElementSibling.nextElementSibling.
                    nextElementSibling.firstElementChild.textContent;
                    n = parseInt(str.replace(/,/g,""));
                    arr[i] = n;
                    fSum = arr[i] * cart[i].value;
                    sum += fSum;
                    console.log("sum:" +sum);
                }

                /* 배송비 결정 */
                delivery();  

            } else {
                $("input[name=cartChecked]").prop("checked", false);
                sum = 0;
                dv = 0;
                    $(".delivery").text("+"+dv.toString());
            }
            $(".pr_Price").text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));  
            $(".orderPrice").text(sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));  
        }

            


        //선택삭제
        function checkDelete() {
            let url = "/cart/checkDelete";
            let valueArr = new Array();
            let list = $("input[name='cartChecked']");

            for(let i = 0; i < list.length; i++) {
                if(list[i].checked) {
                    //선택되어 있으면 배열에 값들을 저장함
                    console.log(list[i].value);
                    valueArr.push(list[i].value);
                }
            }
            
            if(valueArr.length === 0) {
                alert("선택된 상품이 없습니다.");
            } else {
                let chk = confirm("정말 삭제하시겠습니까?");
                $.ajax({
                    url : url, //전송 URL
                    type: 'POST',
                    traditional: true,
                    data: {
                        valueArr : valueArr //보내고자하는 data 변수 설정
                    },
                    success: function(jdata) {
                        if(jdata = 1) {
                            alert("삭제했습니다.");
                            location.replace("/cart/list"); //페이지 새로고침
                        } else {
                            alert("삭제 실패!");
                        }
                    }
                });
            }
        }



        //주문
        function check_Order() {
           


        }

   
    </script>

</body>

</html>