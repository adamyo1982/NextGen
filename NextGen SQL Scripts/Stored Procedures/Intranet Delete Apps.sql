-- =============================================
-- Author:		Adam Younger
-- Create date: 11/09/2013
-- Description:	Use for Intranet Portal. Values passed from there.
-- =============================================

CREATE procedure [dbo].[aggeus_DeleteAppointments]

@appt_date varchar(8),
@provider_id varchar (max),
@location_id varchar (max)

as

declare @provider as uniqueidentifier
declare @location as uniqueidentifier

set @provider = cast(@provider_id as uniqueidentifier) 
set @location = cast(@location_id as uniqueidentifier)

select a.enc_id , a.appt_id
into #temp
from appointments a
inner join patient_encounter pe on pe.enc_id = a.enc_id
where
a.appt_date = @appt_date
and a.rendering_provider_id = @provider
and a.location_id = @location
and pe.remarks is null

if exists (select * from #temp)
begin
delete from appointments
WHERE appt_id in (SELECT DISTINCT appt_id FROM #temp)

DELETE FROM patient_encounter
WHERE enc_id in (SELECT DISTINCT enc_id FROM #temp)

DELETE FROM encounter_diags
WHERE enc_id in (SELECT DISTINCT enc_id FROM #temp)

DELETE FROM encounter_payer
WHERE enc_id in (SELECT DISTINCT enc_id FROM #temp)

DELETE FROM encounter_payer_cmn
WHERE enc_id in (SELECT DISTINCT enc_id FROM #temp)

DELETE FROM encounter_payer_cmn_qa
WHERE enc_id in (SELECT DISTINCT enc_id FROM #temp)

DELETE FROM appointment_members
Where appt_id in (SELECT DISTINCT appt_id FROM #temp)


end
drop table #temp
GO


