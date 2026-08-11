--retrieve the unique category names that have products with a price higher than 450.
SELECT DISTINCT category.name 
FROM category
JOIN product 
    ON category.id = product.category_id
WHERE PRICE > 450;