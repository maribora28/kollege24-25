const
n=15;
var
  arr:array [1..n] of integer;
  i,p,max,min:integer;
  begin
    writeln;
    for i:=1 to n do
    begin
      arr[i]:=random(201)-100;
      write(arr[i],' ');
      end;
      writeln;
      max:=arr[1];
      begin
        if arr[i]<0 then
          if arr[i]>max then max:=arr[i];
      end;
      min:=arr[1];
      begin
        if abs(arr[i])<min then min:=abs(arr[i]);
      end;
      writeln('максимальный отрицательный элемент массива ',max);
      writeln('минимальный по модулю элемент массива ',min);
  end.
  