


-----------------------1. 고객(테이블명: customer) -----------------------

--DROP TABLE customer;

SELECT * FROM customer;

SELECT * FROM customer WHERE customer_id = '950107';

CREATE TABLE customer (
    customer_id VARCHAR2(50) CONSTRAINT customer_id_pk PRIMARY KEY,
    customer_pw VARCHAR2(500) NOT NULL,
    customer_name VARCHAR2(10) NOT NULL,
    customer_gender VARCHAR2(10) NOT NULL,
    customer_phone VARCHAR2(20) NOT NULL,
    customer_post_code NUMBER(5) NOT NULL, --우편번호
    customer_road_addr VARCHAR2(100) NOT NULL, --도로명주소
    customer_lot_num_addr VARCHAR2(100) NOT NULL, --지번주소
    customer_extra_addr VARCHAR2(100), --상세주소
    customer_birth DATE
);


-----------------------1-1 고객 DUMMY DATA INPUT  -----------------------
INSERT INTO customer VALUES
('water@naver.com','1111','유명한','남자','010-8899-1010','32311',
'대전광역시 서구 둔산로 100','대전광역시 서구 둔산동 1420','대전광역시청','1980-11-11');

INSERT INTO customer VALUES
('tablo@gmail.com','2222','이선웅','남자','010-2525-2002','05540',
'서울특별시 송파구 올림픽로 424','서울특별시 송파구 방이동 88','올림픽공원','1990-07-22');

INSERT INTO customer VALUES
('crystal@hanmail.net','3333','정수정','여자','010-5557-3309','03062',
'서울 종로구 삼청로 30','서울 종로구 소격동 165-10','국립현대미술관','1994-10-24');

INSERT INTO customer VALUES
('yeseul@naver.com','4444','한예슬','여자','010-0900-4457','05051',
'서울 송파구 잠실동','서울 송파구 잠실동','석촌호수','1981-09-18');




-----------------------2. 관리자(테이블명: admin) -----------------------
--DROP TABLE admin;

SELECT * FROM admin;

CREATE TABLE admin (
    admin_id VARCHAR2(50) CONSTRAINT admin_id_pk PRIMARY KEY,
    admin_pw VARCHAR2(500) NOT NULL,
    admin_name VARCHAR2(10) NOT NULL
);

-----------------------2-1 관리자 DUMMY DATA INPUT  -----------------------

INSERT INTO admin VALUES
('mithra@naver.com','1111','최진');

INSERT INTO admin VALUES
('justhis@gmail.com','2222','허승');

INSERT INTO admin VALUES
('giriboy@naver.com','3333','홍시영');


-----------------------3. 카테고리(테이블명: category) -----------------------

--DROP TABLE category;
--DROP SEQUENCE seq_cate_code;

CREATE SEQUENCE seq_cate_code;

SELECT * FROM category;

CREATE TABLE category (
    cate_code NUMBER(10) CONSTRAINT cate_code_pk PRIMARY KEY,
    cate_name VARCHAR2(20) NOT NULL,
    cate_code_ref VARCHAR2(20) --상위 카테고리
);


-----------------------3-1 카테고리 DUMMY DATA INPUT  -----------------------

INSERT INTO 
    category(cate_code,cate_name)
    VALUES(seq_cate_code.nextval,'tableware');
    
INSERT INTO category VALUES(seq_cate_code.nextval,'프라이팬', 'tableware');
INSERT INTO category VALUES(seq_cate_code.nextval,'컵', 'tableware');
INSERT INTO category VALUES(seq_cate_code.nextval,'접시', 'tableware');

-----------------------4. 상품(테이블명: product) -----------------------

--DROP TABLE product;
--DROP SEQUENCE seq_product_code;

SELECT * FROM product;

CREATE SEQUENCE seq_product_code;

