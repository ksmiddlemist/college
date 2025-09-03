var cou: integer;
procedure fib(i, n: integer);//параметризация
begin
  writeln(i, ' ');
  if cou < 10 then //базовый случай
  begin
    cou := cou + 1;
    fib(n, i + n);//декомпозиция
  end;
end;

begin
  cou := 1; 
  fib(1, 2);
end.
