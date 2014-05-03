INSERT INTO dbo.NEXTGENINSURANCE
    (Payer_Name, Defined_Cov_Order, Address1, City, State, Zip, Policy_Nbr)
      SELECT   PRI_INS_NAME, '1', ADDR1, CITY, STATE, ZIPCODE, PRIMARY1_POLICY_NUMBER FROM tblNextGen10_26_2012
INSERT INTO dbo.NEXTGENINSURANCE
    (Payer_Name, Defined_Cov_Order, Address1, City, State, Zip, Policy_Nbr)
      SELECT   SEC_INS_NAME, '2', ADDR1, CITY, STATE, ZIPCODE, PRIMARY2_POLICY_NUMBER FROM tblNextGen10_26_2012

        
