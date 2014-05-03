--//update the database rows in both fields_master and template_fields
update fields_master set field_length = <value> where field_name = '<field_name>' and table_name = '<table_name>'
update template_fields set field_length = <value> where field_name = '<field_name>' and table_name = '<table_name>'
--//update the column in the table
ALTER TABLE <table_name> ALTER COLUMN <field_name> varchar <value>

------------------------------------------------------------------------------------------------------------------------
--Example:

--//update the database rows in both fields_master and template_fields
--update fields_master set field_length = 1000 where field_name = 'txt_subjdemo' and table_name = 'aggeus_checkout_'
--update template_fields set field_length = 1000 where field_name = 'txt_subjdemo' and table_name = 'aggeus_checkout_'
--//update the column in the table
--ALTER TABLE aggeus_checkout_ ALTER COLUMN txt_subjdemo varchar(1000)
------------------------------------------------------------------------------------------------------------------------