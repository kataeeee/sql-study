-- SQL学習用
-- 001
SELECT * EXCEPT (revenue), revenue*1.1 AS 'revenue_with_tax'
FROM sample.sales
ORDER BY order_id ASC
LIMIT 3