CREATE TABLE product (
    product_code NUMBER(10) CONSTRAINT product_code_pk PRIMARY KEY,
    cate_code NUMBER(2),
    product_name VARCHAR2(30) NOT NULL,
    product_price NUMBER(10) NOT NULL, 
    product_yn NUMBER(1) NOT NULL, --판매여부 (0,1)
    product_amount NUMBER(10), --판매수량
    product_thumb VARCHAR2(500), --상품썸네일
    product_img1 VARCHAR2(500),
    product_img2 VARCHAR2(500),
    product_img3 VARCHAR2(500),
    product_img4 VARCHAR2(500),
    product_img5 VARCHAR2(500),
    product_size VARCHAR2(200),
    product_color VARCHAR2(200),
    product_date DATE DEFAULT SYSDATE,
    CONSTRAINT fk_cate_code FOREIGN KEY (cate_code)
    REFERENCES category(cate_code)
);


alter session set nls_date_format='YYYY-MM-DD HH24:MI:SS';

COMMIT;

-----------------------4-1 상품 DUMMY DATA INPUT  -----------------------

INSERT INTO product (product_code, product_name, product_price, product_yn, product_amount, cate_code)
VALUES(seq_product_code.netxtval,'심플 주방용품 예쁜 접시',13000, 1, 100,4);

INSERT INTO product (product_code, product_name, product_price, product_yn, product_amount, cate_code)
VALUES(seq_product_code.netxtval,'심플 라인 유리컵',8000, 1, 30, 3);


-----------------------5. 공지사항(테이블명: notice) -----------------------
--DROP TABLE notice;
--DROP SEQUENCE seq_notice;

SELECT * FROM notice;

CREATE SEQUENCE seq_notice;


CREATE TABLE notice (
    notice_code NUMBER(10) CONSTRAINT notice_code_pk PRIMARY KEY,
    notice_title VARCHAR2(50) NOT NULL,
    notice_cont VARCHAR2(500) NOT NULL,
    notice_date DATE DEFAULT SYSDATE,
    admin_id VARCHAR2(30)
);

-- FK 설정
ALTER TABLE notice ADD CONSTRAINT FK_1_notice_admin_id
FOREIGN KEY (admin_id) REFERENCES admin(admin_id);


-----------------------5-1 공지사항 DUMMY DATA INPUT  -----------------------


INSERT  INTO notice (notice_code, notice_title, notice_cont, admin_id)
    VALUES
    (seq_notice.nextval,'휴대폰 결제안내',
    '휴대폰 결제의 경우, 이동통신사의 정책에 따라 결제 당월이 지나면 결제취소가 불가능합니다','mithra@naver.com');
    
INSERT  INTO notice (notice_code, notice_title, notice_cont, admin_id)
    VALUES
    (seq_notice.nextval,'교환반품 안내',
    '상품을 의도적으로 훼손한경우, 처리가 불가능하며, 상품가격과 배송비를 보상해주셔야하고_ 영업방해로 처리됩니다.','justhis@gmail.com');
    
INSERT  INTO notice (notice_code, notice_title, notice_cont, admin_id)
    VALUES
    (seq_notice.nextval,'단체주문 각인 및 커스텀 안내',
    '단체 주문시에 원하시는 글씨 혹은 로고 등 인쇄 진행 가능합니다.','giriboy@naver.com');    

-----------------------6. 장바구니(테이블명: cart) -----------------------

--DROP TABLE cart;

COMMIT;

CREATE SEQUENCE seq_cart;

SELECT * FROM cart;

SELECT *
        FROM cart
        WHERE
            customer_id = '950107';
        
            
 SELECT COUNT(c.product_code)AS CART_COUNT
        FROM
            customer m , cart c , product p
        WHERE
            p.product_code = c.product_code
        AND
            m.customer_id = c.customer_id
        AND
            m.customer_id = 'api@naver.com'
        AND
            p.product_code = 61;    
            
            


CREATE TABLE cart (
    cart_code NUMBER(10) CONSTRAINT cart_code_pk PRIMARY KEY,
    product_code NUMBER(10) NOT NULL,
    cart_amount NUMBER(10), --장바구니 수량
    cart_checked NUMBER(1), 
    cart_total_price NUMBER(10),
    customer_id VARCHAR(30),
    product_size VARCHAR2(200),
    product_color VARCHAR2(200)
);


-- FK 설정
ALTER TABLE cart ADD CONSTRAINT FK_1_cart_customer_id
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

    
--ALTER TABLE [테이블명] MODIFY ([컬럼명] NOT NULL);
--ALTER TABLE cart MODIFY (product_code NOT NULL);

