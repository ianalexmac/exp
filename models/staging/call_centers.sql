select 
    CC_CALL_CENTER_SK as call_center
    , CC_CALL_CENTER_ID as call_center_id
    , CC_REC_START_DATE as rec_start_date
    , CC_REC_END_DATE as rec_end_date
    , CC_CLOSED_DATE_SK as closed_date
    , CC_OPEN_DATE_SK as opened_date
    , CC_NAME as name
    , CC_CLASS as class
    , CC_EMPLOYEES as employees
    , CC_SQ_FT as sq_ft
    , CC_HOURS as hours
    , CC_MANAGER as manager
    , CC_MKT_ID as mkt_id
    , CC_MKT_CLASS as mkt_class
    , CC_MKT_DESC as mkt_desc
    , CC_MARKET_MANAGER as mkt_manager
    , CC_DIVISION as division
    , CC_DIVISION_NAME as division_name
    , CC_COMPANY as company
    , CC_COMPANY_NAME as company_name
    , CC_STREET_NUMBER as street_number
    , CC_STREET_NAME as street_name
    , CC_STREET_TYPE as street_type
    , CC_SUITE_NUMBER as suite_type
    , CC_CITY as city
    , CC_COUNTY as county
    , CC_STATE as state
    , CC_ZIP as zip
    , CC_COUNTRY as country
    , CC_GMT_OFFSET as gmt_offset
    , CC_TAX_PERCENTAGE as tax_percentage


from SNOWFLAKE_SAMPLE_DATA.TPCDS_SF10TCL.CALL_CENTER