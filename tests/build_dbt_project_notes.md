https://youtu.be/jJFdVVzWCKI

https://docs.getdbt.com/blog/how-to-build-a-mature-dbt-project-from-scratch



init
feature completeness: 
    am I using all the features I should be using?
feature depth: 
    am I getting all the value from the features?
    are these features appropriate for my use?
    can I make usage of this feature more efficient?

caveats and assumptions:
    often good reasons to introduce more advanced DBT features earlier in dev cycle
    no pace implied

stage 0: raw data
    access raw data
    access old transform models

stage 1: infancy
    parallel / duplicate the old tranform models
    use existing logic!
    make a baseline

    dbt run

    goals?: learn the basics of what makes dbt work
    how?: port over a single report as a proof of concept
    why?: learn value of AE workflow
    what if I don't?: 

stage 2: toddlerhood
    big jump
    building blocks
        multiple layers of models
        all raw data references use source macro
        intro of jinja

    dbt run, dbt seed, dbt test, dbt docs

    goals?: learn modularity, leverage built-in testing and documentation
    how?: build lineage with {{ ref() }} and {{ source() }} macros
    why?: introduce reusability and durability into modeling workflow
    what if I don't?: lose trust in data, undocumented, untested, monolithic


stage 3: childhood!
    structure and rules: prevent creating a juv delinquent
    similar features, much more depth
        less focues on 'what', more focused on 'how'

    goal?: create foundation for scalability
    how?: develop and enforce standards for use of basic features
    why?: ensure quality as you scale
    what if I don't?: loss of money!


stage 4: adolescence
    more dimensions and flexibility
    more speed
    more context

    goals?: broaden scope of project
            speed up models + dev cycle
            enhance insights with source metadata
    how?: engagement with the dbt community
    why?: increase dbt's surface area and influence at your org
    what if I don't?: will lose stakeholder buy-in!



    

