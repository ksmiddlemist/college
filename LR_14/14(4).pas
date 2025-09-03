procedure LoopFor(i, n: integer);// параметризация
begin
  if i<=n then begin //база
   writeln('Привет ', i);
    LoopFor(i+1,n);//декомпазиция
    end
    else writeln('Пока')
end;
begin
  LoopFor(1,10);                    
end.