--select * from templates where template_name like '%checkout_fin%'

--select tmx.*, tr.* from triggers tr INNER JOIN
--trig_mf_xref tmx on tmx.trig_id = tr.parm2 where tr.template_id = '5694' and tr.field like '%CPT2%'

-----------------------------------------------------------------------------------
--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT2')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT2'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt2')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT2'
-----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT3')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT3'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt3')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT3'
----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT4')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT4'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt4')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT4'
----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT5')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT5'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt5')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT5'
----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT6')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT6'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt6')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT6'
----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT7')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT7'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt7')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT7'
----------------------------------------------------------------------------------

--field value (what gets assigned)
update trig_mf_xref 
set field_value =  replace(field_value, 'CPT1', 'CPT8')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT8'

--field_name (Where it assigns to)
update trig_mf_xref 
set field_name =  replace(field_name, 'cpt1', 'cpt8')
from trig_mf_xref tmx INNER JOIN
triggers tr on tmx.trig_id = tr.parm2 
where tr.template_id = '5694' and tr.field = 'aggeus_proc_generic_.txt_CPT8'
----------------------------------------------------------------------------------


