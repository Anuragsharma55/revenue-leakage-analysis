Question 1 — Are We Selling at a Loss?
SELECT
p.product_name,
SUM(o.quantity) AS total_units,
SUM(o.quantity * p.selling_price * (1 - o.discount_percent/100)) AS revenue,
SUM(o.quantity * p.cost_price) AS cost,
SUM(o.quantity * p.selling_price * (1 - o.discount_percent/100))
- SUM(o.quantity * p.cost_price) AS profit
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.product_name
HAVING profit < 0
ORDER BY profit;

Question 2 — Are Discounts Killing Us?
SELECT
discount_percent,
COUNT(*) AS orders,
AVG(p.selling_price * (1 - discount_percent/100) - p.cost_price) AS avg_margin
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY discount_percent
ORDER BY discount_percent;

Question 3 — Returns Impact
SELECT
r.reason,
COUNT(*) AS total_returns,
SUM(p.cost_price * o.quantity) AS loss_value
FROM returns r
JOIN orders o ON r.order_id = o.order_id
JOIN products p ON o.product_id = p.product_id
GROUP BY r.reason
ORDER BY loss_value DESC;

Question 4 — Region-Level Leakage
SELECT
c.region,
SUM(o.quantity * p.selling_price) AS gross_sales,
SUM(o.quantity * p.cost_price * rg.shipping_cost_factor) AS adjusted_cost,
SUM(o.quantity * p.selling_price) -
SUM(o.quantity * p.cost_price * rg.shipping_cost_factor) AS real_profit
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id
JOIN regions rg ON c.region = rg.region
GROUP BY c.region
ORDER BY real_profit;
