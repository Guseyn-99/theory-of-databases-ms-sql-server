USE BSTU;
GO

CREATE FUNCTION SHOW_BUILTIN_FUNCTIONS()
RETURNS VARCHAR(MAX)
AS
BEGIN
    DECLARE @result VARCHAR(MAX) = '';

    -- 1. СТРОКОВЫЕ ФУНКЦИИ
    SET @result += '=== СТРОКОВЫЕ ФУНКЦИИ ===' + CHAR(13);
    SET @result += 'UPPER(\'привет\')      = ' + UPPER('привет') + CHAR(13);
    SET @result += 'LOWER(\'ПРИВЕТ\')      = ' + LOWER('ПРИВЕТ') + CHAR(13);
    SET @result += 'LEN(\'SQL Server\')    = ' + CAST(LEN('SQL Server') AS VARCHAR(10)) + CHAR(13);
    SET @result += 'SUBSTRING(\'1234567890\',3,2) = ' + SUBSTRING('1234567890', 3, 2) + CHAR(13);
    SET @result += 'REPLACE(\'12345\', \'5\', \'X\')  = ' + REPLACE('12345', '5', 'X') + CHAR(13);
    SET @result += 'REVERSE(\'БД\')       = ' + REVERSE('БД') + CHAR(13);
    SET @result += 'REPLICATE(\'ab\',3)   = ' + REPLICATE('ab', 3) + CHAR(13) + CHAR(13);

    -- 2. МАТЕМАТИЧЕСКИЕ ФУНКЦИИ
    SET @result += '=== МАТЕМАТИЧЕСКИЕ ФУНКЦИИ ===' + CHAR(13);
    SET @result += 'ABS(-5)            = ' + CAST(ABS(-5) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'ROUND(123.4567,2)  = ' + CAST(ROUND(123.4567, 2) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'FLOOR(24.9)        = ' + CAST(FLOOR(24.9) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'CEILING(24.1)      = ' + CAST(CEILING(24.1) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'POWER(2,10)        = ' + CAST(POWER(2, 10) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'SQRT(144)          = ' + CAST(SQRT(144) AS VARCHAR(20)) + CHAR(13);
    SET @result += 'PI()               = ' + CAST(PI() AS VARCHAR(20)) + CHAR(13) + CHAR(13);

    -- 3. ФУНКЦИИ ДАТЫ И ВРЕМЕНИ
    SET @result += '=== ФУНКЦИИ ДАТЫ И ВРЕМЕНИ ===' + CHAR(13);
    SET @result += 'GETDATE()          = ' + CONVERT(VARCHAR(30), GETDATE(), 120) + CHAR(13);
    SET @result += 'YEAR(GETDATE())    = ' + CAST(YEAR(GETDATE()) AS VARCHAR(10)) + CHAR(13);
    SET @result += 'MONTH(GETDATE())   = ' + CAST(MONTH(GETDATE()) AS VARCHAR(10)) + CHAR(13);
    SET @result += 'DAY(GETDATE())     = ' + CAST(DAY(GETDATE()) AS VARCHAR(10)) + CHAR(13);
    SET @result += 'DATEADD(dd, 10, GETDATE()) = ' + CONVERT(VARCHAR(30), DATEADD(dd, 10, GETDATE()), 120) + CHAR(13);
    SET @result += 'DATEDIFF(yy, \'2000-01-01\', GETDATE()) = ' + CAST(DATEDIFF(yy, '2000-01-01', GETDATE()) AS VARCHAR(10)) + CHAR(13) + CHAR(13);

    -- 4. СИСТЕМНЫЕ ФУНКЦИИ
    SET @result += '=== СИСТЕМНЫЕ ФУНКЦИИ ===' + CHAR(13);
    SET @result += 'DB_NAME()          = ' + DB_NAME() + CHAR(13);
    SET @result += 'USER_NAME()        = ' + USER_NAME() + CHAR(13);
    SET @result += 'SUSER_NAME()       = ' + SUSER_NAME() + CHAR(13);
    SET @result += 'HOST_NAME()        = ' + HOST_NAME() + CHAR(13);
    SET @result += 'SYSDATETIME()      = ' + CONVERT(VARCHAR(30), SYSDATETIME(), 120) + CHAR(13);

    RETURN @result;
END;
GO
