package com.shop.first.order.repository;

import com.shop.first.order.domain.Order;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface OrderMapper {

    //주문 내역 조회
    List<Order> getArticles();

    //주문 상세 조회
    Order getContent(int optionCode);

    //주문하기
    boolean insert(Order order);

    //주문 취소
    boolean cancel(int optionCode);

}//
