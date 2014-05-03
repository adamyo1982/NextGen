 --set stagingtable
 
 select tr.condition, tmx.field_value as 'Subjective' into #tempsub from triggers tr INNER JOIN
 trig_mf_xref tmx on tr.parm2 = tmx.trig_id where tr.template_id = '5708' and field like '%CPT1%' and tmx.field_name like '%txt_subj%'
 
 select tr.condition, tmx.field_value as 'CC'  into #tempcc from triggers tr INNER JOIN
 trig_mf_xref tmx on tr.parm2 = tmx.trig_id where tr.template_id = '5708' and field like '%CPT1%' and tmx.field_name like '%ccs1%'
 
 select tr.condition, tmx.field_value as 'Objective' into #tempobj from triggers tr INNER JOIN
 trig_mf_xref tmx on tr.parm2 = tmx.trig_id where tr.template_id = '5708' and field like '%CPT1%' and tmx.field_name like '%txt_obj%'
 
 select tr.condition, tmx.field_value as 'Assessment' into #tempassess from triggers tr INNER JOIN
 trig_mf_xref tmx on tr.parm2 = tmx.trig_id where tr.template_id = '5708' and field like '%CPT1%' and tmx.field_name like '%txt_ass%'
 
 select tr.condition, tmx.field_value as 'Plann' into #tempplan from triggers tr INNER JOIN
 trig_mf_xref tmx on tr.parm2 = tmx.trig_id where tr.template_id = '5708' and field like '%CPT1%' and tmx.field_name like '%txt_plan%'
 
 select tp.condition, ts.Subjective, tc.CC, tob.Objective, ta.Assessment, tp.Plann into aggeus_cptback from #tempplan tp LEFT OUTER JOIN
 #tempsub ts on ts.condition = tp.condition LEFT OUTER JOIN
 #tempcc tc on tc.condition = tp.condition LEFT OUTER JOIN
 #tempobj tob on tob.condition = tp.condition LEFT OUTER JOIN
 #tempassess ta on ta.condition = tp.condition
 drop table #tempcc 
 drop table #tempplan 
 drop table #tempassess 
 drop table #tempobj 
 drop table #tempsub 

--11720
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11720"' and template_variables.name = '@11720cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11720"' and template_variables.name = '@11720s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11720"' and template_variables.name = '@11720o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11720"' and template_variables.name = '@11720a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11720"' and template_variables.name = '@11720p'


--11721
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11721"' and template_variables.name = '@11721cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11721"' and template_variables.name = '@11721s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11721"' and template_variables.name = '@11721o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11721"' and template_variables.name = '@11721a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "11721"' and template_variables.name = '@11721p'

--11730
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11730"' and template_variables.name = '@11730cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11730"' and template_variables.name = '@11730s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11730"' and template_variables.name = '@11730o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11730"' and template_variables.name = '@11730a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11730"' and template_variables.name = '@11730p'


--11740
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11740"' and template_variables.name = '@11740cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11740"' and template_variables.name = '@11740s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11740"' and template_variables.name = '@11740o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11740"' and template_variables.name = '@11740a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11740"' and template_variables.name = '@11740p'


--11732
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11732"' and template_variables.name = '@11732cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11732"' and template_variables.name = '@11732s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11732"' and template_variables.name = '@11732o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11732"' and template_variables.name = '@11732a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11732"' and template_variables.name = '@11732p'


--11750
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11750"' and template_variables.name = '@11750cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11750"' and template_variables.name = '@11750s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11750"' and template_variables.name = '@11750o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11750"' and template_variables.name = '@11750a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11750"' and template_variables.name = '@11750p'


--11760
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11760"' and template_variables.name = '@11760cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11760"' and template_variables.name = '@11760s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11760"' and template_variables.name = '@11760o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11760"' and template_variables.name = '@11760a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11760"' and template_variables.name = '@11760p'


--11765
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11765"' and template_variables.name = '@11765cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11765"' and template_variables.name = '@11765s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11765"' and template_variables.name = '@11765o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11765"' and template_variables.name = '@11765a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11765"' and template_variables.name = '@11765p'


