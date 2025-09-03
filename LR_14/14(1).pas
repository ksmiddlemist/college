function print(n:integer): integer;//параметризация
begin
   if n=1 then
      exit;//базовый случай
  print(n-2);//декомпозиция
  writeln(n);
end;
begin
  print(25);
end.
    