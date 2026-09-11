USE BSTU;
GO

-- 1. TRY/CATCH
BEGIN TRY
    PRINT 'begin try:A';
    SET @z = @x / @y;
    PRINT 'begin try:B';
END TRY
BEGIN CATCH
    PRINT 'begin catch:C';
    PRINT 'Ошибка: ' + ERROR_MESSAGE();
END CATCH
GO

-- 2. Нарушение PRIMARY KEY (Слайд 39)
BEGIN TRY
    -- Попытка сделать дубликат первичного ключа (T001 уже есть)
    UPDATE TEACHER SET TEACHER = 'T001' WHERE TEACHER = 'T002';
END TRY
BEGIN CATCH
    PRINT 'catch';
    PRINT 'Номер ошибки: ' + CAST(ERROR_NUMBER() AS VARCHAR(10));
    PRINT 'Сообщение: ' + ERROR_MESSAGE();
END CATCH
GO

-- 3. RAISEERROR (Слайд 40)
BEGIN TRY
    IF EXISTS (SELECT * FROM PULPIT WHERE PULPIT = 'IT')
        RAISEERROR ('Нарушение PK: Кафедра IT уже существует', 11, 1);
    ELSE
        INSERT INTO PULPIT (PULPIT) VALUES ('IT');
END TRY
BEGIN CATCH
    PRINT 'Перехвачено: ' + ERROR_MESSAGE();
END CATCH
GO
