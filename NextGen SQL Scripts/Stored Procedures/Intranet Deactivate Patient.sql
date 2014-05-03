USE [NGProd]
GO

/****** Object:  StoredProcedure [dbo].[aggeus_Deactivate_Patient]    Script Date: 05/03/2014 12:40:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jeff Gilleland
-- Create date: 3/27/2014
-- Description: Patient Deactivation
-- =============================================
CREATE PROCEDURE [dbo].[aggeus_Deactivate_Patient] 
	@username varchar(50),
	@patientID varchar(36),
	@reason varchar(36)

AS
BEGIN

declare @userID int
set @userID = (select user_id from user_mstr where login_id = @username)
--Revision: AY - incorrect parameters, corrected p_status_id
update patient_status set patient_status_id = 'F6D8453E-B4A5-46A5-BD11-75AF3910E8B7',
patient_status_rsn_chng_id = @reason,
modified_by = @userID,
modify_timestamp = Getdate()
where person_id = @patientID

END

GO


