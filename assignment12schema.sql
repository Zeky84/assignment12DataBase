CREATE SCHEMA `pizza_restaurant`;

CREATE TABLE `pizza_list` (
  `pizza_id` INT NOT NULL,
  `pizza_name` VARCHAR(45) NOT NULL,
  `pizza_cost` DECIMAL (5,2) NOT NULL,
  PRIMARY KEY (`pizza_id`));
  
CREATE TABLE `customers` (
`customer_id` INT NOT NULL,
`customer_name` VARCHAR(100) NOT NULL,
`customer_phone` VARCHAR(12) NOT NULL,
PRIMARY KEY (`customer_id`));

CREATE TABLE `orders` (
`order_id` INT NOT NULL AUTO_INCREMENT,
`order #` INT NOT NULL,
`customer_id` INT NOT NULL,
`pizza_id` INT NOT NULL,
`quantity` INT NOT NULL,
`date` DATETIME NOT NULL,
FOREIGN KEY (`customer_id`) REFERENCES `customers`(customer_id),
FOREIGN KEY (`pizza_id`) REFERENCES `pizza_list`(pizza_id),
PRIMARY KEY (order_id));

