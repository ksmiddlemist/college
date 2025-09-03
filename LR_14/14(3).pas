var x, y: integer;
function stepen(a, b: integer): real;//параметризация
var cou: real;
begin
  if b = 0 then
    stepen := 1//базовый случай
  else if b < 0 then
    stepen := 1 / stepen(a, -b)//декомпозиция
  else begin
    cou := a * stepen(a, b - 1);//декомпозиция
    stepen := cou;
  end;
end;

begin
  writeln('Число:');
  readln(x);
  writeln('Степень:');
  readln(y);
  writeln('Результат: ', stepen(x, y));
end.