--17000
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17000"' and template_variables.name = '@17000cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17000"' and template_variables.name = '@17000s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17000"' and template_variables.name = '@17000o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17000"' and template_variables.name = '@17000a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17000"' and template_variables.name = '@17000p'

--17110
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17110"' and template_variables.name = '@17110cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17110"' and template_variables.name = '@17110s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17110"' and template_variables.name = '@17110o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17110"' and template_variables.name = '@17110a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17110"' and template_variables.name = '@17110p'

--17250
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17250"' and template_variables.name = '@17250cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17250"' and template_variables.name = '@17250s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17250"' and template_variables.name = '@17250o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17250"' and template_variables.name = '@17250a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="17250"' and template_variables.name = '@17250p'

--20550
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="20550"' and template_variables.name = '@20550cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="20550"' and template_variables.name = '@20550s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="20550"' and template_variables.name = '@20550o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="20550"' and template_variables.name = '@20550a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="20550"' and template_variables.name = '@20550p'

--20060
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20060"' and template_variables.name = '@20600cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20060"' and template_variables.name = '@20600s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20060"' and template_variables.name = '@20600o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20060"' and template_variables.name = '@20600a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20060"' and template_variables.name = '@20600p'

--20605
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20605"' and template_variables.name = '@20605cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20605"' and template_variables.name = '@20605s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20605"' and template_variables.name = '@20605o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20605"' and template_variables.name = '@20605a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1} = "20605"' and template_variables.name = '@20605p'

--28090
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="28090"' and template_variables.name = '@28090cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="28090"' and template_variables.name = '@28090s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="28090"' and template_variables.name = '@28090o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="28090"' and template_variables.name = '@28090a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="28090"' and template_variables.name = '@28090p'

--29540
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29540"' and template_variables.name = '@29540cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29540"' and template_variables.name = '@29540s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29540"' and template_variables.name = '@29540o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29540"' and template_variables.name = '@29540a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29540"' and template_variables.name = '@29540p'

--29550
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29550"' and template_variables.name = '@29550cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29550"' and template_variables.name = '@29550s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29550"' and template_variables.name = '@29550o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29550"' and template_variables.name = '@29550a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="29550"' and template_variables.name = '@29550p'


--10060
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10060"' and template_variables.name = '@10060cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10060"' and template_variables.name = '@10060s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10060"' and template_variables.name = '@10060o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10060"' and template_variables.name = '@10060a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10060"' and template_variables.name = '@10060p'

--10061
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10061"' and template_variables.name = '@10061cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10061"' and template_variables.name = '@10061s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10061"' and template_variables.name = '@10061o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10061"' and template_variables.name = '@10061a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10061"' and template_variables.name = '@10061p'

--10140
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10140"' and template_variables.name = '@10140cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10140"' and template_variables.name = '@10140s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10140"' and template_variables.name = '@10140o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10140"' and template_variables.name = '@10140a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10140"' and template_variables.name = '@10140p'

--10160
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10160"' and template_variables.name = '@10160cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10160"' and template_variables.name = '@10160s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10160"' and template_variables.name = '@10160o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10160"' and template_variables.name = '@10160a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="10160"' and template_variables.name = '@10160p'

--11042
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11042"' and template_variables.name = '@11042cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11042"' and template_variables.name = '@11042s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11042"' and template_variables.name = '@11042o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11042"' and template_variables.name = '@11042a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11042"' and template_variables.name = '@11042p'

--11043
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11043"' and template_variables.name = '@11043cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11043"' and template_variables.name = '@11043s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11043"' and template_variables.name = '@11043o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11043"' and template_variables.name = '@11043a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11043"' and template_variables.name = '@11043p'

--11045
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11045"' and template_variables.name = '@11045cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11045"' and template_variables.name = '@11045s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11045"' and template_variables.name = '@11045o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11045"' and template_variables.name = '@11045a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11045"' and template_variables.name = '@11045p'

--11046
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11046"' and template_variables.name = '@11046cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11046"' and template_variables.name = '@11046s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11046"' and template_variables.name = '@11046o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11046"' and template_variables.name = '@11046a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11046"' and template_variables.name = '@11046p'

--11055
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11055"' and template_variables.name = '@11055cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11055"' and template_variables.name = '@11055s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11055"' and template_variables.name = '@11055o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11055"' and template_variables.name = '@11055a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11055"' and template_variables.name = '@11055p'

