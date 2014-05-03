MERGE INTO DEMOGRAPHICS$
   USING tblNextGen10_26_2012
      ON DEMOGRAPHICS$.SSN = tblNextGen10_26_2012.SSN 
WHEN MATCHED THEN
   UPDATE 
      SET Facility_ID = tblNextGen10_26_2012.CMD_FAC_ID;
      
      MERGE INTO NG_locations
   USING Location_Geographic_aggeus
      ON Location_Geographic_aggeus.Facility_Name = NG_Locations.location_name 
WHEN MATCHED THEN
   UPDATE 
      SET latitude = Location_Geographic_aggeus.latitude;