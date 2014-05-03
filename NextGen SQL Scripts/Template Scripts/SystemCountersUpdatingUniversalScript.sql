select 
last_generated from system_counters where counter_type = 'person_nbr'

--update person_nbr with blank padding:
update person
set person_nbr = Replicate(' ',12 - Len(person_nbr)) + person_nbr
/* FOR POST GO LIVE ADDITIONS
update system_counters
set last_generated = 138928, modified_by = -2, modify_timestamp = GetDate()
where system_counters.counter_type = 'person_nbr'
*/

update system_counters
set last_generated = (SELECT Max(Convert(bigint,person_nbr))
FROM person), modified_by = -2, modify_timestamp = GetDate()
where system_counters.counter_type = 'person_nbr'

select last_generated from system_counters 
where counter_type = '0001med_rec'

--when you have crazy stuff going into MRN:
select  convert(int,max(t.MRN)) from
(select case when ISNUMERIC(med_rec_nbr) = 1 then convert(decimal(16,6),med_rec_nbr)
else 0 end as MRN from patient) t


update system_counters
set last_generated = (SELECT Max(Convert(bigint,med_rec_nbr))
FROM patient WHERE practice_id = '0001' and IsNumeric(med_rec_nbr) = 1), 
modified_by = -2, modify_timestamp = GetDate()
where counter_type = '0001med_rec'




update system_counters
set last_generated = IsNull((SELECT Max(Convert(bigint,appt_nbr))
FROM appointments),'0'), modified_by = -2, modify_timestamp = GetDate()
where counter_type = 'appt_nbr'

update system_counters
set last_generated = IsNull((SELECT Max(Convert(bigint,enc_nbr))
FROM patient_encounter WHERE practice_id = '0001'),'0'), 
modified_by = -2, modify_timestamp = GetDate()
where counter_type = '0001encounter'

update system_counters
set last_generated = IsNull((SELECT Max(Convert(bigint,acct_nbr))
FROM accounts WHERE practice_id = '0001'),'0'), 
modified_by = -2, modify_timestamp = GetDate()
where counter_type = '0001account'

--ics_doc_nbr
update system_counters
set last_generated = (SELECT MAX(doc_number) FROM document),
modified_by = -2, modify_timestamp = GETDATE()
WHERE counter_type = 'ics_doc_nbr'

--ics_batch_nbr
UPDATE system_counters
SET last_generated = (SELECT MAX(batch_nbr) FROM batch),
modified_by = -2, modify_timestamp = GETDATE()
WHERE counter_type = 'ics_batch_nbr'


select * from system_counters