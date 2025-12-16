-- 10. Determine the top 3 most ordered pizza types based on revenue.

SELECT pt.name, SUM(pz.price * od.quantity) AS revenue
FROM pizza_types AS pt
JOIN pizzas AS pz
ON pt.pizza_type_id = pz.pizza_type_id
JOIN orders_details AS od
ON od.pizza_id = pz.pizza_id
GROUP BY pt.name
ORDER BY revenue DESC
LIMIT 3;

