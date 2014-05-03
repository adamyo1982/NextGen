select distinct pm.description, count(pen.enc_id) from provider_mstr pm
INNER JOIN patient_encounter pen on pm.provider_id = pen.rendering_provider_id
INNER JOIN location_mstr lm on pen.location_id = lm.location_id
Where lm.state = 'SD' and pen.billable_timestamp > '2013-10-03 0:00:00.000' 
group by pm.description 