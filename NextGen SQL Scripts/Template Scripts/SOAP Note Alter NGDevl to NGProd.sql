--Subjective
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt1 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subcpt2 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt3 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt4 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt5 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt6 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt7 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_subjcpt8 VARCHAR(1000)

--Objective
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt1 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt2 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt3 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt4 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt5 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt6 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt7 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_objcpt8 VARCHAR(1000)

--Plan
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt1 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt2 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt3 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt4 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt5 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt6 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt7 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_plancpt8 VARCHAR(1000)

--Assessment
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_asscpt1 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt2 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt3 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt4 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt5 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt6 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt7 VARCHAR(1000)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN tzt_asscpt8 VARCHAR(1000)

--Lesion Locations
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt1 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt2 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt3 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt4 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt5 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt6 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt7 VARCHAR(255)
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_lesioncpt8 VARCHAR(255)

--Requested literature for chief complaint
ALTER TABLE aggeus_checkout_fin_ ALTER COLUMN txt_requested VARCHAR(500)

--SOAP Fields
ALTER TABLE aggeus_checkout_ ALTER COLUMN txt_subjective VARCHAR(4000)
ALTER TABLE aggeus_checkout_ ALTER COLUMN txt_objective VARCHAR(4000)
ALTER TABLE aggeus_checkout_ ALTER COLUMN txt_assessment VARCHAR(4000)
ALTER TABLE aggeus_checkout_ ALTER COLUMN txt_plan VARCHAR(4000)

--RUN AFTER
--Subjective
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt1'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subcpt2'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt3'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt4'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt5'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt6'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt7'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_subjcpt8'

--Objective
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt1'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt2'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt3'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt4'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt5'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt6'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt7'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_objcpt8'

--Plan
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt1'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt2'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt3'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt4'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt5'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt6'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt7'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_plancpt8'

--Assessment
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_asscpt1'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt2'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt3'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt4'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt5'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt6'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt7'
UPDATE template_fields SET field_length = '1000' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'tzt_asscpt8'

--Lesion Location
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt1'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt2'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt3'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt4'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt5'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt6'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt7'
UPDATE template_fields SET field_length = '255' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_lesioncpt8'

--Requested chief complaint
UPDATE template_fields SET field_length = '500' WHERE table_name = 'aggeus_checkout_fin_' and template_id = '5708' and field_name = 'txt_requested'

--SOAP FIELDS
UPDATE template_fields SET field_length = '4000' WHERE table_name = 'aggeus_checkout_' and template_id = '5708' and field_name = 'txt_subjective'
UPDATE template_fields SET field_length = '4000' WHERE table_name = 'aggeus_checkout_' and template_id = '5708' and field_name = 'txt_objective'
UPDATE template_fields SET field_length = '4000' WHERE table_name = 'aggeus_checkout_' and template_id = '5708' and field_name = 'txt_assessment'
UPDATE template_fields SET field_length = '4000' WHERE table_name = 'aggeus_checkout_' and template_id = '5708' and field_name = 'txt_plan'