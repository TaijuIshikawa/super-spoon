--to find out what products appeal to Japanese customers.
SELECT pr.product_name,
 SUM(sa.quantity) AS total_sold
FROM products pr
INNER JOIN sales sa
ON pr.product_id=sa.product_id
GROUP BY pr.product_name
ORDER BY total_sold
LIMIT 3;
--now you find out what products you should are the best-sold and increase the amount of storage.
