 USE [NGProd]
GO

/****** Object:  Table [dbo].[aggeus_fee_okco]    Script Date: 01/14/2014 08:52:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[aggeus_fee_okco](
	[CPT ] [nvarchar] (255) NULL,
	[Description ] [nvarchar](255) NULL,
	[Novitas CO  Non-Facility] [float] NULL,
	[Trailblazer CO] [float] NULL,
	[SIM20] [float] NULL,
	[Novitas OK  Non-Facility ] [float] NULL,
	[Novitas OK ] [float] NULL,
	[SIM21] [float] NULL
) ON [PRIMARY]

GO

 
 alter table aggeus_fee_ILMNMOWI alter column [CPT ] nvarchar(255)
 
 
  alter table aggeus_fee_ILMNMOWI alter column sim2 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim3 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim4 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim5 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim6 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim7 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim8 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim9 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim10 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim11 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim12 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim13 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim14 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim15 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim16 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim17 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim18 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim19 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim20 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim21 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim22 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim23 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim24 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim25 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim26 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim27 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim28 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim29 nvarchar(max)
  alter table aggeus_fee_ILMNMOWI alter column sim30 nvarchar(max)

  update aggeus_fee_ILMNMOWI set sim = '7B993D83-223B-4392-A5F4-3BF44417396F' where sim = '1'
  update aggeus_fee_ILMNMOWI set sim2 = '797F80CC-1801-43E9-B58E-3688C42144E3' where sim2 = '2'
  update aggeus_fee_ILMNMOWI set sim3 = 'B47A8F80-572C-4618-8EC9-729013028FDE' where sim3 = '3'
  update aggeus_fee_ILMNMOWI set sim4 = 'B16601D2-C2B3-4BC8-9E03-779E04C4D5CC' where sim4 = '4'
  update aggeus_fee_ILMNMOWI set sim5 = '3BB7AD4D-17FB-4E62-BC99-4EED63056C81' where sim5 = '5'
  update aggeus_fee_ILMNMOWI set sim6 = '9A6B7E28-7F80-42E4-9128-98DA15FA43A2' where SIM6 = '6'
  update aggeus_fee_ILMNMOWI set SIM7 = 'DB33F5F3-B8B8-458C-8DCA-43D078F641E6' where sim7 = '7'
  update aggeus_fee_ILMNMOWI set sim8 = '82FE6C77-BA60-4DE8-8A19-4786A499B066' where sim8 = '8'
  update aggeus_fee_ILMNMOWI set sim9 = 'E1242D77-7A4D-4D5A-917C-F25208921106' where sim9 = '9'
  update aggeus_fee_ILMNMOWI set sim10 = 'A25383A1-3042-44EC-856F-B9941FB93869' where sim10 = '10'
  update aggeus_fee_ILMNMOWI set sim11 = 'C80668F6-189E-40E1-820D-8FF8EC1EDBE8' where sim11 = '11'
  update aggeus_fee_ILMNMOWI set sim12 = 'D78E6F36-EC60-4F2B-8BA4-6C7879659546' where sim12 = '12'
  update aggeus_fee_ILMNMOWI set sim13 = '269EC177-5E4C-4223-9AF5-7A9F5359A665' where sim13 = '13'
  update aggeus_fee_ILMNMOWI set sim14 = '5051D33A-3749-4BEA-9707-EDC4A81619D7' where sim14 = '14'
  update aggeus_fee_ILMNMOWI set sim17 = 'D4DC2E86-24E6-4CF8-A425-067ABAB094C9' where sim17 = '17'
  update aggeus_fee_ILMNMOWI set sim18 = '502CB04E-F825-4552-95CD-242A279D5812' where sim18 = '18'
  update aggeus_fee_ILMNMOWI set sim19 = '1D5A5DCC-6180-4E2A-9D02-DD849431D57D' where sim19 = '19'
  update aggeus_fee_ILMNMOWI set sim20 = '39FE8F82-7346-4C6D-B053-4114CE8478ED' where sim20 = '20'
  update aggeus_fee_ILMNMOWI set sim21 = 'A1AD61CD-0EB4-47DC-8660-A313A8818146' where sim21 = '21'
  update aggeus_fee_ILMNMOWI set sim23 = '25287F95-5CB5-4570-86B8-22D36BCFC6B1' where sim23 = '23'
  update aggeus_fee_ILMNMOWI set sim24 = 'DD772F27-AE5B-409F-B9C9-DDEF83C2E13C' where sim24 = '24'
  update aggeus_fee_ILMNMOWI set sim25 = '06A6C20C-E32C-4077-92C0-0A59020C2571' where sim25 = '25'
  update aggeus_fee_ILMNMOWI set sim26 = '92E45D19-2FE0-4E26-83EC-180CF0DBD1DB' where sim26 = '26'
  update aggeus_fee_ILMNMOWI set sim27 = '0ED4408B-E554-4FF2-88DC-C65C2FF2C7EB' where sim27 = '27'
  update aggeus_fee_ILMNMOWI set sim28 = '6F4AF6B3-1D77-4E54-8F2D-2160458AEAE4' where sim28 = '28'
  update aggeus_fee_ILMNMOWI set sim29 = '718E3968-5E69-4B35-A63A-0680CD7D1C62' where sim29 = '29'
  update aggeus_fee_ILMNMOWI set sim30 = '3AEDA32E-E1CA-4C04-87E1-F1998E72661A' where sim30 = '30'


  
  delete from aggeus_fee_ILMNMOWI where [CPT ] is null
  
    update aggeus_fee_okco set 
  [Novitas CO  Non-Facility] = '0.00'
  where [Novitas CO  Non-Facility] is null
  
  update aggeus_fee_okco set
  [Trailblazer CO] = '0.00'
  where [Trailblazer CO] is null
  
  update aggeus_fee_okco set
  [Novitas OK  Non-Facility ] = '0.00'
  where [Novitas OK  Non-Facility ] is null
  
  update aggeus_fee_okco set
  [Novitas OK ] = '0.00'
  where [Novitas OK ] is null





update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas Austin Non-Facility Loc 31]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM23
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas - Austin Loc 31]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM23
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Beaumont Non-Facility Loc 20]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM24
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas - Beaumont Loc 20]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM24
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  

  update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Brazoria Loc 09 Non-Facility]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM25
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas-Brazoria Loc 09]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM25
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Dallas Non-Facility Loc 11]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM26
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas-Dallas Loc 11]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM26
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  

  update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Fort Worth Non-Facility Loc 28]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM27
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas-Forth Worth Loc 28]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM27
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Galveston Non-Facility Loc 15]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM28
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas-Galveston Loc 15]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM28
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Texas-Houston Non-Facility Loc 18]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM29
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Texas-Houston Loc 18]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM29
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

  update service_item_mstr
  set current_price = aggeus_fee_ILMNMOWI.[Rest of Texas - Non-Facility Loc 99]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM30
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]
  
   update service_item_mstr
  set current_price_facility = aggeus_fee_ILMNMOWI.[Rest of Texas Loc 99]
  from aggeus_fee_ILMNMOWI where service_item_lib_id = aggeus_fee_ILMNMOWI.SIM30
  and service_item_id = aggeus_fee_ILMNMOWI.[CPT ]

