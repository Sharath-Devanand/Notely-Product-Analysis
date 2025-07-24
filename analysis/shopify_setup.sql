CREATE OR REPLACE TABLE `batchd-463611.shopify.orders` (
    order_id STRING,
    order_date_time TIMESTAMP,
    product_id_list STRING,
    customer_id STRING,
    amount NUMERIC,
    discounts STRING,
    tags STRING
);

CREATE OR REPLACE TABLE `batchd-463611.shopify.order_products` (
    order_id STRING,
    product_id STRING,
    product_name STRING,
    price NUMERIC
);

CREATE OR REPLACE TABLE `batchd-463611.shopify.products` (
    product_id STRING,
    product_name STRING,
    price NUMERIC
);

CREATE OR REPLACE TABLE `batchd-463611.shopify.customers`(
    customer_id STRING,
    joined_date TIMESTAMP,
    city STRING
);