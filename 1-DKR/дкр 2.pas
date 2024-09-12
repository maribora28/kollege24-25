program dkr2;
var x, rez: real;
begin
  x:= -9;
  while x<= -1 do
  begin
    if (x<-7) then
 rez:= (x/(power(e,x))*((power(x,3))/log10(x)))
 else if (-7<=x) and (x<-3) then
   rez:=(log10(x)/(power(x,2))*(tan(x)/x))
 else if (-3<=x) then
   rez:= power(x,1/3)*power(x,3);
    writeln('f(',x:0:2,')=', rez: 0:2);
    x:= x+0.2
  end;
end.