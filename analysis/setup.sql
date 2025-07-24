CREATE OR REPLACE TABLE `batchd-463611.epos.orders` (
    order_id STRING,
    order_date_time TIMESTAMP,
    location_id STRING,
    product_count NUMERIC,
    amount NUMERIC,
    discount_amount NUMERIC,
    discount_type STRING
);

CREATE OR REPLACE TABLE `batchd-463611.epos.order_products` (
    order_id STRING,
    product_id STRING,
    price NUMERIC,
    quantity NUMERIC
);

CREATE OR REPLACE TABLE `batchd-463611.epos.products` (
    product_id STRING,
    product_name STRING,
    category STRING,
    price NUMERIC,
    cost NUMERIC
);

CREATE OR REPLACE TABLE `batchd-463611.epos.locations` (
    location_id STRING,
    location_name STRING,
    joined_date TIMESTAMP,
    category STRING
);

CREATE OR REPLACE TABLE `batchd-463611.epos.employee` (
    employee_id STRING,
    employee_name STRING,
    location_ids ARRAY<STRING>
);


CREATE OR REPLACE TABLE `batchd-463611.epos.emp_count` (
    location STRING,
    day_of_week INT64,
    hour INT64,
    employee_count INT64
);