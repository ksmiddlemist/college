var x: integer;
   function sumTo(n: integer): integer;//параметризация
   begin
        if (n<=1) then
          n:=1//базовый случай
        else
          n:=n+(sumTo(n-1));//декомпозиция
   sumTo:=n;
end;
begin
writeln('Число:');
readln(x);
writeln(sumTo(x));
end.