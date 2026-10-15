USE BSTU;
GO

CREATE PROCEDURE DIFF_STUDENTS
AS
BEGIN
    DECLARE @incoming INT = (
        SELECT COUNT(s.IDSTUDENT)
        FROM STUDENT s
        JOIN GROUPS g ON s.IDGROUP = g.IDGROUP
        WHERE g.COURSE = 1
    );

    DECLARE @graduating INT = (
        SELECT COUNT(s.IDSTUDENT)
        FROM STUDENT s
        JOIN GROUPS g ON s.IDGROUP = g.IDGROUP
        WHERE g.COURSE = 4
    );

    DECLARE @diff INT = @incoming - @graduating;

    PRINT '=== Статистика по студентам ===';
    PRINT 'Поступившие (1 курс)   : ' + CAST(@incoming AS VARCHAR(10));
    PRINT 'Выпускающиеся (4 курс) : ' + CAST(@graduating AS VARCHAR(10));
    PRINT 'Разница                : ' + CAST(@diff AS VARCHAR(10));

    SELECT
        @incoming AS [Поступившие],
        @graduating AS [Выпускающиеся],
        @diff AS [Разница];
END;
GO
