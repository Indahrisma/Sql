1. Retrieve the NAME AND salary of employees FROM the employees table.
USE company;
SELECT employee_name, salary
FROM employees2;

2. Retrieve ALL the records FROM the sales TABLE WHERE the total_amount IS greater THAN 1000.
SELECT * FROM orders2
WHERE total_amount > 1000;

3. Get the total salary paid per department FROM the employees table.
SELECT department, SUM(salary) AS total_salary
FROM employees2
GROUP BY department;

4. Retrieve the order_id, customer_name, AND order_date BY joining the orders AND customers tables. 
The orders TABLE has a customer_id that links TO the customers table.
SELECT o.order_id, c.customer_name, o.order_date
FROM orders2 o
JOIN customers2 c ON o.customer_id = c.customers_id;

5. Find ALL customers whose NAMES START WITH 'A' FROM the customers table.
SELECT customer_name
FROM customers2
WHERE customer_name LIKE 'A%';

6.Count how many UNIQUE products have been sold FROM the sales table.
SELECT COUNT(DISTINCT product_id)
FROM products2;

7. Retrieve ALL orders FROM the orders TABLE AND sort them BY order_date IN descending order.
SELECT *
FROM orders2
ORDER BY order_date DESC;

8. FETCH the top 5 highest-paid employees FROM the employees table.
SELECT employee_name, salary
FROM employees2
ORDER BY salary DESC
LIMIT 5;

9. SELECT ALL orders FROM the orders TABLE WHERE the order_date IS AFTER January 1, 2023.
SELECT * FROM orders2
WHERE order_date > '2023-01-01';

10. Calculate the total sales (total_amount) FROM the sales table.
SELECT SUM(total_amount) AS total_sales
FROM orders2;

11. COUNT how many employees are IN EACH department FROM the employees table.
SELECT department, COUNT(*) AS number_employee
FROM employees2
GROUP BY department;

12. Retrieve the product_name, order_date, AND quantity BY joining the products AND order_details tables. 
The order_details TABLE has a product_id that links TO the products table.
SELECT p.product_name, od.order_date, od.quantity
FROM products2 p
JOIN order_details od ON p.product_id = od.product_id;

13. Find ALL employees FROM the employees TABLE who WORK IN the HR department AND have a salary greater THAN 3000.
SELECT employee_name, department, salary
FROM employees2
WHERE department = 'HR' AND salary > 3000;

14. SELECT ALL customers FROM the customers TABLE who live IN either 'New York', 'Los Angeles', OR 'Chicago'.
SELECT * FROM customers2
WHERE city IN ('New York', 'Los Angeles','Chicago');

15. SELECT ALL products FROM the products TABLE AND ORDER them BY price IN ascending order.
SELECT *
FROM products2
ORDER BY price ASC;

16. COUNT how many DISTINCT customers made an ORDER FROM the orders table.
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM orders2;

17. Retrieve the NAMES of employees whose salary IS higher THAN the average salary IN the employees table.
SELECT employee_name, salary
FROM employees2
WHERE salary > (SELECT AVG(salary) FROM employees2);

18. Ambil kolom 
SELECT departments_id, department_name
FROM departments

19. Dapatkan semua karyawan yang bekerja di departemen Finance dan memiliki gaji lebih dari 5000 dari tabel employees.
SELECT salary
FROM employees2
WHERE department = 'Finace' AND salary > 5000

20. Hitung berapa banyak pesanan (orders) yang dilakukan oleh setiap pelanggan dari tabel orders.
SELECT customer_id, COUNT(*) AS order_count
FROM orders2
GROUP BY customer_id;

21. Ambil order_id, product_name, dan quantity dengan menggabungkan tabel orders dan products. 
Gunakan product_id untuk menghubungkan kedua tabel.
SELECT o.order_id, p.product_name, o.quantity
FROM orders o
JOIN products p ON o.product_id = p.product_id;

22. Cari semua pelanggan di tabel customers yang namanya dimulai dengan huruf 'S'.
SELECT customer_name
FROM customers
WHERE customer_name LIKE 'S%';

23. Hitung total gaji yang dibayarkan kepada semua karyawan dari tabel employees.
SELECT SUM(salary) AS total_salary
FROM employees;

24. Dapatkan semua DATA produk dari tabel products dan urutkan berdasarkan price secara menurun (descending).
SELECT *
FROM products
ORDER BY price DESC;

25. Dapatkan daftar kota unik dari pelanggan di tabel customers.
SELECT DISTINCT city
FROM customers2;

26. Dapatkan semua produk dari tabel products yang product_id-nya adalah 1, 3, atau 5.
SELECT *
FROM products
WHERE product_id IN (1, 3, 5);

27. Ambil nama dan gaji karyawan yang memiliki gaji lebih tinggi dari gaji rata-rata di tabel employees.
SELECT NAME, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

28. Dari tabel orders, customers, dan products, 
ambil customer_name, product_name, dan order_date untuk semua pesanan yang dilakukan pada tahun 2024.
SELECT c.customer_name, p.product_name, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_details od ON o.order_id = od.order_id
JOIN products p ON od.product_id = p.product_id
WHERE YEAR(o.order_date) = 2024;

