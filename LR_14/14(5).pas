function HOD(a, b: integer): integer;//параметризация
begin
  if b = 0 then
    HOD := a//базовый случай
  else
    HOD := HOD(b, a mod b);//декомпозиция
end;

var
  num1, num2, result: integer;
begin
  num1 := 3430;
  num2 := 1365;
  result := HOD(num1, num2);
  writeln('Наибольший общий делитель ', num1, ' и ', num2, ' = ', result);
end.
