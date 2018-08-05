program pr1;
var s,s1,s2:string;
k,del:integer;
begin
writeln('Enter your sentence:');
readln(s);
repeat
  begin
  k:=1;
  repeat
    s2:=copy(s,1,k);
    inc(k);
  until s[k]=' ';
    delete(s,1,length(s2)+1);
    if length(s2) mod 2<>0 then
      begin
      del:=(length(s2) div 2)+1;
      delete(s2,del,1);
      end;
    s1:=s1+' '+s2;
    end;
  until s='';
writeln(s1);
readln;
end.