-- FK 설정
ALTER TABLE cart ADD CONSTRAINT FK_2_cart_product_code
FOREIGN KEY (product_code) REFERENCES product(product_code);


-----------------------6-1 장바구니 DUMMY DATA INPUT  -----------------------

INSERT INTO cart (cart_code, customer_id, product_code, cart_amount)
            VALUES (seq_cart.NEXTVAL, 'hashswan@naver.com', 27, 1);

-----------------------7. 주문(테이블명: product_order) -----------------------

--DROP TABLE product_order;

COMMIT;

DELETE FROM product_order where order_code = 5;

CREATE SEQUENCE seq_product_order;

SELECT * FROM product_order;

CREATE TABLE product_order (
    order_code NUMBER(10) CONSTRAINT order_code_pk PRIMARY KEY,
    customer_id VARCHAR(30),
    customer_name VARCHAR2(10) NOT NULL, --수취인 이름
    customer_phone VARCHAR2(20) NOT NULL, 
    customer_post_code NUMBER(5) NOT NULL, --수취인 우편번호
    customer_road_addr VARCHAR2(100) NOT NULL, --수취인 도로명주소
    customer_lot_num_addr VARCHAR2(100) NOT NULL, --수취인 지번주소
    customer_extra_addr VARCHAR2(100) NOT NULL, --수취인 상세주소
    cart_code NUMBER(15),
    order_amount  NUMBER(10),
    product_name VARCHAR2(200),
    product_color VARCHAR2(200),
    product_size VARCHAR2(200),
    order_date DATE DEFAULT SYSDATE,--주문날짜
    order_total_price NUMBER(20)NOT NULL, --주문총금액
    order_deli_price NUMBER(10)--배송비
);

 -- order_status NUMBER(1) NOT NULL, --주문 상태
--order_deli_code NUMBER(10) --송장번호
--order_request VARCHAR2(100), --배송요청사항


-- FK 설정
ALTER TABLE product_order ADD CONSTRAINT FK_1_productOrder_customer_id
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- FK 설정
ALTER TABLE product_order ADD CONSTRAINT FK_2_productOrder_cart_code
FOREIGN KEY (cart_code) REFERENCES cart(cart_code);


-----------------------7-1 주문 DUMMY DATA INPUT  -----------------------


-----------------------8. 옵션(테이블명: product_option) -----------------------
--DROP TABLE product_option;

CREATE SEQUENCE seq_option;

SELECT * FROM product_option;


CREATE TABLE product_option (
    option_code NUMBER(10) CONSTRAINT option_code_pk PRIMARY KEY,
    product_code NUMBER(10),
    cate_code NUMBER(15),
    product_color VARCHAR2(200),
    product_size VARCHAR2(200)
);

COMMIT;

-- FK 설정
ALTER TABLE product_option ADD CONSTRAINT FK_1_product_option_pr_code
FOREIGN KEY (product_code) REFERENCES product(product_code);

-- FK 설정
ALTER TABLE product_option ADD CONSTRAINT FK_2_product_option_cate_code
FOREIGN KEY (cate_code) REFERENCES category(cate_code);

-----------------------8-1. 옵션 DUMMY DATA INPUT -----------------------

INSERT INTO product_option (option_code, product_code, cate_code, product_size)
            VALUES (seq_option.NEXTVAL, 1, 2, 'oneSize');




-----------------------9. 리뷰(테이블명: review) -----------------------
--DROP TABLE review;

CREATE SEQUENCE seq_review_reply;

SELECT * FROM review;

CREATE TABLE review (
    review_code NUMBER(10) CONSTRAINT review_code_pk PRIMARY KEY,
    review_title VARCHAR2(20) NOT NULL,
    review_cont VARCHAR2(200) NOT NULL,
    review_img VARCHAR2(500),
    review_date DATE NOT NULL
);

--ALTER TABLE review MODIFY review_code NUMBER(10);

-- 컬럼 추가
ALTER TABLE review ADD product_code NUMBER(10);

