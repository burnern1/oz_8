UPDATE customers
SET address = '123 New Address'
WHERE customer_id = 1;

UPDATE products
SET price = 29.99
WHERE product_id = 101;

UPDATE employees
SET job_title = 'Senior Developer'
WHERE employee_id = 5;

UPDATE offices
SET phone = '555-1234'
WHERE office_id = 3;

UPDATE orders
SET status = 'Shipped'
WHERE order_id = 1001;

UPDATE orderdetails
SET quantity = 50
WHERE order_detail_id = 2002;

UPDATE payments
SET amount = 1500.75
WHERE payment_id = 305;

UPDATE productlines
SET description = 'Updated line description'
WHERE product_line_id = 7;

UPDATE customers
SET email = 'newemail@example.com'
WHERE customer_id = 2;

UPDATE products
SET price = CASE 
    WHEN product_id = 120 THEN 19.99
    WHEN product_id = 121 THEN 24.99
    WHEN product_id = 122 THEN 39.99
    ELSE price
END
WHERE product_id IN (120, 121, 122);
