USE BSTU;
GO

declare @y1 numeric(8,3) = (select CAST(SUM(AUDITORIUM_CAPACITY) as numeric(8,3)) from AUDITORIUM),
        @y2 numeric(8,3), @y3 numeric(8,3), @y4 numeric(8,3);

if @y1 > 200
begin
    print 'общее количество мест больше 200'

    select @y2 = CAST((select COUNT(*) from AUDITORIUM) as numeric(8,3)),
           @y3 = (select CAST(AVG(AUDITORIUM_CAPACITY) as numeric(8,3)) from AUDITORIUM)
    set @y4 = (select CAST(COUNT(*) as numeric(8,3)) from AUDITORIUM where AUDITORIUM_CAPACITY > @y3)

    select @y1 '@y1', @y2 '@y2', @y3 '@y3', @y4 '@y4', @y4/@y2*100 '%'
end
else if @y1 > 100
    print 'общее количество мест от 100 до 200'
else if @y1 > 50
    print 'общее количество мест от 50 до 100'
else
    print 'общее количество мест меньше 50'
GO