--11056
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11056"' and template_variables.name = '@11056cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11056"' and template_variables.name = '@11056s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11056"' and template_variables.name = '@11056o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11056"' and template_variables.name = '@11056a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11056"' and template_variables.name = '@11056p'

--11057
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11057"' and template_variables.name = '@11057cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11057"' and template_variables.name = '@11057s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11057"' and template_variables.name = '@11057o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11057"' and template_variables.name = '@11057a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="11057"' and template_variables.name = '@11057p'

--64450
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64450"' and template_variables.name = '@64450cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64450"' and template_variables.name = '@64450s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64450"' and template_variables.name = '@64450o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64450"' and template_variables.name = '@64450a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64450"' and template_variables.name = '@64450p'

--64455
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64455"' and template_variables.name = '@64455cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64455"' and template_variables.name = '@64455s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64455"' and template_variables.name = '@64455o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64455"' and template_variables.name = '@64455a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64455"' and template_variables.name = '@64455p'

--64632
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64632"' and template_variables.name = '@64632cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64632"' and template_variables.name = '@64632s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64632"' and template_variables.name = '@64632o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64632"' and template_variables.name = '@64632a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64632"' and template_variables.name = '@64632p'

--64726
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64726"' and template_variables.name = '@64726cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64726"' and template_variables.name = '@64726s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64726"' and template_variables.name = '@64726o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64726"' and template_variables.name = '@64726a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="64726"' and template_variables.name = '@64726p'

--76000
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76000"' and template_variables.name = '@76000cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76000"' and template_variables.name = '@76000s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76000"' and template_variables.name = '@76000o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76000"' and template_variables.name = '@76000a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76000"' and template_variables.name = '@76000p'

--76882
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76882"' and template_variables.name = '@76882cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76882"' and template_variables.name = '@76882s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76882"' and template_variables.name = '@76882o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76882"' and template_variables.name = '@76882a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76882"' and template_variables.name = '@76882p'

--76942
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76942"' and template_variables.name = '@76942cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76942"' and template_variables.name = '@76942s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76942"' and template_variables.name = '@76942o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76942"' and template_variables.name = '@76942a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76942"' and template_variables.name = '@76942p'

--77002
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="77002"' and template_variables.name = '@77002cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="77002"' and template_variables.name = '@77002s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="77002"' and template_variables.name = '@77002o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="77002"' and template_variables.name = '@77002a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="77002"' and template_variables.name = '@77002p'

--93923
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93923"' and template_variables.name = '@93923cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93923"' and template_variables.name = '@93923s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93923"' and template_variables.name = '@93923o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93923"' and template_variables.name = '@93923a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93923"' and template_variables.name = '@93923p'

--93922
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93922"' and template_variables.name = '@93922cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93922"' and template_variables.name = '@93922s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93922"' and template_variables.name = '@93922o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93922"' and template_variables.name = '@93922a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="93922"' and template_variables.name = '@93922p'

--97597
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97597"' and template_variables.name = '@97597cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97597"' and template_variables.name = '@97597s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97597"' and template_variables.name = '@97597o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97597"' and template_variables.name = '@97597a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97597"' and template_variables.name = '@97597p'

--97598
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97598"' and template_variables.name = '@97598cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97598"' and template_variables.name = '@97598s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97598"' and template_variables.name = '@97598o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97598"' and template_variables.name = '@97598a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="97598"' and template_variables.name = '@97598p'

--76881
update template_variables set default_value = acpt.cc from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76881"' and template_variables.name = '@76881cc'
update template_variables set default_value = acpt.subjective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76881"' and template_variables.name = '@76881s'
update template_variables set default_value = acpt.objective from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76881"' and template_variables.name = '@76881o'
update template_variables set default_value = acpt.assessment from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76881"' and template_variables.name = '@76881a'
update template_variables set default_value = acpt.plann from aggeus_cptback acpt 
where template_variables.variable_scope = 'System' and template_variables.var_comment = 'aggeus' and acpt.condition = '{aggeus_proc_generic_.txt_CPT1}="76881"' and template_variables.name = '@76881p'
