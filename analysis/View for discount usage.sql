CREATE OR REPLACE VIEW `batchd-463611.epos.store_bulk_order_percentages` AS
SELECT
  location_names AS store_name,
  EXTRACT(YEAR FROM order_date_time) AS order_year,
  EXTRACT(MONTH FROM order_date_time) AS order_month,
  COUNT(*) AS total_orders,
  COUNT(CASE WHEN product_count > 4 THEN 1 END) AS bulk_orders,
  ROUND(
    100.0 * COUNT(CASE WHEN product_count > 4 THEN 1 END) / COUNT(*),
    2
  ) AS bulk_order_percentage
FROM
  `batchd-463611.epos.discount_view`
GROUP BY
  store_name,
  order_year,
  order_month;