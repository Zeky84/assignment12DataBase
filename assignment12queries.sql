--  Q4: Query to know how much money each customer spent
SELECT  c.customer_name, SUM(p.pizza_cost * o.quantity) AS total_spent_by_customer FROM customers c
  JOIN orders o ON c.customer_id = o.customer_id
  JOIN pizzas p ON o.pizza_id = p.pizza_id
GROUP BY
  c.customer_name
ORDER BY total_spent_by_customer DESC;

-- Q5: Query to know how much money each customer spent including the date and order number
SELECT c.customer_name, SUM(p.pizza_cost * o.quantity) AS total_spent_by_customer, DATE(o.`date`) as `date`
FROM orders o
  JOIN customers c ON o.customer_id = c.customer_id
  JOIN pizzas p ON o.pizza_id = p.pizza_id
GROUP BY
  c.customer_id, c.customer_name, `date`
ORDER BY  `date` DESC;

-- Joining all tables for understanding
select * from orders o
join customers c on c.customer_id = o.customer_id
join pizzas p on p.pizza_id = o.pizza_id;


select * from orders;  

  