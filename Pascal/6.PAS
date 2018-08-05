Const n = 3;
{novy`j tip student}
Type student=Record
      date:string[12];
      year:integer;
      kurs:byte;
      group:string[5];
      ozenki:array[1..3] of integer;
     End;
Var mas:array[1..n] of student;
    i,j,k:byte;
Begin
    {vvod isxodny`x danny`x}
    For i:=1 to n do
    Begin
      writeln('Vvedite informaciyu o ', i, ' studente');
      writeln('Data rozhdeniya: ');
      readln(mas[i].date);
      writeln('God postupleniya: ');
      readln(mas[i].year);
      writeln('Kurs: ');
      readln(mas[i].kurs);
      writeln('Gruppa: ');
      readln(mas[i].group);
      writeln('3 ocenki za sessiyu cherez probel');
      For j:=1 to 3 do
       read(mas[i].ozenki[j]);
    End;
    writeln('Informaciya o studentax');
    {vy`vod}
    For i:=1 to n do
    Begin
      write('|',mas[i].date:12,'|',mas[i].year:4,'|',mas[i].kurs:2,'|',mas[i].group:5,'|');
      For j:=1 to 3 do
       write(mas[i].ozenki[j], '|');
      writeln;
    End;
    writeln('Informaciya o studentax s dvojkami');
    {vy`vod informacii o studentax s dvojkami}
    For i:=1 to n do
    Begin
      k:=0;
      For j:=1 to 3 do
       {esli est` xot` odna dvojka to k stavim v 1}
       if mas[i].ozenki[j] = 2 then k:=1;
      {esli k ravno 1 znachit e`to student s dvojkoj}
      if k = 1 then
      begin
        write('|',mas[i].date:12,'|',mas[i].year:4,'|',mas[i].kurs:2,'|',mas[i].group:5,'|');
        For j:=1 to 3 do
         write(mas[i].ozenki[j], '|');
        writeln;
      End;
    End;
    readln;
End.