select * from aggeus_proc_generic_ apg INNER JOIN
patient_encounter pe on pe.enc_id = apg.enc_id INNER JOIN
provider_mstr pm on pm.provider_id = pe.rendering_provider_id
where pe.location_id = 'DD7928A3-63EC-4D95-8AD7-D5B0D8AB93F1' and rendering_provider_id = 'A02D9BBC-56BF-4166-BD46-30A2240407BF' and apg.create_timestamp > '2014-03-04 10:09:11.120'