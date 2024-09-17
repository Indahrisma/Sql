-- 1. Top 3 customers based on oreders
SELECT
c.`first_name`,
c.`last_name`,
SUM(o.`total_amount`) total_order_amount
FROM Customers AS c
JOIN Orders o ON o.`customer_id` = c.`customer_id`
GROUP BY c.`customer_id`
ORDER BY total_order_amount DESC
LIMIT 3
;


-- 2. average order value for each customer
SELECT
c.`first_name`,
c.`last_name`,
AVG(o.`total_amount`)average_order
FROM customers c
JOIN orders o ON c.`customer_id` = o.`customer_id`
GROUP BY c.`customer_id`
;

-- 3. List all amployee who have resolved more than 4 support tickets
SELECT 
e.first_name,
e.last_name,
COUNT(s.tiket_id)
FROM Employees e
JOIN SupportTickets s ON e.employee_id = s.employee_id
WHERE s.status ='resolved'
GROUP BY e.employee_id
HAVING COUNT(s.tiket_id)>4
;

-- 4. Find all products that have never been ordered
SELECT
products.`product_name`
FROM products
LEFT JOIN OrderDetails od ON od.`product_id` = Products.`product_id`
WHERE od.`order_id` IS NULL
;

-- 5. Calculate the total revenue generated from product sales
SELECT
SUM(quantity*unit_price)
FROM OrderDetails
;

-- 6. Find the average price of products for each category and list category with an average price higher that $500
WITH cte_avg_price AS (
SELECT category, AVG(price) rerata
FROM Products
GROUP BY category
)
SELECT*FROM cte_avg_price WHERE rerata>500
;

-- 7. Find customers who have placed at least one order with a total amount greater than $1000
SELECT *
FROM Customers
WHERE
customer_id IN
(
SELECT customer_id
FROM Orders
WHERE total_amount>1000
)
;




