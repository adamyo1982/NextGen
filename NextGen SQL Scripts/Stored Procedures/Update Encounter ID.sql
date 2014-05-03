
 
 
 
-- =============================================
-- Author:		Adam Younger
-- Create date: 12/19/2013
-- Description:	This will take the enc_date field from Procedures template, find a match,
-- and update the enc_id into the appointment tables.
-- =============================================
 
CREATE PROCEDURE [dbo].[aggeus_appt_encounter]
 
@enc_id varchar(36),
@user_id varchar(10),
@enc_date varchar(8),
@pat_id varchar(36),
@prov_id varchar(36),
@practice_id   char(4)
 
AS
 
update      appointments
set enc_id = @enc_id,
modified_by = @user_id,
modify_timestamp = getdate()
where appt_date = @enc_date and person_id = @pat_id and appointments.enc_id is null and rendering_provider_id = @prov_id 
AND practice_id = @practice_id





GO


