# TsqlFramework
SqlServer 2012 Express

This is a demo version of a framework I used for tsql stored procedures testing in one of the Barclays Data Warehouse project. It is a set of test stored procedures.

DB 'Astro' consists of:

Tables

    1. stagingObservations - id, rowId, starName, startDate, endDate, uPhotometry, uPhotometryTime, vPhotometry, vPhotometryTime, bPhotometry, bPhotometryTime, Status, Active
    2. observations - id, rowId, starName, startDate, endDate, uPhotometryId, uPhotometryTimeId, vPhotometryId, vPhotometryTimeId, bPhotometryId, bPhotometryTimeId
    3. uPhotometry - uPhotometryId, uPhotometry
    4. vPhotometry - bPhotometryId, vPhotometry
    5. bPhotometry - bPhotometryId, bPhotometry
    6. uPhotometryTime - uPhotometryTimeId, uPhotometryTime
    7. vPhotometryTime - vPhotometryTimeId, vPhotometryTime
    8. bPhotometryTime - bPhotometryTimeId, bPhotometryTime
    9. log - id, procName, starDate, endDate, Message
    10.TestData
    11.testStatus
    12.metadataCounts
    13.metadataComparison

Views

    1. observationsSorted - id, starName, startDate, endDate
    2. uPhotometrySorted - id, uPhotometry, uPhotometryTime
    3. vPhotometrySorted - id, vPhotometry, vPhotometryTime
    4. bPhotometrySorted - id, bPhotometry, bPhotometryTime

Stored Procedures

    1. observationsDelta
    2. insertTestData
    3. observationsCounts
    4. observationsComparison
    
    
Queries

    1. metadata.sql - some metadata used by stored procedures
    
In addition test data are prepared.    

More info you can find in https://github.com/przemastro/astroApp.git and in gettingStarted.txt file.
