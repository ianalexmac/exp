
model types
    sources
        not actually models
        referenced to raw tables in warehouse
        loaded via fivetran or stitch, maybe manually, data engineer

    staging
        built 1 to 1 with sources
        light-touch computations
            rename column, convert units, etc

    intermediates
        hidden from final users
        reference staging models, never sources

    facts   (fct)
        long and skinny
        changes a lot
        record of things that happened or happening over time
        orders, votes, clicks, etc

    dimension (dim)
        something that exists
        things that dont change much, but maybe a little (email change)
        person, place, or thing
        users, companies, products, customers
        


tests
    very important! build trust!



    genaric tests
        highly-scalable
        few lines of yaml code
        
        four tests that come with dbt:
            - unique            every value in column is unique (primary keys)
            - not null          every value in column is not null (primary keys)
            - accepted_values   every value in column is from given list
            - relationships     every value in column exists in the column of another referenced table
        
    other tests available in custom packages

    singular tests
        very specific
        one or two models
        tests something very specific
        cannot copy/paste to other models
            
        ex: are all accounts positive?
    
    dont forget to test raw data!
        located in src_something.yml (src_jaffle_shop.yml) or /tests

    