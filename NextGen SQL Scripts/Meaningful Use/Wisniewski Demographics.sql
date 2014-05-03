alter table agg_wisniewski_demo add PID nvarchar(36)
alter table agg_wisniewski_demo add LID nvarchar(36)
alter table agg_wisniewski_demo add RID nvarchar(36)
alter table agg_wisniewski_demo add EID nvarchar(36)


select (p.last_name + ', ' + p.first_name)  as p_name, person_id as p_id
INTO #demowis 
from person p 

update agg_wisniewski_demo set PID = #demowis.p_id from #demowis
where #demowis.p_name = agg_wisniewski_demo.patient_name

DROP table #demowis

update agg_wisniewski_demo set ethnicity = 'Declined/Undetermined' where ethnicity = 'Unknown / Not Reported'

update agg_wisniewski_demo set LID = ml.mstr_list_item_id from mstr_lists ml
where agg_wisniewski_demo.language = ml.mstr_list_item_desc and ml.mstr_list_type = 'language'

update agg_wisniewski_demo set RID = ml.mstr_list_item_id from mstr_lists ml
where agg_wisniewski_demo.race = ml.mstr_list_item_desc and ml.mstr_list_type = 'Race'

update agg_wisniewski_demo set EID = ml.mstr_list_item_id from mstr_lists ml
where agg_wisniewski_demo.ethnicity = ml.mstr_list_item_desc and ml.mstr_list_type = 'ethnicity'

update person set race = aw.race from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.race is not null
update person set race_id = aw.RID from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.race is not null

update person set language = aw.language from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.language is not null
update person set language_id = aw.LID from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.language is not null

update person set ethnicity = aw.ethnicity from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.ethnicity is not null
update person set ethnicity_id = aw.EID from agg_wisniewski_demo aw
where person.person_id = aw.PID and aw.ethnicity is not null
