SELECT 
    pizza_types.category,
    round( (SUM(order_details.quantity * pizzas.price) / 
				(SELECT sum(order_details.quantity * pizzas.price)
				FROM pizzas JOIN pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
				JOIN order_details ON pizzas.pizza_id = order_details.pizza_id) * 100)
			, 2) 
	AS percent_contribution_to_total_revenue

FROM
    pizzas
        JOIN
    pizza_types ON pizzas.pizza_type_id = pizza_types.pizza_type_id
        JOIN
    order_details ON pizzas.pizza_id = order_details.pizza_id

GROUP BY pizza_types.category;