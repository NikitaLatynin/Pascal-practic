program pr3;
type  Month = (January,February,March,April,May,June,July,August,September,October,November,December);
  var   m,m1: Month;
        ms: integer;
        d1,dayin,daycount,y,y1,x: integer;
        yr: integer;
        vivodm,vivodd: string;
begin
 writeln('Vvedite datu. Day : ');
 readln(dayin);
 writeln('Month : ');
 readln(ms);
 writeln('Year ( s 2000 po 2050) : ');
 readln(yr);
   ms := ms-1;
   m := Month(ms);
 if (yr mod 4 <> 0)  then
  case m of
   February: daycount := 28 ;
   January,March,May,July,August,October,December: daycount := 31;
   April,June,September,November: daycount := 30;
  end
 else if (yr/4=1) then
  case m of
   February: daycount := 29;
   January,March,May,July,August,October,December: daycount := 31;
   April,June,September,November: daycount := 30;
  end else
  writeln('Даты не существует');
  
writeln;

 if (dayin = 31) and (ms = 12) then
  begin
   d1 := 1;
   m1 := Month(0);
   y1 := yr+1;
   x := ord(m1)+1;
   writeln('Sleduyuschaya data: 0',d1, ':0',x, ':',y1);
  end
  
 else if dayin = daycount then
  begin
   d1 := 1;
   m1 := Succ(m);
   x := ord(m1)+1;
    if x < 10 then
     begin
      vivodm := '0' + IntToStr(x);
      writeln('Sleduyuschaya data: 0',d1, ':',vivodm, ':',yr);
     end
    else
      writeln('Sleduyuschaya data: 0',d1, ':',x, ':',yr);
  end
  
 else
  begin
   d1 := dayin+1;
   x := ord(m)+1;
    if (x < 10) and (d1 < 10) then
     begin
      vivodm := '0' + IntToStr(x);
      vivodd := '0' + IntToStr(d1);
      writeln('Sleduyuschaya data: ',vivodd, ':',vivodm, ':',yr);
     end
    else
     if (x > 10) and (d1 > 10) then
      writeln('Sleduyuschaya data: ',d1, ':',x, ':',yr)
    else
     if (x > 10) and (d1 < 10) then
      begin
       vivodd := '0' + IntToStr(d1);
       writeln('Sleduyuschaya data: ',vivodd, ':',x, ':',yr);
      end
    else
     if (x < 10) and (d1 > 10) then
      begin
       vivodm := '0' + IntToStr(x);
       writeln('Sleduyuschaya data: ',d1, ':',vivodm, ':',yr);
      end;
  end;
  
readln;

end.
