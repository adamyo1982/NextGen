
-- =============================================
-- Author:		Adam Younger
-- Create date: 12/19/2013
-- Description:	Sets enc_date in aggeus_proc_generic
--DEVELOPER NOTE: Need to merge this with appt_enconuter at some point.
-- =============================================




CREATE PROCEDURE [dbo].[aggeus_billdate]
	@enterprise_id   char(5),
	@practice_id   char(4),
	@person_id   varchar(36),
	@enc_id varchar(36),
	@b_date_formatted varchar(12) OUTPUT
AS

DECLARE @dateNextGen varchar(12)

SELECT @dateNextGen = CONVERT( varchar(12), (
SELECT billable_timestamp FROM patient_encounter WHERE enterprise_id = @enterprise_id AND practice_id = @practice_id AND person_id = @person_id AND enc_id = @enc_id
),112)

SELECT @b_date_formatted = SUBSTRING ( @dateNextGen , 1 , 4 ) + 

		         + SUBSTRING ( @dateNextGen , 5 , 2 ) + 

		         + SUBSTRING ( @dateNextGen , 7 , 2 )



GO


