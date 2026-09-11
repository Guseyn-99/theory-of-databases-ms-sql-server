USE BSTU;
GO
-- Слайд 29, 31 (IF-ELSE)
DECLARE @x1 INT = 0;
SET @x1 = (SELECT SUM(AUDITORIUM_CAPACITY) FROM AUDITORIUM);
IF @x1 > 200
    PRINT 'общее количество мест больше 200';
ELSE IF @x1 > 100
    PRINT 'общее количество мест от 100 до 200';
ELSE IF @x1 > 50
    PRINT 'общее количество мест от 50 до 100';
ELSE
    PRINT 'общее количество мест меньше 50';
GO

-- Слайд 32 (CASE)
DECLARE @z1 NUMERIC(8,3) = (SELECT CAST(SUM(AUDITORIUM_CAPACITY) AS NUMERIC(8,3)) FROM AUDITORIUM);
PRINT 'общее количество мест ' +
CASE
    WHEN @z1 > 200 THEN 'больше 200'
    WHEN @z1 > 100 THEN 'от 100 до 200'
    ELSE 'меньше 50'
END
GO
