  select pe.enc_timestamp AS ENC_DATE,pe.enc_id, p.last_name, p.first_name, pd.create_timestamp AS DATE_ON_MU, convert(datetime, co.txt_fintime) AS DATE_SHOULD_BE, pm.description, co.modify_timestamp from patient_encounter pe INNER JOIN
  person p on pe.person_id = p.person_id INNER JOIN
  provider_mstr pm on pe.rendering_provider_id = pm.provider_id INNER JOIN
  patient_documents pd on pe.enc_id = pd.enc_id LEFT OUTER JOIN
  agg_co_xf_ co on pe.enc_id = co.enc_id
  where pd.create_timestamp > '2013-11-10 23:12:49.033' and pd.create_timestamp < '2013-11-12 00:00:00.033' and txt_fintime is not null and txt_fintime <'20131111' --and description like '%rhodes%'
  order by  txt_fintime, p.last_name--, create_timestamp
  
  update patient_documents set create_timestamp = co.modify_timestamp from patient_encounter pe INNER JOIN
  person p on pe.person_id = p.person_id INNER JOIN
  provider_mstr pm on pe.rendering_provider_id = pm.provider_id INNER JOIN
  patient_documents pd on pe.enc_id = pd.enc_id LEFT OUTER JOIN
  agg_co_xf_ co on pe.enc_id = co.enc_id
  where pd.create_timestamp > '2013-11-10 23:12:49.033' and pd.create_timestamp < '2013-11-12 00:00:00.033' and txt_fintime is not null and txt_fintime <'20131111' --and description like '%rhodes%'

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  select * from patient_documents where enc_id = '2EF2404D-EFBA-407A-8D8B-33D6EDD5B4A1'
  
  
  select * from person where person_id = 'C7B48CC4-88FE-4250-85E1-C530814C06C9'
