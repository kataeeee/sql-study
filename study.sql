-- SQL学習用
-- 001
SELECT * EXCEPT (revenue), revenue*1.1 AS 'revenue_with_tax'
FROM sample.sales
ORDER BY order_id ASC
LIMIT 3
--002
SELECT order_id
, quantity
, revenue
, quantity+1 AS new_qty
, (quantity+1)*(revenue/quantity) AS new_revenue
-- 単価を求めるところができてなかった
FROM sample.sales
ORDER BY new_revenue DESC
LIMIT 3