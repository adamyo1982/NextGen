INSERT INTO dbo.NEXTGENINSURANCE
    (Payer_Name, Defined_Cov_Order, Address1, City, State, Zip, Policy_Nbr, Person_Nbr)
      SELECT   SEC_INS_NAME, '2', ADDR1, CITY, STATE, ZIPCODE, PRIMARY2_POLICY_NUMBER, Person_Number FROM NGdemoWITHINSURANCE