Type stroka=packed array [1..100] of char;
Var s:stroka;
    i:integer;
{функция подсчёта количества символов -,+,* в строке s}
Function Schet(s:stroka):integer;
Var i,k:integer;
Begin
    k:=0;
    For i:=1 to 100 do
     {подсчитываем}
     if s[i] in ['+','-','*'] then k:=k+1;
    Schet:=k;
End;
Begin
    {инициализация строки}
    For i:=1 to 100 do
     s[i]:=#0;
    write('Vvedite stroku: ');
    i:=1;

    while (i <= 100)and(s[i] <> #13) do
    Begin
      read(s[i]);
      if s[i] <> #13 then i:=i+1;
    End;
    {вызваем функцию и выводим результат работы функции}
    writeln('Simvolov +,-,* vsego = ', Schet(s));
    readln;
End.