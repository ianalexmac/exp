 select 
    customer_id
    , count(customer_id) as number_of_customers
     
 from dim_customers
 group by 1
 having number_of_customers > 1