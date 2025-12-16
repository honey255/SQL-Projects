-- 13. Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT name,category,revanue 
FROM(
	SELECT category,name,revanue,
	RANK() OVER(PARTITION BY category ORDER BY revanue DESC) AS rn
	FROM(
		SELECT pt.category, pt.name,
		SUM(od.quantity * pz.price) AS revanue
		FROM pizza_types AS pt
		JOIN pizzas AS pz
		ON pt.pizza_type_id = pz.pizza_type_id
		JOIN orders_details AS od
		ON od.pizza_id = pz.pizza_id
		GROUP BY pt.category,pt.name
	) AS a
) AS b
WHERE rn <= 3;
