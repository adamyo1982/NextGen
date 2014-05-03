select lm.location_id, nh.nursinghomename, nh.state, nh.numberOfCertifiedBeds, count(distinct ps.person_id) as [Number_of_Pats] into #tempnumbers from nursinghomes nh
INNER JOIN [10.1.100.144].[ngprod].[dbo].location_mstr lm on nh.nursinghomeguid = lm.location_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient pa on lm.location_id = pa.mrkt_source_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient_status ps on pa.person_id = ps.person_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient_status_mstr psm on psm.patient_status_id = ps.patient_status_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].person_ud pu on pu.person_id = pa.person_id  
--INNER JOIN [10.1.100.144].[ngprod].[dbo].appointments ap on ap.location_id = nh.nursingHomeGUID
where psm.description = 'Active' and nh.aggeusFacility = '1' 
group by nh.nursingHomeName, nh.state, nh.numberOfCertifiedBeds, lm.location_id 
order by nursinghomename, nh.state 

select lm.location_id, nh.nursinghomename, nh.state, nh.numberOfCertifiedBeds, count(distinct ps.person_id) as [Number_of_Pats_Consent] into #tempnumbersconsent from nursinghomes nh
INNER JOIN [10.1.100.144].[ngprod].[dbo].location_mstr lm on nh.nursinghomeguid = lm.location_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient pa on lm.location_id = pa.mrkt_source_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient_status ps on pa.person_id = ps.person_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].patient_status_mstr psm on psm.patient_status_id = ps.patient_status_id
INNER JOIN [10.1.100.144].[ngprod].[dbo].person_ud pu on pu.person_id = pa.person_id  
--INNER JOIN [10.1.100.144].[ngprod].[dbo].appointments ap on ap.location_id = nh.nursingHomeGUID
where psm.description = 'Active' and nh.aggeusFacility = '1' and pu.ud_demo1_id = '9136D78D-5B56-447C-AC95-715F8F1FBA08'
group by nh.nursingHomeName, nh.state, nh.numberOfCertifiedBeds, lm.location_id 
order by nursinghomename, nh.state 

--into #tempmaxdatecount 

--(count(distinct ps.person_id)/nh.numberofcertifiedbeds) as '%'

select distinct ap.location_id, max(ap.appt_date) as [LDOS] into #tempmaxdate from [10.1.100.144].[ngprod].[dbo].appointments ap 
group by location_id

select distinct ap.location_id, (ap.appt_date) as [CLDOS], count(distinct person_id) as [LDOSCOUNT] into #tempmaxdatecount from [10.1.100.144].[ngprod].[dbo].appointments ap 
group by location_id, ap.appt_date

select tn.nursinghomename as 'Facility', tn.state as 'State', tn.numberOfCertifiedBeds as 'Certified Beds', tn.Number_of_Pats as '# of Active Pats', tnc.Number_of_Pats_Consent as '# with Consents', (SUBSTRING ( tm.[LDOS], 5 , 2 ) +'/'+ SUBSTRING ( tm.[LDOS] , 7 , 2 )+'/'+SUBSTRING (tm.[LDOS] , 1 , 4 )) as 'LDOS', tmdc.[LDOSCOUNT] as '# Patients LDOS' from #tempnumbers tn
LEFT OUTER JOIN #tempmaxdate tm on tn.location_id = tm.location_id
LEFT OUTER JOIN #tempnumbersconsent tnc on tn.location_id = tnc.location_id
LEFT OUTER JOIN #tempmaxdatecount tmdc on tm.location_id = tmdc.location_id and tm.LDOS = tmdc.CLDOS
order by tn.state, tn.nursingHomeName


drop table #tempnumbers
drop table #tempmaxdate 
drop table #tempnumbersconsent
drop table #tempmaxdatecount

--SUBSTRING ( tm.[LDOS] , 1 , 4 )+ SUBSTRING ( tm.[LDOS], 5 , 2 ) + SUBSTRING ( tm.[LDOS] , 7 , 2 )
