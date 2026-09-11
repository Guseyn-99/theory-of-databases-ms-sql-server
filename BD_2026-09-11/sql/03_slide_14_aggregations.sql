USE BSTU;
GO

DECLARE
    @StudentsCount int = (select count(*) from STUDENT),
    @AuditoriumCount int = (select count(*) from AUDITORIUM),
    @TeacherCount int = (select count(*) from TEACHER);

select AUDITORIUM_TYPE [Тип аудитории],
       count(*) [Количество аудиторий]
from AUDITORIUM group by AUDITORIUM_TYPE;

select PULPIT [Кафедра],
       count(*) [Количество дисциплин]
from SUBJECT group by PULPIT;

print 'Количество студентов         : ' + cast (@StudentsCount as varchar(10));
print 'Количество аудиторий        : ' + cast (@AuditoriumCount as varchar(10));
print 'Количество преподавателей    : ' + cast (@TeacherCount as varchar(10));
GO
