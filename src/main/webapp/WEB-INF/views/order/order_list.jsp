<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>주문 내역</title>

  </head>

<body>

  
    <h1>${loginCustomer.csName}님의 주문내역</h1>
   
 
    <p>
        <label>
            # 주문코드  : <input type="text" value="${ord.orderCode}">
        </label>
    </p>
        
    <p>
        <label>
            # 주문자명  : <input type="text" value="${loginCustomer.csName}">
        </label>
    </p>

    <p>
        <label>
            # 연락처  : <input type="text" value="${ord.csPhone}">
        </label>
    </p>


    <p>
        <label>
            # 우편번호  : <input type="text" value="${ord.postCode}">
        </label>
    </p>

    <p>
        <label>
            # 도로명주소  : <input type="text" value="${ord.roadAddr}">
        </label>
    </p>
        
    
    <p>
        <label>
            # 지번주소  : <input type="text" value="${ord.lotNumAddr}">
        </label>
    </p>

    <p>
        <label>
            # 상세주소  : <input type="text" value="${ord.extraAddr}">
        </label>
    </p>

    <p>
        <label>
            # 구매수량  : <input type="text" value="${ord.orderAmount}">
        </label>
    </p>

    <p>
        <label>
            # 주문날짜  : <input type="text" value="${ord.orderDate}">
        </label>
    </p>

    <p>
        <label>
            # 배송비  : <input type="text" value="${ord.deliPrice}">
        </label>
    </p>

    
    <p>
        <label>
            # 주문총금액  : <input type="text" value="${ord.orderTotalPrice}">
        </label>
    </p>
        


    


</body>
</html>
