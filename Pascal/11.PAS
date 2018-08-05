Type student=Record
      fio:string[30];
      year1:integer;
      year2:integer;
      obj:char;
      ozenki:array[1..3] of byte;
     End;
Var mas:array[1..20] of student;
    i,j,n,k:integer;
    s,t:string;
    f:text;
Begin

    Assign(f,'in11.txt');
    Reset(f);
    {schity`vaem danny`e iz fajla}
    n:=10;
    For i:=1 to n do
    Begin
      {schity`vaem stroku iz fajla}
      readln(f, s);
      {razbivaem stroku i zanosim danny`e v massiv}
      mas[i].fio:=Copy(s, 1, Pos(';', s) - 1);
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      Val(t,mas[i].year1,k);
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      Val(t,mas[i].year2,k);
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      mas[i].obj:=t[1];
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      Val(t,mas[i].ozenki[1],k);
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      Val(t,mas[i].ozenki[2],k);
      Delete(s, 1, Pos(';', s));
      Val(s,mas[i].ozenki[3],k);
    End;
    Close(f);
    {vy`vod}
    For i:=1 to n do
    Begin
      write('|',mas[i].fio:30,'|',mas[i].year1,'|',mas[i].year2,'|',mas[i].obj,'|');
      For j:=1 to 3 do
       write(mas[i].ozenki[j], '|');
      writeln;
    End;
    {vvod informacii o novy`x 4 abiturientax}
    For i:=1 to 4 do
    Begin
      n:=n+1;
      writeln('Vvedite informaciyu o ', i, ' abituriente');
      write('FIO: ');
      readln(mas[n].fio);
      write('God rojdeniya: ');
      readln(mas[n].year1);
      write('God okonchaniya shkoly: ');
      readln(mas[n].year2);
      write('Obshhezhitie nuzhno? (Y;N): ');
      readln(mas[n].obj);
      writeln('3 ocenki po ekzamenam');
      For j:=1 to 3 do
       read(mas[n].ozenki[j]);
    End;
    writeln('Poluchenny`j spisok');
    {vy`vod}
    For i:=1 to n do
    Begin
      write('|',mas[i].fio:30,'|',mas[i].year1,'|',mas[i].year2,'|',mas[i].obj,'|');
      For j:=1 to 3 do
       write(mas[i].ozenki[j], '|');
      writeln;
    End;
    {udalyaem abiturientov u kotory`x net 5-k za e`kzameny`}
    i:=1;
    while (i <=n) do
    Begin
      k:=0;
      For j:=1 to 3 do
       {esli est` xot` odna pyatyorka pomechaem}
       if mas[i].ozenki[j] = 5 then k:=1;
      {esli net 5-k to udalyaem abiturienta}
      if k = 0 then
      Begin
        n:=n-1;
        For j:=i to n do
         mas[j]:=mas[j+1];
        i:=i-1;
      End;
      i:=i+1;
    End;
    writeln('Poluchenny`j spisok');
    {vy`vod}
    For i:=1 to n do
    Begin
      write('|',mas[i].fio:30,'|',mas[i].year1,'|',mas[i].year2,'|',mas[i].obj,'|');
      For j:=1 to 3 do
       write(mas[i].ozenki[j], '|');
      writeln;
    End;
    readln;
    readln;
End.