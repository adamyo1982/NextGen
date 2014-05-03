DECLARE @Use3YrRule INT, @denom1 INT, @numer1 INT, @UseSupervisorID Char(1)




DECLARE @tmpCountPatEnc TABLE(
person_id UNIQUEIDENTIFIER,
practice_id VARCHAR(04),
rendering_provider_id UNIQUEIDENTIFIER,
enc_count INT,
enc_timestamp DATETIME 

)

DECLARE @tmpHoldTable TABLE(
						person_id UNIQUEIDENTIFIER, 
						sex CHAR(1), 
						date_of_birth VARCHAR(08),
						language VARCHAR(100), 
						race VARCHAR(100), 
						ethnicity VARCHAR(40)
)

declare @tmp_final table (person_id uniqueidentifier, num int)


Set @UseSupervisorID = 'N'

IF @UseSupervisorID = 'Y'
BEGIN

	INSERT INTO @tmpCountPatEnc
	SELECT pe.person_id,
		   pe.practice_id,
		   pe.supervisor_provider_id,
		   Count(DISTINCT pe.enc_id),
		   MAX(enc_timestamp)
	FROM dbo.patient_encounter pe INNER JOIN patient_procedure pp
	ON pe.person_id = pp.person_id
		AND pe.enc_id = pp.enc_id INNER JOIN dbo.ngkbm_custom_dbp_item_dtl_ ncd
	ON pp.cpt4_code_id = ncd.txt_qualifier_2  INNER JOIN location_mstr lm 
	ON pe.location_id = lm.location_id LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ pos
	   ON pp.place_of_service = pos.txt_qualifier_2
	      AND pos.txt_dbpicklist_name = 'MU_POS_EXCLUDE' LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ locex
	   ON lm.location_name = locex.txt_list_item 
	      AND locex.txt_dbpicklist_name = 'Location_Exclusion'
	WHERE (pe.enc_timestamp BETWEEN {d '2013-10-03'} AND DATEADD(second,-1,DateAdd(day,1, {d '2013-12-31'}))) AND
	pe.supervisor_provider_id  = '3336F223-863B-4CE5-87C3-8558DC5EA0FF' AND
	pe.practice_id = '0001' AND
	ncd.txt_dbpicklist_name = 'Visit Codes' AND 
	ncd.txt_qualifier_1 = 'Unique' AND
	pp.delete_ind = 'N' AND
	locex.txt_list_item IS NULL AND
	pos.txt_qualifier_1 IS NULL --exclude certain place of services
	GROUP BY pe.person_id,pe.practice_id,supervisor_provider_id

END

	INSERT INTO @tmpCountPatEnc
	SELECT pe.person_id,
		   pe.practice_id,
		   pe.rendering_provider_id,
		   Count(DISTINCT pe.enc_id),
		   MAX(enc_timestamp)
	FROM dbo.patient_encounter pe INNER JOIN patient_procedure pp
	ON pe.person_id = pp.person_id
		AND pe.enc_id = pp.enc_id INNER JOIN dbo.ngkbm_custom_dbp_item_dtl_ ncd
	ON pp.cpt4_code_id = ncd.txt_qualifier_2  INNER JOIN location_mstr lm 
	ON pe.location_id = lm.location_id LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ pos
	   ON pp.place_of_service = pos.txt_qualifier_2
	      AND pos.txt_dbpicklist_name = 'MU_POS_EXCLUDE' LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ locex
	   ON lm.location_name = locex.txt_list_item 
	      AND locex.txt_dbpicklist_name = 'Location_Exclusion'
	WHERE (pe.enc_timestamp BETWEEN {d '2013-10-03'} AND DATEADD(second,-1,DateAdd(day,1, {d '2013-12-31'}))) AND
	pe.rendering_provider_id = '3336F223-863B-4CE5-87C3-8558DC5EA0FF' AND
	 1 = CASE WHEN @UseSupervisorID = 'Y' AND pe.supervisor_provider_id  IS NULL THEN 1 
		  WHEN @UseSupervisorID = 'N' THEN 1 ELSE 0 END AND
	pe.practice_id = '0001' AND
	ncd.txt_dbpicklist_name = 'Visit Codes' AND 
	ncd.txt_qualifier_1 = 'Unique' AND
	pp.delete_ind = 'N' AND
	locex.txt_list_item IS NULL AND
	pos.txt_qualifier_1 IS NULL --exclude certain place of services
	GROUP BY pe.person_id,pe.practice_id,rendering_provider_id


INSERT INTO @tmpHoldTable
SELECT tpe.person_id, 
	 person.sex, 
	 person.date_of_birth,
	 person.language, 
	 person.race, 
	 person.ethnicity
 FROM   @tmpCountPatEnc tpe  INNER JOIN person person 
 ON tpe.person_id=person.person_id




--SELECT @denom1 = COUNT(DISTINCT person_id)
insert into @tmp_final
select distinct person_id, 0
FROM @tmpHoldTable

--SELECT @numer1 = COUNT(DISTINCT person_id)
update @tmp_final
set num = 1
where person_id in (select person_id
FROM @tmpHoldTable
WHERE ( sex <> '') AND
	( date_of_birth <> '') AND
	( language <> '') AND
	( race <> '') AND
	( ethnicity <> '' ) )
	


select b.last_name + ', ' + b.first_name as [patient_name],
b.date_of_birth,
d.location_name
from @tmp_final a
inner join person b on a.person_id = b.person_id
inner join patient c on b.person_id = c.person_id
inner join location_mstr d on c.mrkt_source_id = d.location_id
where a.num = 0
order by location_name, patient_name 