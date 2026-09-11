USE BSTU;
GO
CREATE FUNCTION COUNT_STUDENTS(@faculty VARCHAR(20)) RETURNS INT
AS
BEGIN
    DECLARE @rc INT = 0;
    SET @rc = (
        SELECT COUNT(s.IDSTUDENT)
        FROM FACULTY f
        JOIN GROUPS g ON f.FACULTY = g.FACULTY
        JOIN STUDENT s ON s.IDGROUP = g.IDGROUP
        WHERE f.FACULTY = @faculty
    );
    RETURN @rc;
END;
GO

-- Вызов
DECLARE @c INT = dbo.COUNT_STUDENTS('FIT');
PRINT 'Количество студентов на факультете FIT: ' + CAST(@c AS VARCHAR(4));
GO
