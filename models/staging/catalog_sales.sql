select 
    CS_SOLD_DATE_SK         as sold_date
    ,CS_SOLD_TIME_SK        as sold_time
    ,CS_SHIP_DATE_SK        as ship_date
    ,CS_BILL_CUSTOMER_SK    as bill_customer
    ,CS_BILL_CDEMO_SK       as bill_cdemo
    ,CS_BILL_HDEMO_SK       as bill_hdemo
    ,CS_BILL_ADDR_SK        as bill_address
    ,CS_SHIP_CUSTOMER_SK    as ship_customer
    ,CS_SHIP_CDEMO_SK       as ship_cdemo
    ,CS_SHIP_HDEMO_SK       as ship_hdemo
    ,CS_SHIP_ADDR_SK        as ship_address
    ,CS_CALL_CENTER_SK      as call_center
    ,CS_CATALOG_PAGE_SK     as catalog_page
    ,CS_SHIP_MODE_SK        as ship_mode
    ,CS_WAREHOUSE_SK        as warehouse
    ,CS_ITEM_SK             as item
    ,CS_PROMO_SK            as promo
    ,CS_ORDER_NUMBER        as order_number
    ,CS_QUANTITY            as quantity
    ,CS_WHOLESALE_COST      as wholesale_cost
    ,CS_LIST_PRICE          as list_price
    ,CS_SALES_PRICE         as sale_price
    ,CS_EXT_DISCOUNT_AMT    as ext_discount_amt
    ,CS_EXT_SALES_PRICE     as ext_sale_price
    ,CS_EXT_WHOLESALE_COST  as ext_wholesale_cost
    ,CS_EXT_LIST_PRICE      as ext_list_price
    ,CS_EXT_TAX             as ext_tax
    ,CS_COUPON_AMT          as coupon_amt
    ,CS_EXT_SHIP_COST       as ext_ship_cost
    ,CS_NET_PAID            as net_paid
    ,CS_NET_PAID_INC_TAX    as net_paid_inc_tax
    ,CS_NET_PAID_INC_SHIP   as net_paid_inc_ship
    ,CS_NET_PAID_INC_SHIP_TAX as net_paid_inc_ship_tax
    ,CS_NET_PROFIT          as net_profit
    
from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.CATALOG_SALES