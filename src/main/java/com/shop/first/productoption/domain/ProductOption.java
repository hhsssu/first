package com.shop.first.productoption.domain;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import java.sql.ResultSet;
import java.sql.SQLException;

@Getter @Setter @ToString
@RequiredArgsConstructor
public class ProductOption {

    private int optionCode;
    private String prColor; //옵션 색상
    private String prSize;  //옵션 크기

    public ProductOption(int optionCode, String prColor, String prSize) {
        this.optionCode = optionCode;
        this.prColor = prColor;
        this.prSize = prSize;
    }

    public ProductOption(ResultSet rs) throws SQLException {
        this.optionCode = rs.getInt("option_code");
        this.prColor = rs.getString("product_color");
        this.prSize = rs.getString("product_size");
    }
}//
