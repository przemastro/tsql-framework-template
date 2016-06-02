# tsqlFramework
SqlServer 2012 Express

This is a demo version of framework used for tsql stored procedures testing. It is a set of test stored procedures and
is prepared for https://github.com/przemastro/astroApp.git DB but obviously can be addapted to any DB schema which uses stored procedures. 

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

Views

    1. observationsSorted - id, starName, startDate, endDate
    2. uPhotometrySorted - id, uPhotometry, uPhotometryTime
    3. vPhotometrySorted - id, vPhotometry, vPhotometryTime
    4. bPhotometrySorted - id, bPhotometry, bPhotometryTime

Stored Procedures

    1. observationsDelta
    2. insertTestData
    
Queries

    1. metadata.sql - some metadata used by stored procedures
    
In addition test data are prepared.    

More info you can find in https://github.com/przemastro/astroApp.git and in gettingStarted.txt file.
