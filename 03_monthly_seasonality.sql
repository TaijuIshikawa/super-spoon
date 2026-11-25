--which season has the best sold in a year in Japan to conduct the campaign.
SELECT EXTRACT(MONTH FROM sale_date) AS MONTH,
 SUM(quantity) AS total_units
FROM sales
GROUP BY MONTH
ORDER BY MONTH;
--find out which month has the best sold each season and try to work on the canpaign.
