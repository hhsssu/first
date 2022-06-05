package com.shop.first.product.controller;

import com.shop.first.product.domain.Product;
import com.shop.first.product.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@Log4j2
@RequestMapping("/product")
@RequiredArgsConstructor
public class ProductController extends HttpServlet {

    private final ProductService productService;

    //상품 상세 조회(화면)
    @GetMapping("/info")
    public String content(int prCode, Model model, HttpSession session) throws Exception{

        log.info("상세조회요청 - (화면)" + prCode + session.getAttribute("loginCustomer") );

        Product product = productService.get(prCode);

        model.addAttribute("p",product);

        List<Product> productList = productService.getList();
        model.addAttribute("articles", productList);

        return "product/detail_page";
    }














}//
