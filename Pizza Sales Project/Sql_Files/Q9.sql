-- 9. Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT ROUND(AVG(quant),0) as pizza_per_day
FROM (
	SELECT o.order_date, SUM(od.quantity) AS quant
	FROM orders AS o
	JOIN orders_details AS od
	ON o.order_id = od.order_id
	GROUP BY o.order_date
) AS order_quantity;

