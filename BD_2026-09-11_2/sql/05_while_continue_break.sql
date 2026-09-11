USE BSTU;
GO
-- Слайд 37: WHILE с CONTINUE и BREAK (безопасно)
DECLARE @i INT = 0, @x INT;
WHILE (@i < 5)
BEGIN
    SET @x = @i;
    SET @i += 1;
    PRINT 'A' + CAST(@x AS VARCHAR(2));
    IF @x = 2 CONTINUE; -- Переход в начало цикла
    IF @x = 3 BREAK; -- Выход из цикла
    PRINT 'B' + CAST(@x AS VARCHAR(2));
END
GO
