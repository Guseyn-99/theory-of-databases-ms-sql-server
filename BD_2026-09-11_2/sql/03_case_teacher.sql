USE BSTU;
GO
SELECT
    CASE (SELECT COUNT(*) FROM TEACHER WHERE TEACHER_NAME LIKE '%Иван%')
        WHEN 0 THEN 'нет!'
        WHEN 1 THEN 'один'
        WHEN 2 THEN 'два'
        ELSE 'тема!'
    END AS 'Имена';
GO

-- Посмотрим, кто есть в таблице, чтобы сверить результат
SELECT * FROM TEACHER WHERE TEACHER_NAME LIKE '%Иван%';
