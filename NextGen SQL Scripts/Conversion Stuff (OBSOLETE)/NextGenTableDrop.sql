USE [NextGenConversion]
GO

/****** Object:  Table [dbo].[NEXTGENDUMMY]    Script Date: 10/26/2012 10:29:53 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NEXTGENDUMMY]') AND type in (N'U'))
DROP TABLE [dbo].[NEXTGENDUMMY]
GO

USE [NextGenConversion]
GO

/****** Object:  Table [dbo].[NEXTGENDUMMY]    Script Date: 10/26/2012 10:29:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[NEXTGENDUMMY](
	[Ent_ID] [nvarchar](255) NULL,
	[Prac_ID] [nvarchar](255) NULL,
	[Person_ID] [nvarchar](255) NULL,
	[Person_Nbr] [nvarchar](255) NULL,
	[Other_ID_Nbr] [nvarchar](255) NULL,
	[Last_Name] [nvarchar](255) NULL,
	[First_Name] [nvarchar](255) NULL,
	[Middle_Name] [nvarchar](255) NULL,
	[Nick_Name] [nvarchar](255) NULL,
	[Degree] [nvarchar](255) NULL,
	[Prior_Last_Name] [nvarchar](255) NULL,
	[DOB] [nvarchar](255) NULL,
	[Sex] [nvarchar](255) NULL,
	[SSN] [nvarchar](255) NULL,
	[Address1] [nvarchar](255) NULL,
	[Address2] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[State] [nvarchar](255) NULL,
	[Zip] [nvarchar](255) NULL,
	[Country] [nvarchar](255) NULL,
	[County] [nvarchar](255) NULL,
	[Home_Phone] [nvarchar](255) NULL,
	[Home_Phone_Comment] [nvarchar](255) NULL,
	[Sec_Address1] [nvarchar](255) NULL,
	[Sec_Address2] [nvarchar](255) NULL,
	[Sec_City] [nvarchar](255) NULL,
	[Sec_State] [nvarchar](255) NULL,
	[Sec_Zip] [nvarchar](255) NULL,
	[Sec_Country] [nvarchar](255) NULL,
	[Sec_County] [nvarchar](255) NULL,
	[Sec_Home_Phone] [nvarchar](255) NULL,
	[Sec_Home_Phone_Comment] [nvarchar](255) NULL,
	[Day_Phone] [nvarchar](255) NULL,
	[Day_Phone_Ext] [nvarchar](255) NULL,
	[Day_Phone_Comment] [nvarchar](255) NULL,
	[Alt_Phone] [nvarchar](255) NULL,
	[Alt_Phone_Desc] [nvarchar](255) NULL,
	[Alt_Phone_Ext] [nvarchar](255) NULL,
	[Alt_Phone_Comment] [nvarchar](255) NULL,
	[Cell_Phone] [nvarchar](255) NULL,
	[Cell_Phone_Comment] [nvarchar](255) NULL,
	[Intl_Home_Phone] [nvarchar](255) NULL,
	[Intl_Work_Phone] [nvarchar](255) NULL,
	[Intl_Zip] [nvarchar](255) NULL,
	[Martial_Status] [nvarchar](255) NULL,
	[Expired_Ind] [nvarchar](255) NULL,
	[Expired_Date] [nvarchar](255) NULL,
	[Smoker_Ind] [nvarchar](255) NULL,
	[Veteran_Ind] [nvarchar](255) NULL,
	[Language] [nvarchar](255) NULL,
	[Religion] [nvarchar](255) NULL,
	[Church] [nvarchar](255) NULL,
	[Student_Status] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Email_Comment] [nvarchar](255) NULL,
	[Race] [nvarchar](255) NULL,
	[Ethnicity] [nvarchar](255) NULL,
	[UDS_Homeless_Status] [nvarchar](255) NULL,
	[UDS_Migrant_Worker_Status] [nvarchar](255) NULL,
	[UDS_Language_Barrier] [nvarchar](255) NULL,
	[UDS_Prim_Med_Coverage] [nvarchar](255) NULL,
	[UDS_Pub_Hsng_Pri_Care] [nvarchar](255) NULL,
	[UDS_School_Health_Ctr] [nvarchar](255) NULL,
	[UDS_Tribal_Affil] [nvarchar](255) NULL,
	[UDS_Blood_Quantum] [nvarchar](255) NULL,
	[UDS_Veteran_Status] [nvarchar](255) NULL,
	[UDS_Consent_to_Treat_Ind] [nvarchar](255) NULL,
	[UDS_Consent_to_Treat_Date] [nvarchar](255) NULL,
	[UDS_Ihs_Elig_Status] [nvarchar](255) NULL,
	[UDS_Tribal_Class] [nvarchar](255) NULL,
	[UDS_Decendancy] [nvarchar](255) NULL,
	[Mothers_Maiden_Name] [nvarchar](255) NULL,
	[Contact_Pref_Desc] [nvarchar](255) NULL,
	[Self_Pay_Ind] [nvarchar](255) NULL,
	[First_Office_Enc_Date] [nvarchar](255) NULL,
	[Last_Office_EncDate] [nvarchar](255) NULL,
	[Next_Office_EncDate] [nvarchar](255) NULL,
	[Financial_Class] [nvarchar](255) NULL,
	[MRN] [nvarchar](255) NULL,
	[Guar_Person_Nbr] [nvarchar](255) NULL,
	[Guar_Name] [nvarchar](255) NULL,
	[Guar_Type] [nvarchar](255) NULL,
	[Contact_Person_Nbr] [nvarchar](255) NULL,
	[Contact_Name] [nvarchar](255) NULL,
	[Head_Hoshld_Person_Nbr] [nvarchar](255) NULL,
	[Head_Hoshld_Name] [nvarchar](255) NULL,
	[User_Defined1] [bit] NULL,
	[User_Defined2] [bit] NULL,
	[User_Defined3] [bit] NULL,
	[User_Defined4] [bit] NULL,
	[User_Defined5] [bit] NULL,
	[User_Defined6] [bit] NULL,
	[User_Defined7] [bit] NULL,
	[User_Defined8] [bit] NULL,
	[Suppress_Billing_Ind] [nvarchar](255) NULL,
	[Last_Print_Stmt_Date] [nvarchar](255) NULL,
	[Prim_Care_Prov] [nvarchar](255) NULL,
	[Referring_Prov] [nvarchar](255) NULL,
	[Rendering_Prov] [nvarchar](255) NULL,
	[Preferred_Prov] [nvarchar](255) NULL
) ON [PRIMARY]

GO


