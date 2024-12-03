INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country, salesRepEmployeeNumber, creditLimit)
VALUES (101, 'John Doe Inc.', 'Doe', 'John', '123-456-7890', '123 Elm Street', 'New York', 'USA', 1, 50000.00);

INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES ('S10_001', 'Sports Car', 'Classic Cars', '1:18', 'AutoWorld', 'High-quality model car.', 100, 50.00, 95.00);

INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES (1, 'Smith', 'Jane', 'x1234', 'jane.smith@example.com', '1', NULL, 'CEO');

INSERT INTO offices (officeCode, city, phone, addressLine1, country, postalCode, territory)
VALUES ('1', 'New York', '123-456-7890', '456 Park Avenue', 'USA', '10022', 'NA');

INSERT INTO orders (orderNumber, orderDate, requiredDate, shippedDate, status, customerNumber)
VALUES (1001, '2024-12-01', '2024-12-05', '2024-12-03', 'Shipped', 101);

INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES (1001, 'S10_001', 2, 95.00, 1);

INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount)
VALUES (101, 'CHK1001', '2024-12-02', 190.00);

INSERT INTO productlines (productLine, textDescription)
VALUES ('Classic Cars', 'Replicas of classic car models.');

INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country, salesRepEmployeeNumber, creditLimit)
VALUES (102, 'Tokyo Supplies', 'Tanaka', 'Aiko', '81-3-1234-5678', '1-2-3 Chiyoda', 'Tokyo', 'Japan', 2, 75000.00);

INSERT INTO products (productCode, productName, productLine, productScale, productVendor, productDescription, quantityInStock, buyPrice, MSRP)
VALUES ('S20_002', 'Racing Bike', 'Motorcycles', '1:12', 'SpeedMoto', 'Detailed racing bike model.', 50, 120.00, 250.00);
