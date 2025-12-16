-- 6. Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pt.category, SUM(od.quantity) AS Total_quantity
FROM pizzas AS pz
JOIN pizza_types AS pt
ON pz.pizza_type_id = pt.pizza_type_id
JOIN orders_details As od
ON pz.pizza_id = od.pizza_id
GROUP BY pt.category;

