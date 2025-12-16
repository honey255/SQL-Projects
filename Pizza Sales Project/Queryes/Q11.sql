-- 11. Calculate the percentage contribution of each pizza type to total revenue.

SELECT pt.category,
ROUND(SUM(od.quantity * pz.price) / 
									( SELECT ROUND(SUM(od.quantity * pz.price),2) AS total_sales
									FROM orders_details AS od
									JOIN pizzas AS pz
									ON pz.pizza_id = od.pizza_id ) * 100,2) AS revanue
FROM pizza_types AS pt 
JOIN pizzas AS pz
ON pt.pizza_type_id = pz.pizza_type_id
JOIN orders_details AS od
ON od.pizza_id = pz.pizza_id
GROUP BY pt.category
ORDER BY revanue DESC;