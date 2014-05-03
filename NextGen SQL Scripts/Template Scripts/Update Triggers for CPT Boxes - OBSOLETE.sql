--CPT1
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt1')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT1_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT1_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT1_Rsum%'

--CPT2
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt2')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT2_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT2_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT2_Rsum%'

--CPT3
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt3')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT3_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT3_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT3_Rsum%'

--CPT4
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt4')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT4_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT4_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT4_Rsum%'

--CPT5
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt5')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT5_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT5_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT5_Rsum%'

--CPT6
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt6')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT6_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT6_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT6_Rsum%'

--CPT7
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt7')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT7_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT7_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT7_Rsum%'

--CPT8
update trig_mf_xref set field_name = replace(field_name, 'aggeus_checkout_.txt_lesionlocation', 'aggeus_checkout_fin_.txt_lesioncpt8')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT8_Rsum%'

update trig_mf_xref set field_value = replace(field_value, 'aggeus_checkout_.txt_lesionlocation', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT8_Rsum%'

update trig_mf_xref set field_value = replace(field_value, '{} + " " +', '')
where template_id = '5708' and field_value like '%aggeus_proc_generic_.txt_CPT8_Rsum%'

