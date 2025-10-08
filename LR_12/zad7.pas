var
  n, i, sum: Int64;
  isPrime: array of Boolean;
  p: Int64;
function Si(limit: Int64): array of Boolean;
var
  i, j: Int64;
begin
  SetLength(Result, limit + 1);
  for i := 0 to limit do
    Result[i] := True;
  
  Result[0] := False;
  Result[1] := False;

  for i := 2 to Trunc(Sqrt(limit)) do
    if Result[i] then
      for j := i * i to limit do
        if j mod i = 0 then
          Result[j] := False;
end;

begin
  Assign(input, 'z3.in.txt');
  Reset(input);
  ReadLn(n);
  Close(input);

  var limit := Trunc(Power(n, 0.25));
  isPrime := Si(limit);

  sum := 0;
  
  for i := 2 to limit do
    if isPrime[i] then
    begin
      p := round(Power(i, 4));
      if p <= n then
        sum := sum + p;
    end;

  Assign(output, 'z3.out.txt');
  Rewrite(output);
  WriteLn(sum);
  Close(output);
end.
