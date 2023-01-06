select
    CP_CATALOG_PAGE_SK as catalog_page
    , CP_CATALOG_PAGE_ID as catalog_page_id
    , CP_START_DATE_SK as start_date
    , CP_END_DATE_SK as end_date
    , CP_CATALOG_NUMBER as catalog_number
    , CP_CATALOG_PAGE_NUMBER as page_number
    , CP_DESCRIPTION as description
    , CP_TYPE as type
  
from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.CATALOG_PAGE