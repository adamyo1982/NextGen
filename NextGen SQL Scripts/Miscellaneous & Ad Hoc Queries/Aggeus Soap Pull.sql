SELECT Distinct 
                      TOP (100) PERCENT dbo.person.last_name, dbo.person.first_name, dbo.location_mstr.location_name, dbo.aggeus_checkout_.txt_subjective, 
                      dbo.aggeus_checkout_.txt_plan, dbo.aggeus_checkout_.txt_objective, dbo.aggeus_checkout_.txt_assessment, dbo.aggeus_checkout_.txt_lesionlocation, 
                      dbo.aggeus_pehold_.txt_areatest, dbo.aggeus_pehold_.txt_integ, dbo.aggeus_pehold_.txt_musculo, dbo.aggeus_pehold_.txt_nailchar, 
                      dbo.aggeus_pehold_.txt_neuro, dbo.aggeus_pehold_.txt_vasc, dbo.provider_mstr.description, CONVERT(datetime, dbo.person.date_of_birth) AS DOB, 
                      dbo.provider_mstr.last_name AS Prov_last, dbo.provider_mstr.first_name AS Prov_first, dbo.aggeus_checkout_xtrafields_.txt_chiefcomplaint, 
                      dbo.aggeus_patient_meds.medslistt, dbo.aggeus_histories_test_.pmh_txt, dbo.aggeus_histories_test_.sh_txt, dbo.aggeus_proc_generic_.txt_CPT1 AS CPT1, 
                      dbo.aggeus_proc_generic_.txt_CPT1_Rsum AS CPTLOC1, dbo.aggeus_proc_generic_.txt_CPT2 AS CPT2, dbo.aggeus_proc_generic_.txt_CPT2_Rsum AS CPTLOC2, 
                      dbo.aggeus_proc_generic_.txt_CPT3 AS CPT3, dbo.aggeus_proc_generic_.txt_CPT3_Rsum AS CPTLOC3, dbo.aggeus_proc_generic_.txt_CPT4 AS CPT4, 
                      dbo.aggeus_proc_generic_.txt_CPT4_Rsum AS CPTLOC4, dbo.aggeus_proc_generic_.txt_CPT5 AS CPT5, dbo.aggeus_proc_generic_.txt_CPT5_Rsum AS CPTLOC5, 
                      dbo.aggeus_proc_generic_.txt_CPT6 AS CPT6, dbo.aggeus_proc_generic_.txt_CPT6_Rsum AS CPTLOC6, dbo.aggeus_proc_generic_.txt_CPT7 AS CPT7, 
                      dbo.aggeus_proc_generic_.txt_CPT7_Rsum AS CPTLOC7, dbo.aggeus_proc_generic_.txt_CPT8 AS CPT8, dbo.aggeus_proc_generic_.txt_CPT8_Rsum AS CPTLOC8, 
                      dbo.master_im_.chk_medreviewed, ISNULL(CONVERT(datetime, CONVERT(varchar, dbo.patient_encounter.billable_timestamp, 101)), 0) AS App_Date, 
                      dbo.aggeus_checkout_.txt_lesionpop, dbo.aggeus_proc_generic_.txt_EM, dbo.patient_encounter.practice_id, dbo.aggeus_patient_allergy.allergylist, 
                      dbo.practice.practice_name, dbo.provider_mstr.provider_id, dbo.aggeus_pxsh.PSXH, dbo.person.person_id, dbo.agg_co_xf_.txt_amend, 
                      dbo.agg_co_xf_.txt_amendtime, dbo.agg_co_xf_.txt_fintime, dbo.aggeus_checkout_fin_.chkbx_finalize, dbo.aggeus_co_pxf_.txt_newevalp
FROM         dbo.patient_encounter INNER JOIN
                      dbo.person ON dbo.person.person_id = dbo.patient_encounter.person_id INNER JOIN
                      dbo.patient ON dbo.person.person_id = dbo.patient.person_id INNER JOIN
                      dbo.location_mstr ON dbo.location_mstr.location_id = dbo.patient_encounter.location_id INNER JOIN
                      dbo.provider_mstr ON dbo.provider_mstr.provider_id = dbo.patient_encounter.rendering_provider_id INNER JOIN
                      dbo.aggeus_proc_generic_ ON dbo.aggeus_proc_generic_.enc_id = dbo.patient_encounter.enc_id INNER JOIN
                      dbo.practice ON dbo.patient_encounter.practice_id = dbo.practice.practice_id LEFT OUTER JOIN
                      dbo.aggeus_pxsh ON dbo.person.person_id =   dbo.aggeus_pxsh.person_id LEFT OUTER JOIN
                      dbo.aggeus_patient_allergy ON dbo.person.person_id = dbo.aggeus_patient_allergy.person_id LEFT OUTER JOIN
                      dbo.aggeus_histories_test_ ON dbo.aggeus_histories_test_.enc_id = dbo.aggeus_proc_generic_.enc_id LEFT OUTER JOIN
                      dbo.aggeus_pehold_ ON dbo.aggeus_pehold_.enc_id = dbo.patient_encounter.enc_id LEFT OUTER JOIN
                      dbo.aggeus_checkout_ ON dbo.aggeus_checkout_.enc_id = dbo.aggeus_pehold_.enc_id LEFT OUTER JOIN
                      dbo.master_im_ ON dbo.master_im_.enc_id = dbo.aggeus_checkout_.enc_id LEFT OUTER JOIN
                      dbo.aggeus_patient_meds ON dbo.person.person_id = dbo.aggeus_patient_meds.person_id LEFT OUTER JOIN
                      dbo.aggeus_checkout_xtrafields_ ON dbo.aggeus_checkout_.enc_id = dbo.aggeus_checkout_xtrafields_.enc_id LEFT OUTER JOIN
                      dbo.agg_co_xf_ ON dbo.aggeus_checkout_.enc_id = dbo.agg_co_xf_.enc_id LEFT OUTER JOIN
                      dbo.aggeus_checkout_fin_ ON dbo.aggeus_checkout_.enc_id = dbo.aggeus_checkout_fin_.enc_id LEFT OUTER JOIN
                      dbo.aggeus_co_pxf_ ON dbo.aggeus_checkout_.enc_id = dbo.aggeus_co_pxf_.enc_id
where txt_subjective is not null
ORDER BY dbo.person.last_name
