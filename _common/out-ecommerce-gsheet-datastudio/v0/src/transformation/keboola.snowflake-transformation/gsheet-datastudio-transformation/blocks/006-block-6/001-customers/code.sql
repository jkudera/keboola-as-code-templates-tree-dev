CREATE TABLE "bdmCustomerEnrich" as
with data_all as (
select
"ORDER_CUSTOMER_EMAIL",
max("ORDER_DATE") "MAX_ORDER_DATE",
count("ORDER_ID") "N_ORDERS",
avg("ORDER_TOTAL_PRICE_WITH_TAXES") "AVG_ORDER_TOTAL_PRICE_WITH_VAT",
avg("ORDER_TOTAL_PRICE_WITHOUT_TAXES") "AVG_ORDER_TOTAL_PRICE_WITHOUT_VAT"
  
from "bdmOrders" o
  where "ORDER_STATUS" = 'success'
group by "ORDER_CUSTOMER_EMAIL"
)
select 
d."ORDER_CUSTOMER_EMAIL",
date("MAX_ORDER_DATE") "MAX_ORDER_DATE",
"N_ORDERS",
"AVG_ORDER_TOTAL_PRICE_WITH_VAT",
"AVG_ORDER_TOTAL_PRICE_WITHOUT_VAT",
o."CUSTOMER_REGULARITY_TYPE" 
from data_all as d
left join "bdmOrders" o ON d."ORDER_CUSTOMER_EMAIL" = o."ORDER_CUSTOMER_EMAIL"
AND d."MAX_ORDER_DATE" = o."ORDER_DATE"
 where o."ORDER_STATUS" = 'success'
UNION ALL
  SELECT
    'test1' "ORDER_CUSTOMER_EMAIL",
    '2022-02-07' "MAX_ORDER_DATE",
    '1' "N_ORDERS",
    '208' "AVG_ORDER_TOTAL_PRICE_WITH_VAT",
    '171.9' "AVG_ORDER_TOTAL_PRICE_WITHOUT_VAT",
    'New Customer' "CUSTOMER_REGULARITY_TYPE" 
  WHERE (SELECT COUNT(*) FROM data_all) = 0;
