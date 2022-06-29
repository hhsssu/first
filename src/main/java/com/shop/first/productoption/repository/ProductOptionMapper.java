package com.shop.first.productoption.repository;

import com.shop.first.productoption.domain.ProductOption;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ProductOptionMapper {

    //전체 옵션 조회
    List<ProductOption> getArticles();

    //상품 옵션 조회
    List<ProductOption> getOption(int prCode);

}//
