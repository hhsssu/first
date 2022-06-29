package com.shop.first.productoption.service;

import com.shop.first.productoption.domain.ProductOption;
import com.shop.first.productoption.repository.ProductOptionMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Log4j2
@RequiredArgsConstructor
public class ProductOptionService {

    private final ProductOptionMapper productOptionMapper;

    //옵션 목록 중간 처리
    public List<ProductOption> getList() {
        return productOptionMapper.getArticles();
    }

    //상품 옵션 조회 중간처리
    public List<ProductOption> getOption(int prCode) {
        log.info("옵션 조회 중간처리 - Service");
        return  productOptionMapper.getOption(prCode);
    }


}//
