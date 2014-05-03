--select * from person_ud where person_id = 'EE5113DE-1ED5-4281-ABA0-D2E3C6EAC2F1'


----AAAB52C4-E7CC-4DD9-B447-E07EA1600CDB  YES

----C9DE4763-59B2-4647-98BC-6128DEC34340 NO

--select * from person_ud where ud_demo7_id = '9084D790-5D94-417F-8D31-DB295AA0768C' -- Consent on file yes

--select * from person_ud where ud_demo11_id = 'AAAB52C4-E7CC-4DD9-B447-E07EA1600CDB' -- private pay yes


select (p.last_name + ', ' + p.first_name) as 'Patient Name', lm.location_name, person_ud.* from person_ud INNER JOIN 
patient pa on person_ud.person_id = pa.person_id INNER JOIN
person p on p.person_id = pa.person_id INNER JOIN
location_mstr lm on pa.mrkt_source_id = lm.location_id INNER JOIN
patient_status ps on pa.person_id = ps.person_id 
where ud_demo7_id = '9084D790-5D94-417F-8D31-DB295AA0768C' and ud_demo11_id != 'AAAB52C4-E7CC-4DD9-B447-E07EA1600CDB' --and person_id = 'EE5113DE-1ED5-4281-ABA0-D2E3C6EAC2F1'
and lm.state in ('KS', 'MO') and ps.patient_status_id != 'B26FEAA5-B647-4B52-9A1B-BA1F91F61A48'
order by location_name, 'Patient Name'

--select * from patient_status 
