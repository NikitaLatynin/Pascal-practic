program start;
var sen1,sen2:string;
j,i,z,x:integer;
words:string;

begin
writeln('Enter your first sentence:');
readln(sen1);
writeln('Enter your second sentence:');
readln(sen2);
for z:=1 to length(sen1) do
  if (sen1[z]=',') or (sen1[z]='.') or (sen1[z]='?') or (sen1[z]='!') then
  delete(sen1,z,1);
  for z:=1 to length(sen2) do
  if (sen2[z]=',') or (sen2[z]='.') or (sen2[z]='?') or (sen2[z]='!') then
  delete(sen2,z,1);
sen1:=sen1+' ';
sen2:=sen2+' ';
writeln('..........');
writeln('..........');
writeln;
while sen1<>'' do
  begin
  j:=pos(' ',sen1);
  words:=copy(sen1,1,j-1);
  i:=pos(words,sen2);
  if (i>1) and (sen2[j+i-1]=' ') and (sen2[i-1]=' ') or (i=1) and (sen2[j+i-1]=' ') then
  writeln(words);
  delete(sen1,1,length(words)+1);
  end;
readln;
end.