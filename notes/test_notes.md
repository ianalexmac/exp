tests!

should be:
    Automated: low effort, repeatable
    Fast!: if testing takes too long, no one will do it
    Reliable: believe them when they say something doesn't work
    Informative: leave you clues about what to fix based on the errors
    Focused: every test should validate one assumption
    Independent: tests should not depend on one another

identify assumptions, write tests

what to tests and why
    test on one database object
        assert something about object you think is true
        contents of the data
        constraints of the table
        the grain of the table 
            ex: unique, not_null, accepted_values, etc
    
    test relationships between objects
        compare values in one model to a source of truth in another model
        ensure data hasn't been removed or added in error
            ex: expect_table_row_count_to_equal_other_table 

    test something unique about the data
        usually involve some business logic, edge case, or rare event
            ex: orders should have payments >= 0
            ex: subtotal + tax + credits = Total
    test freshness of raw source data
        see if you loading tool has added raw data to your source table in the last x hours
        get notified if your underlying raw source data is not up to date
        ** consider as the first step in your job to prevent running models if source data is delayed
            ex: freshness tests
            ex: dbt source freshness
    temporary testing while refactoring
        create confidence
        efficiently refactor
        auditing your changes while in development
            ex: audit_helper package, compares refactored model to legacy model

debugging:
    run <dbt test>
    test fails
    view logs -> click into debug logs
    find the SQL that was run
    copy the correct part of it
    paste it into a statements tab
    preview data to see what rows failed

    better way: --store-failures flag


four major testing points:

    development:
        critical to test after changing logic in models
        find bugs as early as possible, before pull request

    production: 
        important to catch failures when the happen
        empowers data team to catch quality issues before stakeholders are impacted

    pull request:
        run automated tests against changes to catch issues before merge

    on middle/QA branch (if exists):
        test a batch of changes before merging to the main branch



p.s.:
    can be very helpful to store-failures for future reference!
    dbt test --store-failures
        can be configured on a model or project level!

            tests:
             +store_failures: true  # all tests


packages!
        dbt_utils
                lots of great tools 

        dbt_expectations
                expect column 'amount' of table 'orders' to be < 0      T/F

        dbt_audit_helper
                suuuper useful when making big changes to models
                can compare two tables and test for similarities
                        model_depricated =?= model   --->   percent match
                        



