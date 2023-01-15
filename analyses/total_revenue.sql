with successful_payments as (

    select * from {{ ref('stg_payments')}}
    where status = 'success'
)

select 
    sum(amount)
    
from successful_payments