CREATE OR REPLACE VIEW `batchd-463611.epos.orders_view` AS
SELECT
  order_id,
  order_date_time,
  product_count,
  amount,
  discount_amount,
  CAST(CAST(discount_type AS FLOAT64) AS INT64) AS discount_id,
  CASE
    WHEN location_id IN ('API', 'API - Meadowhall') THEN 'API'
    WHEN location_id = 'API - Warehouse' THEN 'Warehouse'
    WHEN location_id LIKE 'Shopify%' THEN 'Shopify'
    WHEN location_id LIKE 'WooCommerce%' THEN 'WooCommerce'
    WHEN location_id LIKE 'Epos Now Delivery Powered by Deliverect%' THEN 'Delivery (Deliverect)'
    WHEN location_id LIKE 'POS-COPPER%' THEN 'York - Coppergate'
    WHEN location_id LIKE 'POS-THELANES%' THEN 'Sheffield - The Lanes (Meadowhall)'
    WHEN location_id LIKE 'POS-YDO%' THEN 'York - Designer Outlet'
    WHEN location_id LIKE 'POS-GRANDC%' THEN 'Birmingham - Link Street'
    WHEN location_id LIKE 'POS-MERRYHILL%' THEN 'Birmingham - Merry HIll'
    WHEN location_id LIKE 'POS-BRAEHEAD%' THEN 'Glasgow - Braehead'
    WHEN location_id LIKE 'POS-BUCHANAN%' THEN 'Glasgow - Buchanan Galleries'
    WHEN location_id LIKE 'POS-BULLRING%' THEN 'Birmingham - Bullring'
    WHEN location_id LIKE 'POS-SILVERB%' THEN 'Glasgow - Silverburn'
    WHEN location_id LIKE 'POS-TRAFFORD%' THEN 'Manchester - Trafford'
    WHEN location_id LIKE 'POS-MANVIC%' THEN 'Manchester - Victoria Station'
    WHEN location_id LIKE 'POS-METRO%' THEN 'Newcastle - Metrocentre'
    WHEN location_id LIKE 'POS-CENTRE%' THEN 'MK - The Centre'
    WHEN location_id LIKE 'POS-MEADOWHALL%' THEN 'Sheffield - Meadowhal'
    WHEN location_id LIKE 'POS-PETERBOROUGH%' THEN 'Peterborough - Queensgate'
    WHEN location_id LIKE 'POS-FOSSE%' THEN 'Leicester - Fosse Park'
    WHEN location_id LIKE 'POS-HIGHCROSS%' OR location_id LIKE 'POS-HCROSS%' THEN 'Leicester - Highcross'
    WHEN location_id LIKE 'POS-LEEDSTRAINSTATION%' THEN 'Leeds - Train Station'
    WHEN location_id LIKE 'POS-TRINITY%' THEN 'Leeds - Trinity'
    WHEN location_id LIKE 'POS-WHITEROSE%' THEN 'Leeds - White Rose'
    WHEN location_id LIKE 'POS-NEWCANNON%' THEN 'Manchester - New Cannon Street'
    WHEN location_id LIKE 'POS-ORIENT%' THEN 'Manchester - The Orient (Trafford)'
    WHEN location_id LIKE 'POS-HAWLEY%' THEN 'Camden - Hawley Wharf'
    WHEN location_id LIKE 'POS-LOCKMARKET%' THEN 'Camden - Lock Market'
    WHEN location_id LIKE 'POS-DEANSGATE%' THEN 'Manchester - Deansgate'
    ELSE 'Unknown'
  END AS location_names
FROM `batchd-463611.epos.orders`;
