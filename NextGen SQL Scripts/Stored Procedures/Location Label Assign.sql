-- =============================================
-- Author:		Adam Younger
-- Create date: 10/22/2013
-- Description:	Sets location information to set labels throughout charting.
-- =============================================
CREATE PROCEDURE [dbo].[aggeus_location_grab]
@LocationGUID varchar(36),
@pid varchar(36),
@locname varchar(250) OUTPUT
AS  
BEGIN
    SET NOCOUNT ON;
SELECT @locname = lm.location_name
FROM location_mstr lm INNER JOIN
patient p on p.mrkt_source_id = lm.location_id
where @LocationGUID = lm.location_id and @pid = p.person_id 
END

RETURN

GO


