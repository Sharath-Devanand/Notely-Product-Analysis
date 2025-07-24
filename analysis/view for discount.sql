CREATE OR REPLACE VIEW `batchd-463611.epos.discount_view` AS
SELECT ov.order_id,
        ov.order_date_time,
        ov.product_count,
        ov.amount,
        ov.location_names,
        ov.discount_amount,
        d.discount_name
FROM `batchd-463611.epos.orders_view` ov
LEFT JOIN `batchd-463611.epos.discount` d
  ON ov.discount_id = CAST(d.discount_id AS INT64);
