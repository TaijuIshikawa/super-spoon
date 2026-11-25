--which (city,district,store_type) had revenue amd profit the most?
SELECT st.city,--(st.district,st.store_type)
  SUM(sa.quantity*pr.unit_price) AS Total_revenue,
  SUM(sa.quantity*(pr.unit_price-pr.unit_cost) AS Profit
FROM stores st
INNER JOIN sales sa
ON st.store_id=sa.store_id
GROUP BY st.city--(st.district,st.store_type)
ORDER BY Total_revenue DESC;

--you find out which store should be the flag_ship or the shop that you should follow its operations
