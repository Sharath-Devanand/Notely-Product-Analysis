CREATE OR REPLACE VIEW `batchd-463611.epos.staffing_helper` AS 

SELECT
  o.location_names,
  EXTRACT(HOUR FROM o.order_date_time) AS hour,
  EXTRACT(DAYOFWEEK FROM o.order_date_time) - 1 AS day_of_week, -- 0 = Sunday
  FORMAT_DATE('%A', DATE(o.order_date_time)) AS day_name,       -- 'Monday', 'Tuesday', etc.
  CAST(CEIL(EXTRACT(DAY FROM o.order_date_time) / 7.0) AS INT64) AS week_of_month,
  EXTRACT(MONTH FROM o.order_date_time) AS month,
  EXTRACT(YEAR FROM o.order_date_time) AS year,
  COUNT(*) AS order_count,
  SUM(o.amount) AS total_revenue,
  MAX(ec.employee_count) AS employee_count
FROM
  `batchd-463611.epos.orders_view` AS o
LEFT JOIN
  `batchd-463611.epos.emp_count` AS ec
ON
  o.location_names = ec.location
  AND EXTRACT(DAYOFWEEK FROM o.order_date_time) - 1 = ec.day_of_week
  AND EXTRACT(HOUR FROM o.order_date_time) = ec.hour
WHERE
  o.location_names != 'API'
GROUP BY
  o.location_names,
  hour,
  day_of_week,
  day_name,
  week_of_month,
  month,
  year
ORDER BY
  o.location_names,
  year,
  month,
  week_of_month,
  hour,
  day_of_week;
