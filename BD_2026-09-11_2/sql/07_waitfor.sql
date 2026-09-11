USE BSTU;
GO
SELECT SYSDATETIME() AS 'Старт';
WAITFOR DELAY '00:00:02'; -- Ждем 2 секунды
SELECT SYSDATETIME() AS 'Конец';
GO

-- Цикл с задержкой (Слайд 42) - 3 итерации по 2 секунды
DECLARE @i INT = 0;
WHILE @i < 3
BEGIN
    WAITFOR DELAY '00:00:02';
    SELECT SYSDATETIME() AS 'Итерация';
    SET @i = @i + 1;
END
GO
