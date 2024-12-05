-- 10명의 사용자 생성
INSERT INTO users (first_name, last_name, email, password, address, contact, gender) 
VALUES ('First1', 'Last1', 'user1@example.com', 'password1', 'Address1', '010-0000-0001', 'MALE'),
       ('First2', 'Last2', 'user2@example.com', 'password2', 'Address2', '010-0000-0002', 'MALE'),
       ('First3', 'Last3', 'user3@example.com', 'password3', 'Address3', '010-0000-0003', 'MALE'),
       ('First4', 'Last4', 'user4@example.com', 'password4', 'Address4', '010-0000-0004', 'MALE'),
       ('First5', 'Last5', 'user5@example.com', 'password5', 'Address5', '010-0000-0005', 'MALE'),
       ('First6', 'Last6', 'user6@example.com', 'password6', 'Address6', '010-0000-0006', 'MALE'),
       ('First7', 'Last7', 'user7@example.com', 'password7', 'Address7', '010-0000-0007', 'MALE'),
       ('First8', 'Last8', 'user8@example.com', 'password8', 'Address8', '010-0000-0008', 'MALE'),
       ('First9', 'Last9', 'user9@example.com', 'password9', 'Address9', '010-0000-0009', 'MALE'),
       ('First10', 'Last10', 'user10@example.com', 'password10', 'Address10', '010-0000-0010','MALE');
       
-- 재고 변동 이력 10개 생성
INSERT INTO stocks (raw_material_id, pre_quantity, quantity, change_type, store_id)
VALUES (1, 10, 15, 'IN', 1),
       (2, 20, 25, 'IN', 2),
       (3, 30, 35, 'IN', 3),
       (4, 40, 45, 'IN', 4),
       (5, 50, 55, 'IN', 5),
       (6, 60, 65, 'IN', 6),
       (7, 70, 75, 'IN', 7),
       (8, 80, 85, 'IN', 8),
       (9, 90, 95, 'IN', 9),
       (10, 100, 105, 'IN', 10);
       
-- sales_items 테이블에 데이터 추가
INSERT INTO sales_items (sales_record_id, product_id, quantity)
VALUES (1, 1, 2),
       (2, 2, 4),
       (3, 3, 6),
       (4, 4, 8),
       (5, 5, 10),
       (6, 6, 12),
       (7, 7, 14),
       (8, 8, 16),
       (9, 9, 18),
       (10,10 ,20);
       
-- products 테이블에 시그니처 메뉴 추가
INSERT INTO products (name, description, price)
VALUES ('Signature Gourmet Dish','A unique blend of flavors crafted specially for our restaurant.',29.99);

-- user1과 user2를 매장 id에 소속된 직원과 매니저로 변경
INSERT INTO employees (code,type,user_id ,store_id,is_active)
VALUES(1001,'STAFF' ,1 ,5 ,TRUE);

INSERT INTO employees (code,type,user_id ,store_id,is_active)
VALUES(1002,'MANAGER' ,2 ,7 ,TRUE);