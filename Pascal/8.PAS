program pr1;
Const n = 10;
Type student=Record
      f:string[12];
      i:string[12];
      o:string[12];
      pol:char;
      age:integer;
      kurs:byte;
     End;
Var mas:array[1..n] of student;
    i,j,k,m,max1,max2:integer;
    s,t,s1,s2:string;
    f:text;
Begin
    Assign(f,'in8.txt');
    Reset(f);
    {schity`vaem danny`e iz fajla}
    For i:=1 to n do
    Begin
      {schity`vaem stroku iz fajla}
      readln(f, s);
      {razbivaem stroku i zanosim danny`e v massiv}
      mas[i].f:=Copy(s, 1, Pos(';', s) - 1);
      Delete(s, 1, Pos(';', s));
      mas[i].i:=Copy(s, 1, Pos(';', s) - 1);
      Delete(s, 1, Pos(';', s));
      mas[i].o:=Copy(s, 1, Pos(';', s) - 1);
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      mas[i].pol:=t[1];
      Delete(s, 1, Pos(';', s));
      t:=Copy(s, 1, Pos(';', s) - 1);
      Val(t, mas[i].age, k);
      Delete(s, 1, Pos(';', s));
      Val(s, mas[i].kurs, k);
    End;
    Close(f);
    {vy`vod}
    For i:=1 to n do
    Begin
      writeln('|',mas[i].f:12,'|',mas[i].i:12,'|',mas[i].o:12,'|',mas[i].pol,'|', mas[i].age,'|',mas[i].kurs,'|');
    End;
    max1:=0;
    max2:=0;
    {poisk samy`x rasprostrannyony`x imyon}
    For i:=1 to n do
    Begin
      k:=0;
      if mas[i].pol = 'M' then
      Begin
        For j:=1 to n do
          if mas[i].i = mas[j].i then k:=k+1;
        if k > max1 then
        Begin
          max1:=k;
          s1:=mas[i].i;
        End;
      End
      else
      Begin
        For j:=1 to n do
          if mas[i].i = mas[j].i then k:=k+1;
        if k > max2 then
        Begin
          max2:=k;
          s2:=mas[i].i;
        End;
      End;
    End;
    {vy`vod rezul`tata}
    if max1 = 0 then writeln('Net muzhchin')
    else writeln('Samoe rasprostranennoe muzhskoe imya = ', s1, ' vstrechaetsya ', max1, ' raz(a)');
    if max2 = 0 then writeln('Net zhenshhin')
    else writeln('Samoe rasprostranennoe zhenskoe imya = ', s2, ' vstrechaetsya ', max2, ' raz(a)');
    readln;
End.