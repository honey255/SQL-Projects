-- 4. Identify the most common pizza size ordered.

SELECT pz.size, COUNT(od.order_details_id) AS Total_orders
FROM pizzas AS pz
JOIN orders_details AS od
ON pz.pizza_id = od.pizza_id
GROUP BY pz.size
ORDER BY Total_orders DESC; 