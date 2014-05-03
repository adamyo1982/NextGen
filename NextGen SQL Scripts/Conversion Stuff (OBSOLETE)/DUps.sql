DELETE FROM DEMOGRAPHICS$ WHERE SSN IN (
    SELECT SSN FROM (
        SELECT 
            SSN
            ,ROW_NUMBER() OVER (PARTITION BY [SSN] ORDER BY SSN) AS [ItemNumber]
            -- Change the partition columns to include the ones that make the row distinct
        FROM 
            DEMOGRAPHICS$
    ) a WHERE ItemNumber > 1 -- Keep only the first unique item
)

Update DEMOGRAPHICS$ Set Facility_ID = '' Where Facility_ID like '%'

ALTER TABLE DEMOGRAPHICS$
ALTER COlumn Facility_ID float