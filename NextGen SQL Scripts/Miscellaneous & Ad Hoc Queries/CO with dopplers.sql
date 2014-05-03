select distinct p.last_name, p.first_name, p.date_of_birth, p.ssn, person_Payer.payer_name, def_cob,  case when exists ( select patient_procedure.person_id from patient_procedure where pp.service_item_id = '93922') then 'Yes' end as [Dop_done] into #tempdop from person_payer INNER JOIN
person p on person_payer.person_id = p.person_id INNER JOIN
patient_status ps on person_payer.person_id = ps.person_id INNER JOIN
patient_status_mstr psm on ps.patient_status_id = psm.patient_status_id INNER JOIN
patient_location_demographic pld on p.person_id = pld.person_id LEFT OUTER JOIN
patient_procedure pp on p.person_id = pp.person_id
where def_cob = '1' and payer_name like '%medicaid%' and psm.description = 'Active' --and person_payer.person_id not in (select person_payer.person_id from person_payer where def_cob != '1')
and pld.state = 'CO'


select distinct p.last_name, p.first_name, p.date_of_birth, p.ssn, person_Payer.payer_name, def_cob into #tempover from person_payer INNER JOIN
person p on person_payer.person_id = p.person_id INNER JOIN
patient_status ps on person_payer.person_id = ps.person_id INNER JOIN
patient_status_mstr psm on ps.patient_status_id = psm.patient_status_id INNER JOIN
patient_location_demographic pld on p.person_id = pld.person_id 
where def_cob = '1' and payer_name like '%medicaid%' and psm.description = 'Active' --and person_payer.person_id not in (select person_payer.person_id from person_payer where def_cob != '1')
and pld.state = 'CO'

select tov.*, td.Dop_done from #tempover tov left outer join
#tempdop td on tov.ssn = td.ssn where td.Dop_done = 'Yes'


drop table #tempdop
drop table #tempover