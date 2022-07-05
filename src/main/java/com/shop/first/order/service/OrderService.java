package com.shop.first.order.service;

import com.shop.first.cart.repository.CartMapper;
import com.shop.first.customer.repository.CustomerMapper;
import com.shop.first.order.domain.Order;
import com.shop.first.order.repository.OrderMapper;
import com.shop.first.product.repository.ProductMapper;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final CustomerMapper customerMapper;

    private final CartMapper cartMapper;

    private final ProductMapper productMapper;

    private final OrderMapper orderMapper;


    //주문 내역 조회 중간처리
    public List<Order> list(String csId) {
        return orderMapper.getArticles(csId);
    }


    /*
    @Transactional
    public Long order(Long memberId, Long itemId, int count){

        //엔티티 조회
        Member member = memberRepository.findOne(memberId);
        Item item = itemRepository.findOne(itemId);

        //배송정보 생성
        Delivery delivery = new Delivery();
        delivery.setAddress(member.getAddress());

        //주문 상품 생성
        OrderItem orderItem = OrderItem.createOrderItem(item, item.getPrice(), count);

        //주문 생성
        Order order = Order.createOrder(member, delivery, orderItem);

        //주문 저장
        orderRepository.save(order);

        return order.getId();

    } */



}//
