-- 12. Analyze the cumulative revenue generated over time.

SELECT order_date, 
ROUND (SUM(revanue) OVER(ORDER BY order_date),2) AS cum_revanue
from (
		SELECT o.order_date, SUM(od.quantity * pz.price) AS revanue
		FROM orders_details AS od
		JOIN pizzas AS pz
		ON od.pizza_id = pz.pizza_id
		JOIN orders AS o
		ON o.order_id = od.order_id
		GROUP BY o.order_date
	 ) AS sales;
    
    