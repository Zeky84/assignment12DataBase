CREATE SCHEMA pizza_restaurant;

CREATE TABLE IF NOT EXISTS pizzas (
  pizza_id INT NOT NULL,
  pizza_name VARCHAR(45) NOT NULL,
  pizza_cost DECIMAL (5,2) NOT NULL,
  PRIMARY KEY (pizza_id)
);
  
CREATE TABLE IF NOT EXISTS customers (
  customer_id INT NOT NULL,
  customer_name VARCHAR(100) NOT NULL,
  customer_phone VARCHAR(12) NOT NULL,
  PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS orders (
  order_id INT NOT NULL AUTO_INCREMENT,
  order_number INT NOT NULL,
  customer_id INT NOT NULL,
  pizza_id INT NOT NULL,
  quantity INT NOT NULL,
  `date` DATETIME NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id),
  PRIMARY KEY (order_id)
);
-- CREATE TABLE order_pizza (
-- order_id INT NOT NULL,
-- pizza_id INT NOT NULL,
-- FOREIGN KEY (order_id) REFERENCES orders(order_id),
-- FOREIGN KEY (pizza_id) REFERENCES pizzas(pizza_id));

-- CREATE TABLE order_customer (
-- order_id INT NOT NULL,
-- customer_id INT NOT NULL,
-- FOREIGN KEY (order_id) REFERENCES orders(order_id),
-- FOREIGN KEY (customer_id) REFERENCES customers(customer_id));


