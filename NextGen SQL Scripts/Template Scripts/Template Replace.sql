--To find the current template name and ID: Please realize that you need to add in a ‘ _ ‘ at the end of the name.

 select * from templates where template_name = 'NEW TEMPLATE NAME'

 --Once you grab the template_id and template_name fields, commence putting in the appropriate values.

  update template_fields set table_name = 'NEW TEMPLATE NAME' where table_name = 'OLD TEMPLATE NAME' and template_id = 'NEW TEMPLATE ID'
  
  UPDATE
    triggers
SET
    field = Replace(field, 'OLD TEMPLATE NAME', 'NEW TEMPLATE NAME')
WHERE
   template_id = 'NEW TEMPLATE ID'
   
     UPDATE
    triggers
SET
    condition = Replace(condition, 'OLD TEMPLATE NAME', 'NEW TEMPLATE NAME')
WHERE
   template_id = 'NEW TEMPLATE ID'
   
  
  update template_fields set table_name = 'aggeus_pehold_' where table_name = 'aggeus_soap22_' and template_id = '5703'
  
  UPDATE
    triggers
SET
    field = Replace(field, 'aggeus_soap22_', 'aggeus_pehold_')
WHERE
   template_id = 5703
   
     UPDATE
    triggers
SET
    condition = Replace(condition, 'aggeus_soap22_', 'aggeus_pehold_')
WHERE
   template_id = 5703
