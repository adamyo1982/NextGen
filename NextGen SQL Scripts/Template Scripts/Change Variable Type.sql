/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [template_id]
      ,[name]
      ,[type]
      ,[variable_scope]
      ,[default_value]
      ,[style]
      ,[var_comment]
  FROM [NGDevl].[dbo].[template_variables]
  where variable_scope = 'system' and type = 'Numeric'and name like '%@v%'
  
  update template_variables --set template_id = '0'
  set variable_scope = 'Patient'
  where variable_scope = 'system' and type = 'Numeric'and name like '@v%'