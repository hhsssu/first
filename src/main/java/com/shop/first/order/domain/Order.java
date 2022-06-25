package com.shop.first.order.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString
public class Order {

    private int orderCode;
    private String csPhone;
    private String postCode;
    private String roadAddr; //도로명주소
    private String lotNumAddr; //지번주소
    private String extraAddr; //상세주소
    

}//
