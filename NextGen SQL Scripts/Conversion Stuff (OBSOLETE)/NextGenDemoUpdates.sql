use NextGenConversion
go

/*Remove null records that may have been imported do to the way the filw is exported*/
DELETE FROM dbo.tblNextGen10_26_2012 WHERE STATUS IS NULL;

/*Update the status field to inactive if the Info column as inactive in it.*/
UPDATE dbo.tblNextGen10_26_2012 SET STATUS = 'Inactive' WHERE info LIKE '%Inactive%';
UPDATE dbo.tblNextGen10_26_2012 SET STATUS = 'Inactive' WHERE info LIKE '%nactive%';
UPDATE dbo.tblNextGen10_26_2012 SET STATUS = 'Inactive' WHERE info LIKE '%nctive%';
UPDATE dbo.tblNextGen10_26_2012 SET STATUS = 'Inactive' WHERE info LIKE '%native%';


/*Set all the bit fields for services and dm, hospice, code11 and skilled to false.*/
UPDATE dbo.tblNextGen10_26_2012 SET podiatry = '0', dental = '0', audiology = '0', psychiatry = '0', optometry = '0';

UPDATE dbo.tblNextGen10_26_2012 SET dm = '0', hospice = '0', code11 = '0', skilled = '0', consent = '0';

/*Set the bit value to true for the following services fields*/
UPDATE dbo.tblNextGen10_26_2012 SET podiatry = '1' WHERE INFO LIKE '%PO%'
UPDATE dbo.tblNextGen10_26_2012 SET dental = '1' WHERE INFO LIKE '%DE%'
UPDATE dbo.tblNextGen10_26_2012 SET optometry = '1' WHERE INFO LIKE '%OP%'
UPDATE dbo.tblNextGen10_26_2012 SET audiology = '1' WHERE INFO LIKE '%AU%'
UPDATE dbo.tblNextGen10_26_2012 SET psychiatry = '1' WHERE INFO LIKE '%PS%'
update dbo.tblNextGen10_26_2012 set consent = '0' where INFO LIKE '%CONSENT%'
update dbo.tblNextGen10_26_2012 set consent = '0' where INFO like ''
update dbo.tblNextGen10_26_2012 set consent = '1'  where podiatry = '1'
update dbo.tblNextGen10_26_2012 set consent = '1'  where dental = '1'
update dbo.tblNextGen10_26_2012 set consent = '1' where optometry = '1'
update dbo.tblNextGen10_26_2012 set consent = '1' where audiology = '1'
update dbo.tblNextGen10_26_2012 set consent = '1' where psychiatry = '1'

/*SEt the bit values to tru for the folloiwng demo fields*/
UPDATE dbo.tblNextGen10_26_2012 SET dm = '1' WHERE ALERTS LIKE '%DM%'
UPDATE dbo.tblNextGen10_26_2012 SET code11 = '1' WHERE ALERTS LIKE '%11%'
UPDATE dbo.tblNextGen10_26_2012 SET code11 = '0' WHERE ALERTS LIKE '%/11/%'  /*We do this in case a date was selected when looking for just 11*/
UPDATE dbo.tblNextGen10_26_2012 SET hospice = '1' WHERE ALERTS LIKE '%hospice%'
UPDATE dbo.tblNextGen10_26_2012 SET skilled = '1' WHERE ALERTS LIKE '%skilled%'

/*If Addr1 does not start with C/O it's not a responsible party, However I need to take a record of the NH's home and Guarantor's ADDR*/
update dbo.tblNextGen10_26_2012 set ADDR3 = ADDR1
update dbo.tblNextGen10_26_2012 set ADDR4 = ADDR2
UPDATE dbo.tblNextGen10_26_2012 SET ADDR1 = NULL, ADDR2 = NULL WHERE ADDR1 LIKE 'C/O%';


/*Set values to null if teh field is blank.*/
UPDATE dbo.tblNextGen10_26_2012 SET EXT_REF_ID = NULL WHERE EXT_REF_ID = '';
UPDATE dbo.tblNextGen10_26_2012 SET SSN = NULL WHERE ssn = '';
UPDATE dbo.tblNextGen10_26_2012 SET LASTSEEN = NULL WHERE LASTSEEN = '';
UPDATE dbo.tblNextGen10_26_2012 SET INFO = NULL WHERE INFO = '';
UPDATE dbo.tblNextGen10_26_2012 SET DRIVERS_LICENSE = NULL WHERE DRIVERS_LICENSE = '';
UPDATE dbo.tblNextGen10_26_2012 SET PRI_INS_NAME = NULL WHERE PRI_INS_NAME = '';
UPDATE dbo.tblNextGen10_26_2012 SET SEC_INS_NAME = NULL WHERE SEC_INS_NAME = '';




