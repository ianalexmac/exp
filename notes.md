
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
        