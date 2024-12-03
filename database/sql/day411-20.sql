INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES
(103, 'Customer A', 'Smith', 'John', '123-456-7890', '123 Elm St', 'Los Angeles', 'USA'),
(104, 'Customer B', 'Doe', 'Jane', '987-654-3210', '456 Oak St', 'New York', 'USA'),
(105, 'Customer C', 'Brown', 'Emily', '555-123-4567', '789 Pine St', 'Chicago', 'USA');

INSERT INTO products (productCode, productName, productLine, productScale, productVendor, quantityInStock, buyPrice)
VALUES
('S10_1678', 'Product A', 'Classic Cars', '1:10', 'Vendor A', 100, 29.99),
('S10_1949', 'Product B', 'Motorcycles', '1:12', 'Vendor B', 150, 49.99),
('S10_2016', 'Product C', 'Planes', '1:18', 'Vendor C', 200, 79.99);

INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES
(1, 'Johnson', 'Anna', 'x1234', 'anna.johnson@company.com', 1, NULL, 'CEO'),
(2, 'Lee', 'Michael', 'x2345', 'michael.lee@company.com', 2, 1, 'Manager'),
(3, 'Williams', 'Sarah', 'x3456', 'sarah.williams@company.com', 3, 2, 'Assistant Manager');

-- Add order to `orders`
INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
VALUES
(10100, '2024-12-01', '2024-12-10', 'Shipped', 103);

-- Add corresponding details to `orderdetails`
INSERT INTO orderdetails (orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber)
VALUES
(10100, 'S10_1678', 2, 29.99, 1),
(10100, 'S10_2016', 1, 79.99, 2);

INSERT INTO payments (customerNumber, checkNumber, paymentDate, amount)
VALUES
(103, 'CHK001', '2024-12-02', 59.98),
(104, 'CHK002', '2024-12-03', 150.00),
(105, 'CHK003', '2024-12-04', 200.00);

-- Add customer
INSERT INTO customers (customerNumber, customerName, contactLastName, contactFirstName, phone, addressLine1, city, country)
VALUES
(106, 'Customer D', 'Davis', 'Laura', '555-987-6543', '101 Maple St', 'San Francisco', 'USA');

-- Add order for the new customer
INSERT INTO orders (orderNumber, orderDate, requiredDate, status, customerNumber)
VALUES
(10101, '2024-12-05', '2024-12-15', 'In Process', 106);

-- Add employee
INSERT INTO employees (employeeNumber, lastName, firstName, extension, email, officeCode, reportsTo, jobTitle)
VALUES
(4, 'Martin', 'James', 'x4567', 'james.martin@company.com', 4, 1, 'Sales Representative');

-- Update job title immediately
UPDATE employees
SET jobTitle = 'Senior Sales Representative'
WHERE employeeNumber = 4;

-- Add product
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, quantityInStock, buyPrice)
VALUES
('S10_4693', 'Product D', 'Ships', '1:20', 'Vendor D', 50, 99.99);

-- Update stock
UPDATE products
SET quantityInStock = 75
WHERE productCode = 'S10_4693';

-- Add new office
INSERT INTO offices (officeCode, city, phone, addressLine1, country)
VALUES
(5, 'Miami', '305-123-4567', '500 Ocean Dr', 'USA');

-- 새로운 제품 코드로 삽입
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, quantityInStock, buyPrice)
VALUES ('S10_9999', 'Product D', 'Ships', '1:20', 'Vendor D', 50, 99.99);


-- Add product
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, quantityInStock, buyPrice)
VALUES
('S10_4693', 'Product D', 'Ships', '1:20', 'Vendor D', 50, 99.99);

-- Update stock
UPDATE products
SET quantityInStock = 75
WHERE productCode = 'S10_4693';


-- Add products to the new product line
INSERT INTO products (productCode, productName, productLine, productScale, productVendor, quantityInStock, buyPrice)
VALUES
('S10_6789', 'Product E', 'Trains', '1:50', 'Vendor E', 60, 45.00),
('S10_6790', 'Product F', 'Trains', '1:75', 'Vendor F', 40, 30.00);






