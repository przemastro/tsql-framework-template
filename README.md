# tsqlFramework
SqlServer 2012 Express

DB 'Astro' consists of:

Tables

    1. stagingObservations - id, starName, startDate, endDate, uPhotometry, uPhotometryTime, vPhotometry, vPhotometryTime, bPhotometry, bPhotometryTime, Status, Active
    2. observations - id, starName, startDate, endDate, uPhotometryId, uPhotometryTimeId, uPhotometryFlag, vPhotometryId, vPhotometryTimeId, vPhotometryFlag, bPhotometryId, bPhotometryTimeId, bPhotometryFlag
    3. uPhotometry - uPhotometryId, uPhotometry
    4. vPhotometry - bPhotometryId, vPhotometry
    5. bPhotometry - bPhotometryId, bPhotometry
    6. uPhotometryTime - uPhotometryTimeId, uPhotometryTime
    7. vPhotometryTime - vPhotometryTimeId, vPhotometryTime
    8. bPhotometryTime - bPhotometryTimeId, bPhotometryTime
    9. log - id, procName, starDate, endDate, Message

Views

    1. observationsSorted - id, starName, startDate, endDate, uPhotometryFlag, vPhotometryFlag, bPhotometryFlag
    2. uPhotometrySorted - id, uPhotometry, uPhotometryTime
    3. vPhotometrySorted - id, vPhotometry, vPhotometryTime
    4. bPhotometrySorted - id, bPhotometry, bPhotometryTime

Stored Procedures

    1. observationsDelta

In addition: 
Table 1 - status (new, old), active (0, 1), null values allowed in Photometry columns
Tables 3-8 contains unique and not null values
Table 2 contains only active records
If there are no photometry for observation then columns are populated with nulls
Data types conversion between stagingObservations and observations tables


More info you can find in https://github.com/przemastro/astroApp.git
