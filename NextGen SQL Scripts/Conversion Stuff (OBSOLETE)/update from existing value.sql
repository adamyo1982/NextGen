

UPDATE Sheet1$
SET doc_name = (SELECT dbo.Sheet2$.description
                     FROM dbo.Sheet2$
                     WHERE dbo.Sheet1$.ng_description=dbo.Sheet2$.description)