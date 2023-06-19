INSERT INTO customers (customer_id, customer_name, customer_phone)
VAlUES(1,'Trevor Page','266-555-4982'),
		(2,'John Doe','555-555-9498'),
        (3,'Ezequiel Duque','111-000-1111');

INSERT INTO pizzas(pizza_id, pizza_name, pizza_cost)
VALUE(1,'Peperoni & Chesse',7.99),
		(2,'Vegetarian',9.99),
		(3,'Meat Lovers',14.99),
		(4,'Hawaiian',12.99);

INSERT INTO orders(`order_number`, `customer_id`,`pizza_id`,`quantity`,`date`)
VALUES(1,1,1,1,'2014-10-9 09:47:00'),
		(1,1,3,1,'2014-10-9 09:47:00'),
		(2,2,2,1,'2014-10-9 09:47:00'),
		(2,2,3,2,'2014-10-9 09:47:00'),
		(3,1,3,1,'2014-10-9 09:47:00'),
		(3,1,4,1,'2014-10-9 09:47:00'),
        (4,3,3,4,'2023-06-18 09:47:00'),
		(4,3,4,4,'2023-06-18 09:47:00'),
        (4,3,1,2,'2023-06-18 09:47:00');

