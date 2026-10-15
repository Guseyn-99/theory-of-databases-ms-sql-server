USE BSTU;
GO
print 'paket1: nachalo---';
declare @x0 int = 0;
print 'paket1:@x0 = ' + cast(@x0 as char(1));
begin
    declare @x1 int = 1;
    print 'blok1: nachalo ---';
    print 'blok1:@x0 = ' + cast(@x0 as char(1));
    print 'blok1:@x1 = ' + cast(@x1 as char(1));
    begin
        declare @x2 int = 2;
        print 'blok2: nachalo ---';
        print 'blok2:@x0 = ' + cast(@x0 as char(1));
        print 'blok2:@x1 = ' + cast(@x1 as char(1));
        print 'blok2:@x2 = ' + cast(@x2 as char(1));
        print 'blok2: koneh ---';
    end;
    begin
        print 'blok3: nachalo ---';
        print 'blok3:@x0 = ' + cast(@x0 as char(1));
        print 'blok3:@x1 = ' + cast(@x1 as char(1));
        print 'blok3:@x2 = ' + cast(@x2 as char(1));
        -- return; <-- закомментировано, чтобы увидеть конец пакета
        print 'blok3: koneh ---';
    end;
    print 'blok1: koneh ---';
end;
print 'paket1: koneh ---';
GO
