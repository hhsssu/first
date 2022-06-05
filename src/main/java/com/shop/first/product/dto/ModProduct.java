package com.shop.first.product.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
public class ModProduct {

    private int prCode;
    private int cateCode; //FK
    private String prName;
    private int prPrice;
    private int prYn;
    private int prAmount;
    private String prThumb;
    private String prImg1;
    private String prImg2;
    private String prImg3;
    private String prImg4;
    private String prImg5;
    private String prDate;
}
