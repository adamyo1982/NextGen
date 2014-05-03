select distinct pe.enc_nbr as 'Encounter Number', (p.last_name+', '+ p.first_name) as 'Patient', aq.systemic_cond as 'Diagnosis', (SUBSTRING ( ap.appt_date , 5 , 2 ) + '/' + SUBSTRING ( ap.appt_date , 7 , 2 )+'/'+SUBSTRING ( ap.appt_date , 1 , 4 )) as 'Appointment Date', min(aht.mdldos) as 'Last Date of Service', pm.description  as 'Rendering Provider' from aggeus_qmod_ aq INNER JOIN
person p on aq.person_id = p.person_id INNER JOIN
aggeus_histories_Test_ aht on p.person_id = aht.person_id INNER JOIN
patient_encounter pe on aq.enc_id = pe.enc_id INNER JOIN
appointments ap on pe.enc_id = ap.enc_id INNER JOIN
patient pa on p.person_id = pa.person_id LEFT OUTER JOIN
provider_mstr pm on pa.referring_prov_id = pm.provider_id 
where [systemic_cond] = '585.6'
group by pe.enc_nbr, p.last_name, p.first_name, aq.systemic_cond, ap.appt_date, pm.description
order by 'Patient'



--SELECT (SUBSTRING ( ap.appt_date , 1 , 4 ) + '/' + SUBSTRING ( ap.appt_date , 5 , 2 ) + '/' + SUBSTRING ( ap.appt_date , 7 , 2 )