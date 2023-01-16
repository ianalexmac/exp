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
