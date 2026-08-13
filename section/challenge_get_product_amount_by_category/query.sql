--find the product names and their quantities in stock. Join two tables: product and category.
--Focus on products in the Meat or Grains categories. Use the OR operator for these categories and ensure the product quantity is less than 100
SELECT product.name AS product_name, product.amount AS product_amount
FROM product
JOIN category 
    ON product.category_id = category.id
WHERE category.name = 'Meat' OR category.name = 'Grains' AND  product.amount < 100
ORDER BY product.name;