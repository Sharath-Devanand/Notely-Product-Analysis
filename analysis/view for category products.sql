
CREATE OR REPLACE VIEW `batchd-463611.epos.product_category` AS 

WITH categ_cleanup AS (
    SELECT c1.category_id,
            c2.category_name
    FROM `batchd-463611.epos.category` c1
    LEFT JOIN `batchd-463611.epos.category` c2
      ON c1.root_id = c2.category_id
)

SELECT p.product_id,
      p.product_name,
      p.price,
      p.cost,
      c.category_name
FROM `batchd-463611.epos.products` p
LEFT JOIN categ_cleanup c
  ON CAST(CAST(CAST(p.category_id AS FLOAT64) AS INT64) AS STRING) = c.category_id