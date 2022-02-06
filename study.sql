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

-- 003
SELECT *
FROM sample.customers
WHERE birthday IS NOT NULL
AND id_premium = TRUE
ORDER BY birthday DESC, register_date ASC
LIMIT 3

--004
SELECT *
FROM sample.customers
WHERE (id_premium IS TRUE OR birthday BETWEEN '1970-01-01' AND '1979-12-31')
AND name LIKE '%美'
AND gender = 2
-- 女性指定忘れてた
ORDER BY birthday ASC
LIMIT 3