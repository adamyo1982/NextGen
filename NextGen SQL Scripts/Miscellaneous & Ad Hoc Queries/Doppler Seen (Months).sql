select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)/6) AS [6_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #temp6mo from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20130805' and '20140205')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [August_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempaug from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20130801' and '20130831')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [September_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempsep from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20130901' and '20130930')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [October_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempoct from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20131001' and '20131031')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [November_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempnov from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20131101' and '20131130') and pp.source_product_id = 'EPM'
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S')
group by pm.description
order by description


select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [December_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempdec from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20131201' and '20131231')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [Jan_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempjan from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '2014010' and '20140131')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select distinct pm.description, Count(distinct pp.service_date) AS '# of Visits', (COUNT(distinct pp.enc_Id)) AS [Feb_mo_enc], ((COUNT(distinct pp.enc_id)/(COUNT(DISTINCT pp.service_date)))) AS 'Avg' into #tempfeb from patient_procedure pp INNER JOIN
provider_mstr pm on pp.provider_id = pm.provider_id WHERE pp.cpt4_code_id  in ('93922', '93923') and pm.taxonomy_id = '20238A91-27B6-4318-9FA0-8D5DDB920818' and (pp.service_date between '20140201' and '20140228')
and pm.description not in ('Barsky DPM, Yelana', 'Casteel DPM, Catherine A', 'Holets DPM, Heidi A', 'Horak DPM, Timothy Todd', 'Melnick DPM, Lorry Allen', 'Miceli DPM, Giuseppe S') and pp.source_product_id = 'EPM'
group by pm.description
order by description

select  t6.description, ta.August_mo_enc as 'August Patients Seen', ts.September_mo_enc as 'September Patients Seen', toc.October_mo_enc as 'October Patients Seen', tn.November_mo_enc as 'November Patients Seen', td.December_mo_enc as 'December Patients Seen', tj.Jan_mo_enc as 'January Patients Seen', tb.Feb_mo_enc as 'February Patients Seen' from #temp6mo t6 LEFT OUTER JOIN 
#tempdec td on t6.description = td.description LEFT OUTER JOIN
#tempjan tj on t6.description = tj.description LEFT OUTER JOIN
#tempfeb tb on t6.description = tb.description LEFT OUTER JOIN
#tempnov tn on t6.description = tn.description LEFT OUTER JOIN
#tempoct toc on t6.description = toc.description LEFT OUTER JOIN
#tempsep ts on t6.description = ts.description LEFT OUTER JOIN
#tempaug ta on t6.description = ta.description 

drop table #temp6mo
drop table #tempdec
drop table #tempjan 
drop table #tempfeb
drop table #tempnov
drop table #tempoct
drop table #tempsep
drop table #tempaug
