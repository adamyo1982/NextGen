select * from provider_mstr where description like '%lee%'

select pe.enc_nbr, (p.last_name + ', ' + p.first_name) AS PATIENT, lm.location_name, pe.billable_timestamp, (um.first_name + ', ' + um.last_name) as NAME, convert(date, pe.create_timestamp) as DATE_CREATED from patient_encounter pe
INNER JOIN location_mstr lm on pe.location_id = lm.location_id 
INNER JOIN person p on pe.person_id = p.person_id 
INNER JOIN user_mstr um on pe.created_by = um.user_id 
where pe.rendering_provider_id = '8D113EDC-E4A1-40BD-89D7-229A66F2FF26' and billable_ind = 'Y' order by billable_timestamp