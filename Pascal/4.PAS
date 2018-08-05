Type name=(Valya, Gena, Zhenya, Kolya, Masha, Sasha, Tanya, Fedya, Shura);
     gen=(muzh, zhen);
     ro=140..200;
Var  gender: array [name]  of gen;
     rost: array [name] of ro;
     sr:real;
     i:name;
     k,r:integer;
     str:char;
Begin
     {заполняем массивы данными}
    writeln('Ludi:Valya, Gena, Zhenya');
    writeln;
  writeln('----------------------------');
   writeln('Vvedite info o ludyax:');
   writeln('Pol:');
   for i:=Valya to Zhenya do
   begin
     readln(str);
     case str of
     'm':gender[i]:=muzh;
     'z':gender[i]:=zhen;
     end;
     end;
     writeln('Rost:');
     for i:=Valya to Zhenya do
   begin
     readln(r);
     rost[i]:=r;
   end;
     sr:=0;k:=0;
     {цикл по всем элементам массивов}
     For i:=Valya to Zhenya do
      {если пол является женским то}
      if gender[i] = zhen then
      Begin
        {суммируем рост}
        sr:=sr+rost[i];
        {и вычисляем количество женщин}
        k:=k+1;
      End;
     {есди есть женщины}
     if k <> 0 then writeln('Srednee arifmeticheskoe = ', sr / k:0:2)
     else writeln('Zhenshhin net');
     readln;
End.