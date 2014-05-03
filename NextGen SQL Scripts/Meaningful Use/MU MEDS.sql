DECLARE @enterprise_chart CHAR(1), @denom1 INT, @numer1 INT, @enterprise_id varchar(06), @UseSupervisorID Char(1)


DECLARE @tmpCountPatEnc TABLE(
person_id UNIQUEIDENTIFIER,
practice_id VARCHAR(04),
rendering_provider_id UNIQUEIDENTIFIER,
enc_count INT,
enc_timestamp DATETIME 

)

DECLARE @tmpHoldTable TABLE (
                                  person_id UNIQUEIDENTIFIER, 
                                   no_active_medications_ind CHAR(1), 
                                   start_date VARCHAR(08), 
                                   date_stopped VARCHAR(08), 
                                   chk_nomed INT,
                                  no_ocular_meds INT,
                                  no_systemic_meds INT,
                                  prescribed_else_ind CHAR(1),
                                  enc_timestamp DATETIME
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
       ON pp.cpt4_code_id = ncd.txt_qualifier_2 INNER JOIN location_mstr lm 
       ON pe.location_id = lm.location_id LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ pos
          ON pp.place_of_service = pos.txt_qualifier_2
             AND pos.txt_dbpicklist_name = 'MU_POS_EXCLUDE' LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ locex
          ON lm.location_name = locex.txt_list_item 
             AND locex.txt_dbpicklist_name = 'Location_Exclusion'
       WHERE (pe.enc_timestamp BETWEEN {d '2013-10-03'} AND DATEADD(second,-1,DateAdd(day,1, {d '2013-12-31'}))) AND
       pe.supervisor_provider_id  = '162484E7-93C4-4283-9C4B-B707EBD7E11E' AND
       --FICKEL 162484E7-93C4-4283-9C4B-B707EBD7E11E
       --POOLE 4E09E3FE-0662-491A-8558-3C1EF95FFFF1
       --RODRIGUEZ 2FBDAA0E-C78F-4F54-B1FA-F5FE5C19E19C CHANGE PRACTICE TO IN ('0001', '0010')
       --STOUGH A00695D0-5564-456B-81F3-509647B5B315   CHANGE PRACTICE TO 0002
       --YAKEL EC16A8F4-11A4-4353-9F57-822FED766056
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
       ON pp.cpt4_code_id = ncd.txt_qualifier_2 INNER JOIN location_mstr lm 
       ON pe.location_id = lm.location_id LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ pos
          ON pp.place_of_service = pos.txt_qualifier_2
             AND pos.txt_dbpicklist_name = 'MU_POS_EXCLUDE' LEFT JOIN dbo.ngkbm_custom_dbp_item_dtl_ locex
          ON lm.location_name = locex.txt_list_item 
             AND locex.txt_dbpicklist_name = 'Location_Exclusion'
       WHERE (pe.enc_timestamp BETWEEN {d '2013-10-03'} AND DATEADD(second,-1,DateAdd(day,1, {d '2013-12-31'}))) AND
       pe.rendering_provider_id = '162484E7-93C4-4283-9C4B-B707EBD7E11E' AND
       --FICKEL 162484E7-93C4-4283-9C4B-B707EBD7E11E
       --POOLE 4E09E3FE-0662-491A-8558-3C1EF95FFFF1
       --RODRIGUEZ 2FBDAA0E-C78F-4F54-B1FA-F5FE5C19E19C CHANGE PRACTICE TO IN ('0001', '0010')
       --STOUGH A00695D0-5564-456B-81F3-509647B5B315   CHANGE PRACTICE TO 0002
       --YAKEL EC16A8F4-11A4-4353-9F57-822FED766056
       1 = CASE WHEN @UseSupervisorID = 'Y' AND pe.supervisor_provider_id  IS NULL THEN 1 
                WHEN @UseSupervisorID = 'N' THEN 1 ELSE 0 END AND
       pe.practice_id = '0001' AND
       ncd.txt_dbpicklist_name = 'Visit Codes' AND 
       ncd.txt_qualifier_1 = 'Unique' AND
       pp.delete_ind = 'N' AND
       locex.txt_list_item IS NULL AND
       pos.txt_qualifier_1 IS NULL --exclude certain place of services
       GROUP BY pe.person_id,pe.practice_id,rendering_provider_id

       SELECT @enterprise_chart=ep.enterprise_chart_ind,
                 @enterprise_id = ep.enterprise_id 
       FROM practice p INNER JOIN enterprise_prefs ep 
        ON p.enterprise_id = ep.enterprise_id
       WHERE p.practice_id = '0001'  



IF @enterprise_chart = 'Y'
BEGIN


INSERT INTO @tmpHoldTable
SELECT  tpe.person_id, 
 patient.no_active_medications_ind, 
 patient_medication.start_date, 
 patient_medication.date_stopped, 
 master_im_.chk_nomed,
emh.no_ocular_meds,
emh.no_systemic_meds,
patient_medication.prescribed_else_ind,
tpe.enc_timestamp
FROM   @tmpCountPatEnc tpe LEFT OUTER JOIN master_im_ master_im_ 
 ON tpe.person_id=master_im_.person_id  INNER JOIN patient patient 
 ON tpe.person_id=patient.person_id  LEFT OUTER JOIN patient_medication patient_medication 
 ON tpe.person_id=patient_medication.person_id LEFT OUTER JOIN dbo.eyeMasterHx_ emh
ON tpe.person_id= emh.person_id LEFT JOIN patient_enterprise_chart pec
  ON tpe.person_id = pec.person_id
WHERE patient.enterprise_id = @enterprise_id AND
       (COALESCE(pec.enterprise_chart_ind,'Y') = 'Y' OR
       pec.enterprise_chart_ind = '')


--GET those patients that have opted out
INSERT INTO @tmpHoldTable
SELECT  tpe.person_id, 
 patient.no_active_medications_ind, 
 patient_medication.start_date, 
 patient_medication.date_stopped, 
 master_im_.chk_nomed,
emh.no_ocular_meds,
emh.no_systemic_meds,
patient_medication.prescribed_else_ind,
tpe.enc_timestamp
FROM   @tmpCountPatEnc tpe LEFT OUTER JOIN master_im_ master_im_ 
 ON tpe.person_id=master_im_.person_id  
  AND tpe.practice_id = master_im_.practice_id INNER JOIN patient patient 
 ON tpe.person_id=patient.person_id 
  AND tpe.practice_id = patient.practice_id LEFT OUTER JOIN patient_medication patient_medication 
 ON tpe.person_id=patient_medication.person_id 
  AND tpe.practice_id = patient_medication.practice_id LEFT OUTER JOIN dbo.eyeMasterHx_ emh
ON tpe.person_id= emh.person_id 
  AND tpe.practice_id = emh.practice_id LEFT JOIN patient_enterprise_chart pec
  ON tpe.person_id = pec.person_id
WHERE pec.enterprise_chart_ind = 'N'



END
ELSE
BEGIN

INSERT INTO @tmpHoldTable
SELECT  tpe.person_id, 
 patient.no_active_medications_ind, 
 patient_medication.start_date, 
 patient_medication.date_stopped, 
 master_im_.chk_nomed,
emh.no_ocular_meds,
emh.no_systemic_meds,
patient_medication.prescribed_else_ind,
tpe.enc_timestamp
FROM   @tmpCountPatEnc tpe LEFT OUTER JOIN master_im_ master_im_ 
 ON tpe.person_id=master_im_.person_id  
  AND tpe.practice_id = master_im_.practice_id INNER JOIN patient patient 
 ON tpe.person_id=patient.person_id 
  AND tpe.practice_id = patient.practice_id LEFT OUTER JOIN patient_medication patient_medication 
 ON tpe.person_id=patient_medication.person_id 
  AND tpe.practice_id = patient_medication.practice_id LEFT OUTER JOIN dbo.eyeMasterHx_ emh
ON tpe.person_id= emh.person_id 
  AND tpe.practice_id = emh.practice_id 
  
END

--Select @denom1 = COUNT(DISTINCT person_id)
insert into @tmp_final
select distinct person_id, 0
FROM @tmpHoldTable


--Select @numer1 = COUNT(DISTINCT person_id)
update @tmp_final
set num = 1
where person_id in (select person_id
FROM @tmpHoldTable
WHERE no_active_medications_ind = 'Y' OR
no_ocular_meds = 1 or
no_systemic_meds = 1 or
prescribed_else_ind = 'Y' or
chk_nomed = 1 or
((start_date IS NOT NULL  AND start_date <> '' AND start_date <> '00000000'
   AND start_date <= CONVERT(VARCHAR,GETDATE(),112)) AND 
(date_stopped IS NULL OR date_stopped = '' OR date_stopped = '00000000'
   OR date_stopped >= CONVERT(VARCHAR,enc_timestamp,112) )))



select b.last_name + ', ' + b.first_name as [patient_name],
b.date_of_birth,
b.ssn,
d.location_name,
CONVERT(date, c.create_timestamp) AS DATE_ADDED
from @tmp_final a
inner join person b on a.person_id = b.person_id
inner join patient c on b.person_id = c.person_id
inner join location_mstr d on c.mrkt_source_id = d.location_id
where num = 0 order by location_name, patient_name 


