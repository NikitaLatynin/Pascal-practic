Type produkt=(xleb, maslo, moloko, myaso, ryba, sol, syr, kolbasa, saxar, chaj, kofe);
     Assortiment=set of produkt;
     Magaziny=array[1..8] of  assortiment;
Var mag:Magaziny;
    A,B,C:Assortiment;
    i:produkt;
{opisy`vaem proceduru nalichie}
Procedure Nalichie(Mag:Magaziny; Var A,B,C: Assortiment);
Var i:integer;
Begin
    {inicializiruem peremenny`e a,b,c}
    A:=Mag[1];
    B:=[];
    C:=[xleb, maslo, moloko, myaso, ryba, sol, syr, kolbasa, saxar, chaj, kofe];
    {cikl po vsem magazinam}
    For i:=1 to 8 do
    Begin
      {opredelyaem tovary`}
      A:=A*Mag[i];
      B:=B+Mag[i];
      C:=C-Mag[i];
    End;
End;
Begin
    {inicializiruem massiv tovarami}
    mag[1]:=[xleb, myaso, sol];
    mag[2]:=[maslo, moloko, sol, syr, xleb];
    mag[3]:=[maslo, kolbasa, saxar, chaj, xleb];
    mag[4]:=[ryba, kolbasa, xleb];
    mag[5]:=[sol, syr, xleb];
    mag[6]:=[chaj, moloko, xleb];
    mag[7]:=[saxar, syr, xleb];
    mag[8]:=[kolbasa, moloko, xleb];
    {vy`zy`vaem proceduru Nalichie}
    Nalichie(Mag, A, B, C);
    writeln('Procedura otrabotala');
    readln;
End.
