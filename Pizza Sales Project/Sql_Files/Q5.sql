-- 5. List the top 5 most ordered pizza types along with their quantities.

SELECT pt.name, SUM(od.quantity) AS Qnt
FROM pizza_types As pt
JOIN pizzas AS pz
ON pt.pizza_type_id = pz.pizza_type_id
JOIN orders_details AS od
ON od.pizza_id = pz.pizza_id
GROUP BY pt.name
ORDER BY Qnt DESC
LIMIT 5;

