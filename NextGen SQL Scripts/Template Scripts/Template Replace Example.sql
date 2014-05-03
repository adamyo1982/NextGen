update template_fields set table_name = 'aggeus_squares_20605_SUM_' where table_name = 'aggeus_squares_11721_' and template_id = '5690'
 
  UPDATE
    triggers
SET
    field = Replace(field, 'aggeus_squares_11721_', 'aggeus_squares_20605_SUM_')
WHERE
   template_id = '5690'
   
     UPDATE
    triggers
SET
    condition = Replace(condition, 'aggeus_squares_11721_', 'aggeus_squares_20605_SUM_')
WHERE
   template_id = '5690'
   
        UPDATE
    trig_mf_xref
SET
    field_name = Replace(field_name, 'aggeus_squares_11721_', 'aggeus_squares_20605_SUM_')
WHERE
   template_id = '5690'