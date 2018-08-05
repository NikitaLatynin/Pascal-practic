Type chislo= 1..31;
     Mesyacz=1..12;
     God=1..2000;
     Data = record
       Ch: chislo;
       M: mesyacz;
       G: god;
     End;
     Dennedeli = ( pn, vt, sr, cht, pt, sb, vs);
Var vernayadata:boolean;
    d:data;
Begin
    {задаём дату}
    writeln('Chislo:');
    readln(d.Ch);
     writeln('Mesyaz:');
    readln(d.M);
    writeln('God:');
    readln(d.G);
    {выводим её}

    writeln('Data = ', d.Ch,'.',d.M,'.',d.G);
     if d.G/4= 1 then
     begin
vernayadata:=((d.M in [1,3,5,7,8,10,12])and(d.Ch = 31))or((d.M in [4,6,9,11])and(d.Ch = 30))or((d.M = 2)and(d.Ch = 29));
    writeln(vernayadata);
    end else
    begin
    {проверяем дату и результат заносим в переменную верная дата}
    vernayadata:=((d.M in [1,3,5,7,8,10,12])and(d.Ch = 31))or((d.M in [4,6,9,11])and(d.Ch = 30))or((d.M = 2)and(d.Ch = 28));
    writeln(vernayadata);
    end;
    readln;
End.
