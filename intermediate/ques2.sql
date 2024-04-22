SELECT hour(order_time) AS hour, count(order_id) AS orders_in_hour
FROM orders
GROUP BY hour(order_time);