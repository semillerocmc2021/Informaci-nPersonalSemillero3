DECLARE @myTableVariable TABLE (name varchar(400))

insert into @myTableVariable values('Roberto'),('Gail'),('Dylan')

DECLARE @Description AS nvarchar(400)
DECLARE ProdInfo CURSOR FOR SELECT * FROM @myTableVariable

OPEN ProdInfo

FETCH NEXT FROM ProdInfo INTO @Description

WHILE @@fetch_status = 0

BEGIN

    PRINT 'Nombre: '+@Description

    FETCH NEXT FROM ProdInfo INTO @Description

END

CLOSE ProdInfo

DEALLOCATE ProdInfo
