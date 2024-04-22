SELECT 
    category, COUNT(pizza_name)
FROM
    pizza_types

GROUP BY category;