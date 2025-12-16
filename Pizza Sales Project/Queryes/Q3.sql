-- 3. Identify the highest-priced pizza.

SELECT  pt.name,pz.price 
FROM pizzas AS pz
JOIN pizza_types AS pt
ON pt.pizza_type_id = pz.pizza_type_id
ORDER BY pz.price DESC
LIMIT 1;

