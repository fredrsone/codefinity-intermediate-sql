--obtain the minimum price for each product category where there are more than 5 distinct products.
SELECT category.name AS category_name, MIN(product.price) AS min_price
FROM category
JOIN product 
    ON category.id = product.category_id
GROUP BY category.name
HAVING COUNT(DISTINCT product.id) > 5
ORDER BY category_name;