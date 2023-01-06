select
    CR_RETURNED_DATE_SK      as returned_date
    ,CR_RETURNED_TIME_SK     as returned_time
    ,CR_ITEM_SK              as item
    ,CR_REFUNDED_CUSTOMER_SK as refunded_customer
    ,CR_REFUNDED_CDEMO_SK    as refunded_cdemo
    ,CR_REFUNDED_HDEMO_SK    as refunded_hdemo
    ,CR_REFUNDED_ADDR_SK     as refunded_customer
    ,CR_RETURNING_CUSTOMER_SK as returning_customer
    ,CR_RETURNING_CDEMO_SK   as returning_cdemo
    ,CR_RETURNING_HDEMO_SK   as returning_hdemo
    ,CR_RETURNING_ADDR_SK    as returning_address
    ,CR_CALL_CENTER_SK       as call_center
    ,CR_CATALOG_PAGE_SK      as catalog_page
    ,CR_SHIP_MODE_SK         as ship_mode
    ,CR_WAREHOUSE_SK         as warehouse
    ,CR_REASON_SK            as reason
    ,CR_ORDER_NUMBER         as order_number
    ,CR_RETURN_QUANTITY      as return_quantity
    ,CR_RETURN_AMOUNT        as return_amount
    ,CR_RETURN_TAX           as return_tax
    ,CR_RETURN_AMT_INC_TAX   as return_amount_with_tax
    ,CR_FEE                  as fee
    ,CR_RETURN_SHIP_COST     as return_shipping_cost
    ,CR_REFUNDED_CASH        as refunded_cash
    ,CR_REVERSED_CHARGE      as reversed_charge
    ,CR_STORE_CREDIT         as store_credit
    ,CR_NET_LOSS             as net_loss
    
from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.CATALOG_RETURNS