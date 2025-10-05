/*Task 1: Join query*/
SELECT orders.id, customers.first_name, customers.last_name, orders.order_date, orders.total_amount
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;

/*Task 2: GROUP BY query*/
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id;

/*Task 3: WHERE query */
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
WHERE total_amount > 300
GROUP BY customer_id;

/*Task 3: HAVING query*/
SELECT customer_id, SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 500;