-- FK 설정
ALTER TABLE review ADD CONSTRAINT FK_1_review_product_code
FOREIGN KEY (product_code) REFERENCES product(product_code);

-- 컬럼 추가
ALTER TABLE review ADD cate_code VARCHAR2(10);

-- FK 설정
ALTER TABLE review ADD CONSTRAINT FK_2_review_cate_code
FOREIGN KEY (cate_code) REFERENCES category(cate_code);


-----------------------9-1 리뷰 DUMMY DATA INPUT  -----------------------





-----------------------10. 리뷰 댓글(테이블명: review_reply) -----------------------
--DROP TABLE review_reply;

CREATE SEQUENCE seq_review_reply;

SELECT * FROM review_reply;

CREATE TABLE review_reply (
    review_reply_code NUMBER(10) CONSTRAINT review_reply_code_pk PRIMARY KEY,
    review_reply_title VARCHAR2(20) NOT NULL,
    review_reply_cont VARCHAR2(200) NOT NULL,
    review_reply_img VARCHAR2(500),
    review_reply_date DATE NOT NULL
);

-- 컬럼 추가
ALTER TABLE review_reply ADD review_code NUMBER(10);

-- FK 설정
ALTER TABLE review_reply ADD CONSTRAINT FK_1_reviewReply_review_code
FOREIGN KEY (review_code) REFERENCES review(review_code);

-----------------------10-1 리뷰 댓글 DUMMY DATA INPUT  -----------------------


-----------------------11. 고객문의(테이블명: question) -----------------------
--DROP TABLE question;

CREATE SEQUENCE seq_question;

SELECT * FROM question;

CREATE TABLE question (
    question_code NUMBER(10) CONSTRAINT question_code_pk PRIMARY KEY,
    question_title VARCHAR2(20) NOT NULL,
    question_cont VARCHAR2(200) NOT NULL,
    question_img VARCHAR2(500),
    question_date DATE NOT NULL
);

-- 컬럼 추가
ALTER TABLE question ADD customer_id VARCHAR2(30);

-- FK 설정
ALTER TABLE question ADD CONSTRAINT FK_1_question_customer_id
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

-- 컬럼 추가
ALTER TABLE question ADD admin_id VARCHAR2(30);

-- FK 설정
ALTER TABLE question ADD CONSTRAINT FK_2_question_customer_id
FOREIGN KEY (admin_id) REFERENCES admin(admin_id);


-----------------------11-1 고객문의 DUMMY DATA INPUT  -----------------------


-----------------------12. 답변(테이블명: answer) -----------------------
--DROP TABLE answer;

CREATE SEQUENCE seq_answer;

SELECT * FROM answer;

CREATE TABLE answer (
    answer_code NUMBER(10) CONSTRAINT answer_code_pk PRIMARY KEY,
    answer_title VARCHAR2(20) NOT NULL,
    answer_cont VARCHAR2(200) NOT NULL,
    answer_img VARCHAR2(500),
    answer_date DATE NOT NULL
);

-- 컬럼 추가
ALTER TABLE answer ADD question_code NUMBER(10);

-- FK 설정
ALTER TABLE answer ADD CONSTRAINT FK_1_answer_question_code
FOREIGN KEY (question_code) REFERENCES question(question_code);

-----------------------12-1 답변 DUMMY DATA INPUT  -----------------------


-----------------------13. 결제(테이블명: pay) -----------------------
--DROP TABLE pay;

CREATE SEQUENCE seq_pay;

SELECT * FROM pay;

CREATE TABLE pay (
    pay_code NUMBER(2) CONSTRAINT pay_code_pk PRIMARY KEY,
    pay_price NUMBER(10) NOT NULL, --결제 금액
    payment NUMBER(1) NOT NULL,
    paid NUMBER(1) NOT NULL, --결제여부
    refund NUMBER(1) --환불여부
);

-- 컬럼 추가
ALTER TABLE pay ADD order_code NUMBER(10);

-- FK 설정
ALTER TABLE pay ADD CONSTRAINT FK_1_pay_order_code
FOREIGN KEY (order_code) REFERENCES product_order(order_code);

-----------------------13-1 결제 DUMMY DATA INPUT  -----------------------
