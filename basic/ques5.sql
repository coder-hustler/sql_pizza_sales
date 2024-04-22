-- List the top 5 most ordered pizza types along with their quantities.

SELECT pizzas.pizza_id, sum(order_details.quantity) AS quantity_ordered
FROM order_details INNER JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.pizza_id
ORDER BY count(order_details.order_id) DESC
LIMIT 5;
