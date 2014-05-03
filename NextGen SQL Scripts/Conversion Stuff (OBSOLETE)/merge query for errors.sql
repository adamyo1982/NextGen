SELECT SSN, COUNT(SSN)
FROM Fac_IDs$
GROUP BY SSN
HAVING COUNT(SSN) > 1
delete from Location_Geographic_aggeus where [Facility_Name] = 'Wild Rose Manor'