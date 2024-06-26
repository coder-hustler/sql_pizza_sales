SELECT pizza_types.pizza_name, sum(order_details.quantity * pizzas.price) AS revenue_per_type

FROM pizzas
JOIN pizza_types
ON pizzas.pizza_type_id = pizza_types.pizza_type_id
JOIN order_details
ON pizzas.pizza_id = order_details.pizza_id

GROUP BY pizzas.pizza_type_id
ORDER BY revenue_per_type DESC
LIMIT 3;