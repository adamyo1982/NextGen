 
      MERGE INTO ncs_xref
   USING ncs_x_ref_providers_aggeus
      ON ncs_xref.src_description1 = ncs_x_ref_providers_aggeus.src_description1 
      and ncs_xref.src_key1 = ncs_x_ref_providers_aggeus.src_key1
WHEN MATCHED THEN
   UPDATE 
      SET ng_description = ncs_x_ref_providers_aggeus.F8;
      
MERGE INTO ncs_xref
   USING provider_mstr
      ON ncs_xref.ng_description = provider_mstr.description 
WHEN MATCHED THEN
   UPDATE 
      SET ng_key = provider_mstr.provider_id;