select count(pe.enc_id) as total, 
--datename(month, convert(date, pe.enc_timestamp)) as encMonth, 
year(convert(date, pe.enc_timestamp)) as billedYear, 
lm.location_name, 
lm.state,
convert(date,lm.create_timestamp) as created,
lm.location_id
into #dopplers
from patient_encounter pe
--inner join patient p on p.person_id = pe.person_id
inner join location_mstr lm on lm.location_id = pe.location_id
inner join patient_procedure pp on pp.enc_id = pe.enc_id
--inner join patient_status ps on ps.person_id = pe.person_id
where pp.service_item_id in ('93922','93923')
--ADDED THIS PART for only billable encounters to reduce chart abstractions.  Added time parameters.---
and pe.enc_timestamp > '2013-10-01 00:00:00.000' and pe.enc_timestamp < '2013-10-31 00:00:00.000'
and pe.enc_status in('B','H')
-------------------------------------------------------------------------------------------------------
--and pe.practice_id = case lm.state  


--when 'mn' then '0008'
--when 'ok' then '0002'
--when 'sd' then '0010'
--else '0001' end
group by lm.location_name, 
--datename(month, convert(date, pe.enc_timestamp)), 
year(convert(date, pe.enc_timestamp)), 
lm.state,
convert(date,lm.create_timestamp),
lm.location_id
order by lm.state, 
lm.location_name, 
--datename(month, convert(date, pe.enc_timestamp)), 
year(convert(date, pe.enc_timestamp)) 

select count( pe.enc_id) as total, 
--datename(month, convert(date, pe.enc_timestamp)) as encMonth, 
year(convert(date, pe.enc_timestamp)) as billedYear, 
lm.location_name, 
lm.state,
convert(date,lm.create_timestamp) as created,
lm.location_id
into #seen
from patient_encounter pe
--inner join patient p on p.person_id = pe.person_id
inner join location_mstr lm on lm.location_id = pe.location_id
--inner join patient_procedure pp on pp.enc_id = pe.enc_id
--ADDED JOIN to provider for DPM(Podiatry)
inner join provider_mstr pm on pe.rendering_provider_id = pm.provider_id
--inner join patient_status ps on ps.person_id = pe.person_id
--where pp.service_item_id in ('93922','93923')
where 
--ADDED THIS PART for only billable, time parameters, and only DPM (Podiatry)--------------------------------
pe.enc_timestamp > '2013-10-01 00:00:00.000' and pe.enc_timestamp < '2013-10-31 00:00:00.000' and
pe.enc_status in ('B','H') and
pm.description like '%DPM%' --and
-------------------------------------------------------------------------------------------------------------
-- pe.practice_id = case lm.state  

--when 'mn' then '0008'
--when 'ok' then '0002'
--when 'sd' then '0010'
--else '0001' end
group by lm.location_name, 
--datename(month, convert(date, pe.enc_timestamp)), 
year(convert(date, pe.enc_timestamp)), 
lm.state,
convert(date,lm.create_timestamp),
lm.location_id
order by lm.state, 
lm.location_name, 
--datename(month, convert(date, pe.enc_timestamp)), 
year(convert(date, pe.enc_timestamp)) 

select (s.total - isnull(d.total,0)) as totalSeen, s.location_name, s.billedYear, s.state, s.created
from #seen s
left outer join #dopplers d on d.location_id = s.location_id and d.billedYear = s.billedYear
--ADDED State parameter---------
--where s.state = 'OK'
--group by s.location_name, s.billedYear, s.state

drop table #seen
drop table #dopplers
