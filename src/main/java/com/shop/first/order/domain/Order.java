package com.shop.first.order.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString
public class Order {

    private int orderCode;
    private String csName;
    private String csPhone;
    private String postCode;
    private String roadAddr; //도로명주소
    private String lotNumAddr; //지번주소
    private String extraAddr; //상세주소
    private int cartCode;
    private int orderAmount;
    private String prColor; //옵션 색상
    private String prSize;  //옵션 크기
    private int orderTotalPrice;
    private String orderDate;

    private static int seqOrder;

    public Order() {
        this.cartCode = ++seqOrder;
    }

    public Order(int orderCode, String csName, String csPhone, String postCode,
                 String roadAddr, String lotNumAddr,
                 String extraAddr, int cartCode, int orderAmount,
                 String prColor, String prSize, int orderTotalPrice,
                 String orderDate) {
        this.orderCode = orderCode;
        this.csName = csName;
        this.csPhone = csPhone;
        this.postCode = postCode;
        this.roadAddr = roadAddr;
        this.lotNumAddr = lotNumAddr;
        this.extraAddr = extraAddr;
        this.cartCode = cartCode;
        this.orderAmount = orderAmount;
        this.prColor = prColor;
        this.prSize = prSize;
        this.orderTotalPrice = orderTotalPrice;
        this.orderDate = orderDate;
    }

    public Order(ResultSet rs) throws SQLException {
        this.orderCode = rs.getInt("order_code");
        this.csName = rs.getString("customer_name");
        this.csPhone = rs.getString("customer_phone");
        this.postCode = rs.getString("customer_post_code");
        this.roadAddr = rs.getString("customer_road_addr");
        this.lotNumAddr = rs.getString("customer_lot_num_addr");
        this.extraAddr = rs.getString("customer_extra_addr");
        this.cartCode = rs.getInt("cart_code");
        this.prColor = rs.getString("product_color");
        this.prSize = rs.getString("product_size");
        this.orderTotalPrice = rs.getInt("order_total_price");
        this.orderDate = rs.getString("order_date");
    }
}//
