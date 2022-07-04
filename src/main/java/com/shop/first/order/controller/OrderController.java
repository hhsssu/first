package com.shop.first.order.controller;

import com.shop.first.cart.domain.Cart;
import com.shop.first.cart.repository.CartMapper;
import com.shop.first.customer.domain.Customer;
import com.shop.first.customer.repository.CustomerMapper;
import com.shop.first.order.domain.Order;
import com.shop.first.order.repository.OrderMapper;
import com.shop.first.product.repository.ProductMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/order")
@Log4j2
@RequiredArgsConstructor
public class OrderController {

    private final CustomerMapper customerMapper;

    private final CartMapper cartMapper;

    private final ProductMapper productMapper;

    private final OrderMapper orderMapper;

    //주문하기
    @PostMapping
    public String insert(Cart cart, HttpSession session)  throws IOException {

        log.info("주문 생성");
        Customer loginCustomer = (Customer) session.getAttribute("loginCustomer");
        //cartMapper.order(cart);
        return "order/order_list";
    }
   // @GetMapping
    /*
    //참고 블로그
    https://cloudstudying.kr/lectures/321

    public String index(Model model) {
        // 현재 사용자
        int currUserId = cartMapper.selectUserByEmail(principal.getName()).getId();
        // 주문 목록
        List<CartVO> orders = userMapper.getOrders(currUserId);
        // 주문별 아이템
        for (CartVO order : orders) {
            order.setItems(cartMapper.getItems(order));
            // 아이템-책
            int sum = 0;
            for (ItemVO i : order.getItems()) {
                i.setBook(bookMapper.getBook(i.getBook_id()));
                sum += i.getPrice() * i.getAmount();
            }
            order.setTotalPrice(sum);
        }
        model.addAttribute("orders", orders);
        return "orders/index";
    } */

    // 주문 내역
    @GetMapping("/list")
    public String list(HttpSession session, Model model) {
        log.info("주문 내역 Controller!(화면)");

        Customer loginCustomer = (Customer) session.getAttribute("loginCustomer");
        //주문내역 정보
        List<Order> orderListList = orderMapper.getArticles();

        return null;
    }

}//
