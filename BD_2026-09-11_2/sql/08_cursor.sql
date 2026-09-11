USE BSTU;
GO
DECLARE @tid CHAR(10), @tnm VARCHAR(100), @tgn CHAR(1);
DECLARE c_teacher CURSOR GLOBAL
FOR SELECT TEACHER, TEACHER_NAME, GENDER
FROM TEACHER WHERE PULPIT = 'IT';

OPEN c_teacher;
FETCH c_teacher INTO @tid, @tnm, @tgn;
WHILE @@fetch_status = 0
BEGIN
    PRINT @tid + ' ' + @tnm + ' ' + ISNULL(@tgn, 'N/A');
    FETCH c_teacher INTO @tid, @tnm, @tgn;
END;
CLOSE c_teacher;
DEALLOCATE c_teacher;
GO
