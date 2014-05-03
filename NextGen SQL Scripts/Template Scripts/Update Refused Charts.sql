select * from aggeus_proc_generic_justin_ where p_refuse = '1'

update patient_encounter set remarks = 'Refused' from aggeus_proc_generic_justin_ apg where patient_encounter.enc_id = apg.enc_id and apg.p_refuse = '1'