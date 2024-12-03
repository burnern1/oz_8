SELECT * 
FROM customers;

SELECT * 
FROM products;

SELECT firstName, lastName, jobTitle 
FROM employees;

SELECT officeCode, city, country 
FROM offices;

SELECT * 
FROM orders 
ORDER BY orderDate DESC 
LIMIT 10;

SELECT * 
FROM orderdetails 
WHERE orderNumber = 10100; -- 특정 주문 번호로 조회

SELECT * 
FROM payments 
WHERE customerNumber = 103; -- 특정 고객 번호로 조회

SELECT productLine, textDescription 
FROM productlines;

SELECT * 
FROM customers 
WHERE country = 'USA'; -- 특정 지역(국가)로 조회

SELECT * 
FROM products 
WHERE buyPrice BETWEEN 20.00 AND 50.00; -- 특정 가격 범위로 조회


