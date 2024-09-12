program dkr4;
uses graphABC;
function F(x:real):real;
begin
F:=1*x*x*x + 1*x*x + 4*x*17;
end;
var x,mx,my,dx:real;
    x0,y0,xn,xk,i:integer;
    s:string;
begin
xn:=-10;xk:=10;{интервал по Х}
setwindowsize(800,800);
x0:=windowwidth div 2;
y0:=windowheight div 2;
mx:=(x0-30)/xk;{масштаб по Х}
my:=(y0-30)/F(xk);
line(0,y0,windowwidth,y0);{оси}
line(x0,0,x0,windowheight);
for i:=1 to 8 do{максимальное количество засечек Y}
  begin
    line(x0-3,y0-round(i*my*200),x0+3,y0-round(i*my*200));{засечки на оси У}
    line(x0-3,y0+round(i*my*200),x0+3,y0+round(i*my*200));
    {подпись оси У}
    str(i*200,s);
    textout(x0-40,y0-round(i*my*200),s);{соответственно засечкам}
    textout(x0-40,y0+round(i*my*200),'-'+s);
  end;
for i:=1 to 10 do{максимальное количество засечек X}
  begin
    line(x0+round(i*mx),y0-3,x0+round(i*mx),Y0+3); {засечки на оси Х}
    line(x0-round(i*mx),y0-3,x0-round(i*mx),Y0+3);
    {подпись оси Х}
    str(i,s);
    textout(x0+round(i*mx),y0+10,s);
    textout(x0-round(i*mx),y0+10,'-'+s);
  end;
{центр}
textout(x0+5,y0+10,'0');
{подписи концов осей}
textout(windowwidth-15,y0-20,'X');
textout(x0+5,10, 'Y');
{график}
x:=xn;
dx:=0.01;
setpencolor(clRed);
moveto(x0+round(x*mx),y0-round(F(x)*my));
while x<=xk do
 begin
 lineto(x0+round(x*mx),y0-round(F(x)*my));
  x:=x+dx;
 end;
{название}
setfontcolor(clRed);
setfontsize(12);
textout(20,20,'f = x**3 + x**2 + 4*x*17');
textout(30,40,'int.=[-10;10]');
 // Выводим информацию о задании
SetFontSize(14);
TextOut(20,770, 'Задание: нарисовать график функции f(x) = x^3 + x^2 + 4x*17');
end.